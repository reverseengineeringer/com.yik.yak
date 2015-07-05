package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookRequestError;
import com.facebook.RequestBatch;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class LikeActionController
{
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
  public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
  private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
  public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
  public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
  private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
  private static final String JSON_BUNDLE_PENDING_CALL_ANALYTICS_BUNDLE = "pending_call_analytics_bundle";
  private static final String JSON_INT_VERSION_KEY = "com.facebook.internal.LikeActionController.version";
  private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
  private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
  private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
  private static final String JSON_STRING_PENDING_CALL_ID_KEY = "pending_call_id";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
  private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
  private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
  private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
  private static final int LIKE_ACTION_CONTROLLER_VERSION = 2;
  private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
  private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
  private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
  private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final int MAX_CACHE_SIZE = 128;
  private static final int MAX_OBJECT_SUFFIX = 1000;
  private static final String TAG = LikeActionController.class.getSimpleName();
  private static Context applicationContext;
  private static final ConcurrentHashMap<String, LikeActionController> cache = new ConcurrentHashMap();
  private static FileLruCache controllerDiskCache;
  private static WorkQueue diskIOWorkQueue = new WorkQueue(1);
  private static Handler handler;
  private static boolean isInitialized;
  private static boolean isPendingBroadcastReset;
  private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
  private static String objectIdForPendingController;
  private static volatile int objectSuffix;
  private AppEventsLogger appEventsLogger;
  private boolean isObjectLiked;
  private boolean isObjectLikedOnServer;
  private boolean isPendingLikeOrUnlike;
  private String likeCountStringWithLike;
  private String likeCountStringWithoutLike;
  private String objectId;
  private boolean objectIsPage;
  private Bundle pendingCallAnalyticsBundle;
  private UUID pendingCallId;
  private Session session;
  private String socialSentenceWithLike;
  private String socialSentenceWithoutLike;
  private String unlikeToken;
  private String verifiedObjectId;
  
  private LikeActionController(Session paramSession, String paramString)
  {
    session = paramSession;
    objectId = paramString;
    appEventsLogger = AppEventsLogger.newLogger(applicationContext, paramSession);
  }
  
  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString)
  {
    broadcastAction(paramLikeActionController, paramString, null);
  }
  
  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramString);
    paramString = paramBundle;
    if (paramLikeActionController != null)
    {
      paramString = paramBundle;
      if (paramBundle == null) {
        paramString = new Bundle();
      }
      paramString.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", paramLikeActionController.getObjectId());
    }
    if (paramString != null) {
      localIntent.putExtras(paramString);
    }
    LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(localIntent);
  }
  
  private boolean canUseOGPublish()
  {
    return (!objectIsPage) && (verifiedObjectId != null) && (session != null) && (session.getPermissions() != null) && (session.getPermissions().contains("publish_actions"));
  }
  
  private static void createControllerForObjectId(String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    Object localObject = getControllerFromInMemoryCache(paramString);
    if (localObject != null)
    {
      invokeCallbackWithController(paramCreationCallback, (LikeActionController)localObject);
      return;
    }
    LikeActionController localLikeActionController = deserializeFromDiskSynchronously(paramString);
    localObject = localLikeActionController;
    if (localLikeActionController == null)
    {
      localObject = new LikeActionController(Session.getActiveSession(), paramString);
      serializeToDiskAsync((LikeActionController)localObject);
    }
    putControllerInMemoryCache(paramString, (LikeActionController)localObject);
    handler.post(new LikeActionController.2((LikeActionController)localObject));
    invokeCallbackWithController(paramCreationCallback, (LikeActionController)localObject);
  }
  
  /* Error */
  private static LikeActionController deserializeFromDiskSynchronously(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: invokestatic 368	com/facebook/internal/LikeActionController:getCacheKeyForObjectId	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_0
    //   9: getstatic 274	com/facebook/internal/LikeActionController:controllerDiskCache	Lcom/facebook/internal/FileLruCache;
    //   12: aload_0
    //   13: invokevirtual 374	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;)Ljava/io/InputStream;
    //   16: astore_0
    //   17: aload_3
    //   18: astore_1
    //   19: aload_0
    //   20: ifnull +25 -> 45
    //   23: aload_0
    //   24: invokestatic 380	com/facebook/internal/Utility:readStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   27: astore 4
    //   29: aload_3
    //   30: astore_1
    //   31: aload 4
    //   33: invokestatic 384	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   36: ifne +9 -> 45
    //   39: aload 4
    //   41: invokestatic 387	com/facebook/internal/LikeActionController:deserializeFromJson	(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    //   44: astore_1
    //   45: aload_1
    //   46: astore_2
    //   47: aload_0
    //   48: ifnull +9 -> 57
    //   51: aload_0
    //   52: invokestatic 391	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   55: aload_1
    //   56: astore_2
    //   57: aload_2
    //   58: areturn
    //   59: astore_0
    //   60: aconst_null
    //   61: astore_0
    //   62: aload_0
    //   63: ifnull -6 -> 57
    //   66: aload_0
    //   67: invokestatic 391	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   70: aconst_null
    //   71: areturn
    //   72: astore_0
    //   73: aconst_null
    //   74: astore_2
    //   75: aload_0
    //   76: astore_1
    //   77: aload_2
    //   78: ifnull +7 -> 85
    //   81: aload_2
    //   82: invokestatic 391	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   85: aload_1
    //   86: athrow
    //   87: astore_1
    //   88: aload_0
    //   89: astore_2
    //   90: goto -13 -> 77
    //   93: astore_1
    //   94: goto -32 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	paramString	String
    //   18	68	1	localObject1	Object
    //   87	1	1	localObject2	Object
    //   93	1	1	localIOException	IOException
    //   1	89	2	localObject3	Object
    //   3	27	3	localObject4	Object
    //   27	13	4	str	String
    // Exception table:
    //   from	to	target	type
    //   4	17	59	java/io/IOException
    //   4	17	72	finally
    //   23	29	87	finally
    //   31	45	87	finally
    //   23	29	93	java/io/IOException
    //   31	45	93	java/io/IOException
  }
  
  private static LikeActionController deserializeFromJson(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.optInt("com.facebook.internal.LikeActionController.version", -1) != 2) {
        return null;
      }
      LikeActionController localLikeActionController = new LikeActionController(Session.getActiveSession(), paramString.getString("object_id"));
      likeCountStringWithLike = paramString.optString("like_count_string_with_like", null);
      likeCountStringWithoutLike = paramString.optString("like_count_string_without_like", null);
      socialSentenceWithLike = paramString.optString("social_sentence_with_like", null);
      socialSentenceWithoutLike = paramString.optString("social_sentence_without_like", null);
      isObjectLiked = paramString.optBoolean("is_object_liked");
      unlikeToken = paramString.optString("unlike_token", null);
      Object localObject = paramString.optString("pending_call_id", null);
      if (!Utility.isNullOrEmpty((String)localObject)) {
        pendingCallId = UUID.fromString((String)localObject);
      }
      localObject = paramString.optJSONObject("pending_call_analytics_bundle");
      paramString = localLikeActionController;
      if (localObject != null)
      {
        pendingCallAnalyticsBundle = BundleJSONConverter.convertToBundle((JSONObject)localObject);
        paramString = localLikeActionController;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramString = null;
      }
    }
    return paramString;
  }
  
  private static void ensureApplicationContextExists(Context paramContext)
  {
    try
    {
      if (applicationContext == null) {
        applicationContext = paramContext.getApplicationContext();
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private void fetchVerifiedObjectId(LikeActionController.RequestCompletionCallback paramRequestCompletionCallback)
  {
    if (!Utility.isNullOrEmpty(verifiedObjectId))
    {
      if (paramRequestCompletionCallback != null) {
        paramRequestCompletionCallback.onComplete();
      }
      return;
    }
    LikeActionController.GetOGObjectIdRequestWrapper localGetOGObjectIdRequestWrapper = new LikeActionController.GetOGObjectIdRequestWrapper(this, objectId);
    LikeActionController.GetPageIdRequestWrapper localGetPageIdRequestWrapper = new LikeActionController.GetPageIdRequestWrapper(this, objectId);
    RequestBatch localRequestBatch = new RequestBatch();
    localGetOGObjectIdRequestWrapper.addToBatch(localRequestBatch);
    localGetPageIdRequestWrapper.addToBatch(localRequestBatch);
    localRequestBatch.addCallback(new LikeActionController.10(this, localGetOGObjectIdRequestWrapper, localGetPageIdRequestWrapper, paramRequestCompletionCallback));
    localRequestBatch.executeAsync();
  }
  
  private static String getCacheKeyForObjectId(String paramString)
  {
    Object localObject2 = null;
    Session localSession = Session.getActiveSession();
    Object localObject1 = localObject2;
    if (localSession != null)
    {
      localObject1 = localObject2;
      if (localSession.isOpened()) {
        localObject1 = localSession.getAccessToken();
      }
    }
    localObject2 = localObject1;
    if (localObject1 != null) {
      localObject2 = Utility.md5hash((String)localObject1);
    }
    return String.format("%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, Utility.coerceValueIfNullOrEmpty((String)localObject2, ""), Integer.valueOf(objectSuffix) });
  }
  
  public static void getControllerForObjectId(Context paramContext, String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    ensureApplicationContextExists(paramContext);
    if (!isInitialized) {
      performFirstInitialize();
    }
    paramContext = getControllerFromInMemoryCache(paramString);
    if (paramContext != null)
    {
      invokeCallbackWithController(paramCreationCallback, paramContext);
      return;
    }
    diskIOWorkQueue.addActiveWorkItem(new LikeActionController.CreateLikeActionControllerWorkItem(paramString, paramCreationCallback));
  }
  
  private static LikeActionController getControllerFromInMemoryCache(String paramString)
  {
    paramString = getCacheKeyForObjectId(paramString);
    LikeActionController localLikeActionController = (LikeActionController)cache.get(paramString);
    if (localLikeActionController != null) {
      mruCacheWorkQueue.addActiveWorkItem(new LikeActionController.MRUCacheWorkItem(paramString, false));
    }
    return localLikeActionController;
  }
  
  private FacebookDialog.Callback getFacebookDialogCallback(Bundle paramBundle)
  {
    return new LikeActionController.5(this, paramBundle);
  }
  
  public static boolean handleOnActivityResult(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    ensureApplicationContextExists(paramContext);
    paramContext = NativeProtocol.getCallIdFromIntent(paramIntent);
    if (paramContext == null) {}
    do
    {
      return false;
      if (Utility.isNullOrEmpty(objectIdForPendingController)) {
        objectIdForPendingController = applicationContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
      }
    } while (Utility.isNullOrEmpty(objectIdForPendingController));
    getControllerForObjectId(applicationContext, objectIdForPendingController, new LikeActionController.1(paramInt1, paramInt2, paramIntent, paramContext));
    return true;
  }
  
  private static void invokeCallbackWithController(LikeActionController.CreationCallback paramCreationCallback, LikeActionController paramLikeActionController)
  {
    if (paramCreationCallback == null) {
      return;
    }
    handler.post(new LikeActionController.3(paramCreationCallback, paramLikeActionController));
  }
  
  private void logAppEventForError(String paramString, Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", objectId);
    paramBundle.putString("current_action", paramString);
    appEventsLogger.logSdkEvent("fb_like_control_error", null, paramBundle);
  }
  
  private void logAppEventForError(String paramString, FacebookRequestError paramFacebookRequestError)
  {
    Bundle localBundle = new Bundle();
    if (paramFacebookRequestError != null)
    {
      paramFacebookRequestError = paramFacebookRequestError.getRequestResult();
      if (paramFacebookRequestError != null) {
        localBundle.putString("error", paramFacebookRequestError.toString());
      }
    }
    logAppEventForError(paramString, localBundle);
  }
  
  private boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent, UUID paramUUID)
  {
    if ((pendingCallId == null) || (!pendingCallId.equals(paramUUID))) {}
    do
    {
      return false;
      paramUUID = PendingCallStore.getInstance().getPendingCallById(pendingCallId);
    } while (paramUUID == null);
    FacebookDialog.handleActivityResult(applicationContext, paramUUID, paramInt1, paramIntent, getFacebookDialogCallback(pendingCallAnalyticsBundle));
    stopTrackingPendingCall();
    return true;
  }
  
  /* Error */
  private static void performFirstInitialize()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 506	com/facebook/internal/LikeActionController:isInitialized	Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 358	android/os/Handler
    //   18: dup
    //   19: invokestatic 610	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   22: invokespecial 613	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   25: putstatic 282	com/facebook/internal/LikeActionController:handler	Landroid/os/Handler;
    //   28: getstatic 153	com/facebook/internal/LikeActionController:applicationContext	Landroid/content/Context;
    //   31: ldc 59
    //   33: iconst_0
    //   34: invokevirtual 545	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   37: ldc 62
    //   39: iconst_1
    //   40: invokeinterface 616 3 0
    //   45: putstatic 259	com/facebook/internal/LikeActionController:objectSuffix	I
    //   48: new 370	com/facebook/internal/FileLruCache
    //   51: dup
    //   52: getstatic 153	com/facebook/internal/LikeActionController:applicationContext	Landroid/content/Context;
    //   55: getstatic 128	com/facebook/internal/LikeActionController:TAG	Ljava/lang/String;
    //   58: new 618	com/facebook/internal/FileLruCache$Limits
    //   61: dup
    //   62: invokespecial 619	com/facebook/internal/FileLruCache$Limits:<init>	()V
    //   65: invokespecial 622	com/facebook/internal/FileLruCache:<init>	(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    //   68: putstatic 274	com/facebook/internal/LikeActionController:controllerDiskCache	Lcom/facebook/internal/FileLruCache;
    //   71: invokestatic 625	com/facebook/internal/LikeActionController:registerSessionBroadcastReceivers	()V
    //   74: iconst_1
    //   75: putstatic 506	com/facebook/internal/LikeActionController:isInitialized	Z
    //   78: goto -67 -> 11
    //   81: astore_1
    //   82: ldc 2
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	bool	boolean
    //   81	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	81	finally
    //   15	78	81	finally
  }
  
  private void presentLikeDialog(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    LikeActionController.LikeDialogBuilder localLikeDialogBuilder = new LikeActionController.LikeDialogBuilder(paramActivity, objectId);
    localLikeDialogBuilder.setFragment(paramFragment);
    if (localLikeDialogBuilder.canPresent())
    {
      trackPendingCall(localLikeDialogBuilder.build().present(), paramBundle);
      appEventsLogger.logSdkEvent("fb_like_control_did_present_dialog", null, paramBundle);
    }
    do
    {
      return;
      paramFragment = localLikeDialogBuilder.getWebFallbackUrl();
    } while ((Utility.isNullOrEmpty(paramFragment)) || (!FacebookWebFallbackDialog.presentWebFallback(paramActivity, paramFragment, localLikeDialogBuilder.getApplicationId(), localLikeDialogBuilder.getAppCall(), getFacebookDialogCallback(paramBundle))));
    appEventsLogger.logSdkEvent("fb_like_control_did_present_fallback_dialog", null, paramBundle);
  }
  
  private void publishAgainIfNeeded(Bundle paramBundle)
  {
    if ((isObjectLiked != isObjectLikedOnServer) && (!publishLikeOrUnlikeAsync(isObjectLiked, paramBundle))) {
      if (isObjectLiked) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      publishDidError(bool);
      return;
    }
  }
  
  private void publishDidError(boolean paramBoolean)
  {
    updateLikeState(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    broadcastAction(this, "com.facebook.sdk.LikeActionController.DID_ERROR", localBundle);
  }
  
  private void publishLikeAsync(Bundle paramBundle)
  {
    isPendingLikeOrUnlike = true;
    fetchVerifiedObjectId(new LikeActionController.6(this, paramBundle));
  }
  
  private boolean publishLikeOrUnlikeAsync(boolean paramBoolean, Bundle paramBundle)
  {
    if (canUseOGPublish())
    {
      if (paramBoolean)
      {
        publishLikeAsync(paramBundle);
        return true;
      }
      if (!Utility.isNullOrEmpty(unlikeToken))
      {
        publishUnlikeAsync(paramBundle);
        return true;
      }
    }
    return false;
  }
  
  private void publishUnlikeAsync(Bundle paramBundle)
  {
    isPendingLikeOrUnlike = true;
    RequestBatch localRequestBatch = new RequestBatch();
    LikeActionController.PublishUnlikeRequestWrapper localPublishUnlikeRequestWrapper = new LikeActionController.PublishUnlikeRequestWrapper(this, unlikeToken);
    localPublishUnlikeRequestWrapper.addToBatch(localRequestBatch);
    localRequestBatch.addCallback(new LikeActionController.7(this, localPublishUnlikeRequestWrapper, paramBundle));
    localRequestBatch.executeAsync();
  }
  
  private static void putControllerInMemoryCache(String paramString, LikeActionController paramLikeActionController)
  {
    paramString = getCacheKeyForObjectId(paramString);
    mruCacheWorkQueue.addActiveWorkItem(new LikeActionController.MRUCacheWorkItem(paramString, true));
    cache.put(paramString, paramLikeActionController);
  }
  
  private void refreshStatusAsync()
  {
    if ((session == null) || (session.isClosed()) || (SessionState.CREATED.equals(session.getState()))) {
      refreshStatusViaService();
    }
    while (!session.isOpened()) {
      return;
    }
    fetchVerifiedObjectId(new LikeActionController.8(this));
  }
  
  private void refreshStatusViaService()
  {
    LikeStatusClient localLikeStatusClient = new LikeStatusClient(applicationContext, Settings.getApplicationId(), objectId);
    if (!localLikeStatusClient.start()) {
      return;
    }
    localLikeStatusClient.setCompletedListener(new LikeActionController.9(this));
  }
  
  private static void registerSessionBroadcastReceivers()
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(applicationContext);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
    localLocalBroadcastManager.registerReceiver(new LikeActionController.4(), localIntentFilter);
  }
  
  private static void serializeToDiskAsync(LikeActionController paramLikeActionController)
  {
    String str = serializeToJson(paramLikeActionController);
    paramLikeActionController = getCacheKeyForObjectId(objectId);
    if ((!Utility.isNullOrEmpty(str)) && (!Utility.isNullOrEmpty(paramLikeActionController))) {
      diskIOWorkQueue.addActiveWorkItem(new LikeActionController.SerializeToDiskWorkItem(paramLikeActionController, str));
    }
  }
  
  private static void serializeToDiskSynchronously(String paramString1, String paramString2)
  {
    str = null;
    try
    {
      paramString1 = controllerDiskCache.openPutStream(paramString1);
      str = paramString1;
      if (str == null) {
        break label52;
      }
    }
    catch (IOException paramString1)
    {
      do
      {
        try
        {
          paramString1.write(paramString2.getBytes());
          if (paramString1 != null) {
            Utility.closeQuietly(paramString1);
          }
          return;
        }
        finally
        {
          str = paramString1;
        }
        paramString1 = paramString1;
      } while (str == null);
      Utility.closeQuietly(str);
      return;
    }
    finally
    {
      paramString1 = finally;
      str = null;
      paramString2 = paramString1;
    }
    Utility.closeQuietly(str);
    label52:
    throw paramString2;
  }
  
  private static String serializeToJson(LikeActionController paramLikeActionController)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("com.facebook.internal.LikeActionController.version", 2);
      localJSONObject.put("object_id", objectId);
      localJSONObject.put("like_count_string_with_like", likeCountStringWithLike);
      localJSONObject.put("like_count_string_without_like", likeCountStringWithoutLike);
      localJSONObject.put("social_sentence_with_like", socialSentenceWithLike);
      localJSONObject.put("social_sentence_without_like", socialSentenceWithoutLike);
      localJSONObject.put("is_object_liked", isObjectLiked);
      localJSONObject.put("unlike_token", unlikeToken);
      if (pendingCallId != null) {
        localJSONObject.put("pending_call_id", pendingCallId.toString());
      }
      if (pendingCallAnalyticsBundle != null)
      {
        paramLikeActionController = BundleJSONConverter.convertToJSON(pendingCallAnalyticsBundle);
        if (paramLikeActionController != null) {
          localJSONObject.put("pending_call_analytics_bundle", paramLikeActionController);
        }
      }
      return localJSONObject.toString();
    }
    catch (JSONException paramLikeActionController) {}
    return null;
  }
  
  private void stopTrackingPendingCall()
  {
    PendingCallStore.getInstance().stopTrackingPendingCall(pendingCallId);
    pendingCallId = null;
    pendingCallAnalyticsBundle = null;
    storeObjectIdForPendingController(null);
  }
  
  private void storeObjectIdForPendingController(String paramString)
  {
    objectIdForPendingController = paramString;
    applicationContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", objectIdForPendingController).apply();
  }
  
  private void trackPendingCall(FacebookDialog.PendingCall paramPendingCall, Bundle paramBundle)
  {
    PendingCallStore.getInstance().trackPendingCall(paramPendingCall);
    pendingCallId = paramPendingCall.getCallId();
    storeObjectIdForPendingController(objectId);
    pendingCallAnalyticsBundle = paramBundle;
    serializeToDiskAsync(this);
  }
  
  private void updateLikeState(boolean paramBoolean)
  {
    updateState(paramBoolean, likeCountStringWithLike, likeCountStringWithoutLike, socialSentenceWithLike, socialSentenceWithoutLike, unlikeToken);
  }
  
  private void updateState(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = Utility.coerceValueIfNullOrEmpty(paramString1, null);
    paramString2 = Utility.coerceValueIfNullOrEmpty(paramString2, null);
    paramString3 = Utility.coerceValueIfNullOrEmpty(paramString3, null);
    paramString4 = Utility.coerceValueIfNullOrEmpty(paramString4, null);
    paramString5 = Utility.coerceValueIfNullOrEmpty(paramString5, null);
    if ((paramBoolean != isObjectLiked) || (!Utility.areObjectsEqual(paramString1, likeCountStringWithLike)) || (!Utility.areObjectsEqual(paramString2, likeCountStringWithoutLike)) || (!Utility.areObjectsEqual(paramString3, socialSentenceWithLike)) || (!Utility.areObjectsEqual(paramString4, socialSentenceWithoutLike)) || (!Utility.areObjectsEqual(paramString5, unlikeToken))) {}
    for (int i = 1; i == 0; i = 0) {
      return;
    }
    isObjectLiked = paramBoolean;
    likeCountStringWithLike = paramString1;
    likeCountStringWithoutLike = paramString2;
    socialSentenceWithLike = paramString3;
    socialSentenceWithoutLike = paramString4;
    unlikeToken = paramString5;
    serializeToDiskAsync(this);
    broadcastAction(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }
  
  public String getLikeCountString()
  {
    if (isObjectLiked) {
      return likeCountStringWithLike;
    }
    return likeCountStringWithoutLike;
  }
  
  public String getObjectId()
  {
    return objectId;
  }
  
  public String getSocialSentence()
  {
    if (isObjectLiked) {
      return socialSentenceWithLike;
    }
    return socialSentenceWithoutLike;
  }
  
  public boolean isObjectLiked()
  {
    return isObjectLiked;
  }
  
  public void toggleLike(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    boolean bool2 = true;
    appEventsLogger.logSdkEvent("fb_like_control_did_tap", null, paramBundle);
    if (!isObjectLiked)
    {
      bool1 = true;
      if (!canUseOGPublish()) {
        break label103;
      }
      updateLikeState(bool1);
      if (!isPendingLikeOrUnlike) {
        break label64;
      }
      appEventsLogger.logSdkEvent("fb_like_control_did_undo_quickly", null, paramBundle);
    }
    label64:
    while (publishLikeOrUnlikeAsync(bool1, paramBundle))
    {
      return;
      bool1 = false;
      break;
    }
    if (!bool1) {}
    for (boolean bool1 = bool2;; bool1 = false)
    {
      updateLikeState(bool1);
      presentLikeDialog(paramActivity, paramFragment, paramBundle);
      return;
    }
    label103:
    presentLikeDialog(paramActivity, paramFragment, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */