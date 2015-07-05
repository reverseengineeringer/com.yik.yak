package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookException;
import com.facebook.NativeAppCallAttachmentStore;
import com.facebook.Settings;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.DialogFeatureConfig;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;

public class FacebookDialog
{
  public static final String COMPLETION_GESTURE_CANCEL = "cancel";
  private static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
  private static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
  private static final String EXTRA_DIALOG_COMPLETION_ID_KEY = "com.facebook.platform.extra.POST_ID";
  public static final String RESULT_ARGS_DIALOG_COMPLETE_KEY = "didComplete";
  public static final String RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY = "completionGesture";
  public static final String RESULT_ARGS_DIALOG_COMPLETION_ID_KEY = "postId";
  private static NativeAppCallAttachmentStore attachmentStore;
  private Activity activity;
  private FacebookDialog.PendingCall appCall;
  private Fragment fragment;
  private FacebookDialog.OnPresentCallback onPresentCallback;
  
  private FacebookDialog(Activity paramActivity, Fragment paramFragment, FacebookDialog.PendingCall paramPendingCall, FacebookDialog.OnPresentCallback paramOnPresentCallback)
  {
    activity = paramActivity;
    fragment = paramFragment;
    appCall = paramPendingCall;
    onPresentCallback = paramOnPresentCallback;
  }
  
  public static boolean canPresentMessageDialog(Context paramContext, FacebookDialog.MessageDialogFeature... paramVarArgs)
  {
    return handleCanPresent(paramContext, EnumSet.of(FacebookDialog.MessageDialogFeature.MESSAGE_DIALOG, paramVarArgs));
  }
  
  public static boolean canPresentOpenGraphActionDialog(Context paramContext, FacebookDialog.OpenGraphActionDialogFeature... paramVarArgs)
  {
    return handleCanPresent(paramContext, EnumSet.of(FacebookDialog.OpenGraphActionDialogFeature.OG_ACTION_DIALOG, paramVarArgs));
  }
  
  public static boolean canPresentOpenGraphMessageDialog(Context paramContext, FacebookDialog.OpenGraphMessageDialogFeature... paramVarArgs)
  {
    return handleCanPresent(paramContext, EnumSet.of(FacebookDialog.OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG, paramVarArgs));
  }
  
  public static boolean canPresentShareDialog(Context paramContext, FacebookDialog.ShareDialogFeature... paramVarArgs)
  {
    return handleCanPresent(paramContext, EnumSet.of(FacebookDialog.ShareDialogFeature.SHARE_DIALOG, paramVarArgs));
  }
  
  private static String getActionForFeatures(Iterable<? extends FacebookDialog.DialogFeature> paramIterable)
  {
    Object localObject = null;
    Iterator localIterator = paramIterable.iterator();
    paramIterable = (Iterable<? extends FacebookDialog.DialogFeature>)localObject;
    if (localIterator.hasNext()) {
      paramIterable = ((FacebookDialog.DialogFeature)localIterator.next()).getAction();
    }
    return paramIterable;
  }
  
  private static NativeAppCallAttachmentStore getAttachmentStore()
  {
    if (attachmentStore == null) {
      attachmentStore = new NativeAppCallAttachmentStore();
    }
    return attachmentStore;
  }
  
  private static String getEventName(Intent paramIntent)
  {
    boolean bool3 = true;
    String str = paramIntent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
    boolean bool2 = paramIntent.hasExtra("com.facebook.platform.extra.PHOTOS");
    Object localObject = paramIntent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    boolean bool1;
    if (localObject != null)
    {
      paramIntent = ((Bundle)localObject).getStringArrayList("PHOTOS");
      localObject = ((Bundle)localObject).getString("VIDEO");
      bool1 = bool2;
      if (paramIntent != null)
      {
        bool1 = bool2;
        if (!paramIntent.isEmpty()) {
          bool1 = true;
        }
      }
      if ((localObject != null) && (!((String)localObject).isEmpty()))
      {
        bool2 = bool1;
        bool1 = bool3;
      }
    }
    for (;;)
    {
      return getEventName(str, bool2, bool1);
      bool3 = false;
      bool2 = bool1;
      bool1 = bool3;
      continue;
      bool1 = false;
    }
  }
  
  private static String getEventName(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramString.equals("com.facebook.platform.action.request.FEED_DIALOG"))
    {
      if (paramBoolean2) {
        return "fb_dialogs_present_share_video";
      }
      if (paramBoolean1) {
        return "fb_dialogs_present_share_photo";
      }
      return "fb_dialogs_present_share";
    }
    if (paramString.equals("com.facebook.platform.action.request.MESSAGE_DIALOG"))
    {
      if (paramBoolean1) {
        return "fb_dialogs_present_message_photo";
      }
      return "fb_dialogs_present_message";
    }
    if (paramString.equals("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG")) {
      return "fb_dialogs_present_share_og";
    }
    if (paramString.equals("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG")) {
      return "fb_dialogs_present_message_og";
    }
    if (paramString.equals("com.facebook.platform.action.request.LIKE_DIALOG")) {
      return "fb_dialogs_present_like";
    }
    throw new FacebookException("An unspecified action was presented");
  }
  
  public static String getNativeDialogCompletionGesture(Bundle paramBundle)
  {
    if (paramBundle.containsKey("completionGesture")) {
      return paramBundle.getString("completionGesture");
    }
    return paramBundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
  }
  
  public static boolean getNativeDialogDidComplete(Bundle paramBundle)
  {
    if (paramBundle.containsKey("didComplete")) {
      return paramBundle.getBoolean("didComplete");
    }
    return paramBundle.getBoolean("com.facebook.platform.extra.DID_COMPLETE", false);
  }
  
  public static String getNativeDialogPostId(Bundle paramBundle)
  {
    if (paramBundle.containsKey("postId")) {
      return paramBundle.getString("postId");
    }
    return paramBundle.getString("com.facebook.platform.extra.POST_ID");
  }
  
  private static int getProtocolVersionForNativeDialog(Context paramContext, String paramString, int[] paramArrayOfInt)
  {
    return NativeProtocol.getLatestAvailableProtocolVersionForAction(paramContext, paramString, paramArrayOfInt);
  }
  
  private static int[] getVersionSpecForFeature(String paramString1, String paramString2, FacebookDialog.DialogFeature paramDialogFeature)
  {
    paramString1 = Utility.getDialogFeatureConfig(paramString1, paramString2, paramDialogFeature.name());
    if (paramString1 != null) {
      return paramString1.getVersionSpec();
    }
    return new int[] { paramDialogFeature.getMinVersion() };
  }
  
  private static int[] getVersionSpecForFeatures(String paramString1, String paramString2, Iterable<? extends FacebookDialog.DialogFeature> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    for (paramIterable = null; localIterator.hasNext(); paramIterable = Utility.intersectRanges(paramIterable, getVersionSpecForFeature(paramString1, paramString2, (FacebookDialog.DialogFeature)localIterator.next()))) {}
    return paramIterable;
  }
  
  public static boolean handleActivityResult(Context paramContext, FacebookDialog.PendingCall paramPendingCall, int paramInt, Intent paramIntent, FacebookDialog.Callback paramCallback)
  {
    if (paramInt != paramPendingCall.getRequestCode()) {
      return false;
    }
    if (attachmentStore != null) {
      attachmentStore.cleanupAttachmentsForCall(paramContext, paramPendingCall.getCallId());
    }
    if (paramCallback != null)
    {
      if (!NativeProtocol.isErrorResult(paramIntent)) {
        break label59;
      }
      paramContext = NativeProtocol.getErrorDataFromResultIntent(paramIntent);
      paramCallback.onError(paramPendingCall, NativeProtocol.getExceptionFromErrorData(paramContext), paramContext);
    }
    for (;;)
    {
      return true;
      label59:
      paramCallback.onComplete(paramPendingCall, NativeProtocol.getSuccessResultsFromIntent(paramIntent));
    }
  }
  
  private static boolean handleCanPresent(Context paramContext, Iterable<? extends FacebookDialog.DialogFeature> paramIterable)
  {
    String str3 = getActionForFeatures(paramIterable);
    String str2 = Settings.getApplicationId();
    String str1 = str2;
    if (Utility.isNullOrEmpty(str2)) {
      str1 = Utility.getMetadataApplicationId(paramContext);
    }
    return getProtocolVersionForNativeDialog(paramContext, str3, getVersionSpecForFeatures(str1, str3, paramIterable)) != -1;
  }
  
  private static void logDialogActivity(Activity paramActivity, Fragment paramFragment, String paramString1, String paramString2)
  {
    if (paramFragment != null) {
      paramActivity = paramFragment.getActivity();
    }
    paramActivity = AppEventsLogger.newLogger(paramActivity);
    paramFragment = new Bundle();
    paramFragment.putString("fb_dialog_outcome", paramString2);
    paramActivity.logSdkEvent(paramString1, null, paramFragment);
  }
  
  public FacebookDialog.PendingCall present()
  {
    logDialogActivity(activity, fragment, getEventName(appCall.getRequestIntent()), "Completed");
    if (onPresentCallback != null) {}
    for (;;)
    {
      try
      {
        onPresentCallback.onPresent(activity);
        if (fragment != null)
        {
          fragment.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
          return appCall;
        }
      }
      catch (Exception localException)
      {
        throw new FacebookException(localException);
      }
      activity.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */