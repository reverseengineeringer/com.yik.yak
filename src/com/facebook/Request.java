package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphPlace;
import com.facebook.model.GraphUser;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import com.facebook.model.OpenGraphObject.Factory;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Request
{
  private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
  private static final String ACCESS_TOKEN_PARAM = "access_token";
  private static final String ATTACHED_FILES_PARAM = "attached_files";
  private static final String ATTACHMENT_FILENAME_PREFIX = "file";
  private static final String BATCH_APP_ID_PARAM = "batch_app_id";
  private static final String BATCH_BODY_PARAM = "body";
  private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
  private static final String BATCH_ENTRY_NAME_PARAM = "name";
  private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
  private static final String BATCH_METHOD_PARAM = "method";
  private static final String BATCH_PARAM = "batch";
  private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
  private static final String CONTENT_ENCODING_HEADER = "Content-Encoding";
  private static final String CONTENT_TYPE_HEADER = "Content-Type";
  private static final String FORMAT_JSON = "json";
  private static final String FORMAT_PARAM = "format";
  private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
  public static final int MAXIMUM_BATCH_SIZE = 50;
  private static final String ME = "me";
  private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
  private static final String MY_ACTION_FORMAT = "me/%s";
  private static final String MY_FEED = "me/feed";
  private static final String MY_FRIENDS = "me/friends";
  private static final String MY_OBJECTS_FORMAT = "me/objects/%s";
  private static final String MY_PHOTOS = "me/photos";
  private static final String MY_STAGING_RESOURCES = "me/staging_resources";
  private static final String MY_VIDEOS = "me/videos";
  private static final String OBJECT_PARAM = "object";
  private static final String PICTURE_PARAM = "picture";
  private static final String SDK_ANDROID = "android";
  private static final String SDK_PARAM = "sdk";
  private static final String SEARCH = "search";
  private static final String STAGING_PARAM = "file";
  public static final String TAG = Request.class.getSimpleName();
  private static final String USER_AGENT_BASE = "FBAndroidSDK";
  private static final String USER_AGENT_HEADER = "User-Agent";
  private static final String VIDEOS_SUFFIX = "/videos";
  private static String defaultBatchApplicationId;
  private static volatile String userAgent;
  private static Pattern versionPattern = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
  private String batchEntryDependsOn;
  private String batchEntryName;
  private boolean batchEntryOmitResultOnSuccess = true;
  private Request.Callback callback;
  private GraphObject graphObject;
  private String graphPath;
  private HttpMethod httpMethod;
  private String overriddenURL;
  private Bundle parameters;
  private Session session;
  private boolean skipClientToken = false;
  private Object tag;
  private String version;
  
  public Request()
  {
    this(null, null, null, null, null);
  }
  
  public Request(Session paramSession, String paramString)
  {
    this(paramSession, paramString, null, null, null);
  }
  
  public Request(Session paramSession, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod)
  {
    this(paramSession, paramString, paramBundle, paramHttpMethod, null);
  }
  
  public Request(Session paramSession, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod, Request.Callback paramCallback)
  {
    this(paramSession, paramString, paramBundle, paramHttpMethod, paramCallback, null);
  }
  
  public Request(Session paramSession, String paramString1, Bundle paramBundle, HttpMethod paramHttpMethod, Request.Callback paramCallback, String paramString2)
  {
    session = paramSession;
    graphPath = paramString1;
    callback = paramCallback;
    version = paramString2;
    setHttpMethod(paramHttpMethod);
    if (paramBundle != null) {}
    for (parameters = new Bundle(paramBundle);; parameters = new Bundle())
    {
      if (version == null) {
        version = ServerProtocol.getAPIVersion();
      }
      return;
    }
  }
  
  Request(Session paramSession, URL paramURL)
  {
    session = paramSession;
    overriddenURL = paramURL.toString();
    setHttpMethod(HttpMethod.GET);
    parameters = new Bundle();
  }
  
  private void addCommonParameters()
  {
    String str1;
    if (session != null)
    {
      if (!session.isOpened()) {
        throw new FacebookException("Session provided to a Request in un-opened state.");
      }
      if (!parameters.containsKey("access_token"))
      {
        str1 = session.getAccessToken();
        Logger.registerAccessToken(str1);
        parameters.putString("access_token", str1);
      }
    }
    for (;;)
    {
      parameters.putString("sdk", "android");
      parameters.putString("format", "json");
      return;
      if ((!skipClientToken) && (!parameters.containsKey("access_token")))
      {
        str1 = Settings.getApplicationId();
        String str2 = Settings.getClientToken();
        if ((!Utility.isNullOrEmpty(str1)) && (!Utility.isNullOrEmpty(str2)))
        {
          str1 = str1 + "|" + str2;
          parameters.putString("access_token", str1);
        }
      }
    }
  }
  
  private String appendParametersToBaseUrl(String paramString)
  {
    Uri.Builder localBuilder = new Uri.Builder().encodedPath(paramString);
    Iterator localIterator = parameters.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = parameters.get(str);
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = "";
      }
      if (isSupportedParameterType(paramString)) {
        localBuilder.appendQueryParameter(str, parameterToString(paramString).toString());
      } else if (httpMethod == HttpMethod.GET) {
        throw new IllegalArgumentException(String.format("Unsupported parameter type for GET request: %s", new Object[] { paramString.getClass().getSimpleName() }));
      }
    }
    return localBuilder.toString();
  }
  
  private static HttpURLConnection createConnection(URL paramURL)
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setRequestProperty("User-Agent", getUserAgent());
    paramURL.setRequestProperty("Accept-Language", Locale.getDefault().toString());
    paramURL.setChunkedStreamingMode(0);
    return paramURL;
  }
  
  public static Response executeAndWait(Request paramRequest)
  {
    paramRequest = executeBatchAndWait(new Request[] { paramRequest });
    if ((paramRequest == null) || (paramRequest.size() != 1)) {
      throw new FacebookException("invalid state: expected a single response");
    }
    return (Response)paramRequest.get(0);
  }
  
  public static List<Response> executeBatchAndWait(RequestBatch paramRequestBatch)
  {
    Validate.notEmptyAndContainsNoNulls(paramRequestBatch, "requests");
    try
    {
      HttpURLConnection localHttpURLConnection = toHttpConnection(paramRequestBatch);
      return executeConnectionAndWait(localHttpURLConnection, paramRequestBatch);
    }
    catch (Exception localException)
    {
      List localList = Response.constructErrorResponses(paramRequestBatch.getRequests(), null, new FacebookException(localException));
      runCallbacks(paramRequestBatch, localList);
      return localList;
    }
  }
  
  public static List<Response> executeBatchAndWait(Collection<Request> paramCollection)
  {
    return executeBatchAndWait(new RequestBatch(paramCollection));
  }
  
  public static List<Response> executeBatchAndWait(Request... paramVarArgs)
  {
    Validate.notNull(paramVarArgs, "requests");
    return executeBatchAndWait(Arrays.asList(paramVarArgs));
  }
  
  public static RequestAsyncTask executeBatchAsync(RequestBatch paramRequestBatch)
  {
    Validate.notEmptyAndContainsNoNulls(paramRequestBatch, "requests");
    paramRequestBatch = new RequestAsyncTask(paramRequestBatch);
    paramRequestBatch.executeOnSettingsExecutor();
    return paramRequestBatch;
  }
  
  public static RequestAsyncTask executeBatchAsync(Collection<Request> paramCollection)
  {
    return executeBatchAsync(new RequestBatch(paramCollection));
  }
  
  public static RequestAsyncTask executeBatchAsync(Request... paramVarArgs)
  {
    Validate.notNull(paramVarArgs, "requests");
    return executeBatchAsync(Arrays.asList(paramVarArgs));
  }
  
  public static List<Response> executeConnectionAndWait(HttpURLConnection paramHttpURLConnection, RequestBatch paramRequestBatch)
  {
    List localList = Response.fromHttpConnection(paramHttpURLConnection, paramRequestBatch);
    Utility.disconnectQuietly(paramHttpURLConnection);
    int i = paramRequestBatch.size();
    if (i != localList.size()) {
      throw new FacebookException(String.format("Received %d responses while expecting %d", new Object[] { Integer.valueOf(localList.size()), Integer.valueOf(i) }));
    }
    runCallbacks(paramRequestBatch, localList);
    paramHttpURLConnection = new HashSet();
    paramRequestBatch = paramRequestBatch.iterator();
    while (paramRequestBatch.hasNext())
    {
      Request localRequest = (Request)paramRequestBatch.next();
      if (session != null) {
        paramHttpURLConnection.add(session);
      }
    }
    paramHttpURLConnection = paramHttpURLConnection.iterator();
    while (paramHttpURLConnection.hasNext()) {
      ((Session)paramHttpURLConnection.next()).extendAccessTokenIfNeeded();
    }
    return localList;
  }
  
  public static List<Response> executeConnectionAndWait(HttpURLConnection paramHttpURLConnection, Collection<Request> paramCollection)
  {
    return executeConnectionAndWait(paramHttpURLConnection, new RequestBatch(paramCollection));
  }
  
  public static RequestAsyncTask executeConnectionAsync(Handler paramHandler, HttpURLConnection paramHttpURLConnection, RequestBatch paramRequestBatch)
  {
    Validate.notNull(paramHttpURLConnection, "connection");
    paramHttpURLConnection = new RequestAsyncTask(paramHttpURLConnection, paramRequestBatch);
    paramRequestBatch.setCallbackHandler(paramHandler);
    paramHttpURLConnection.executeOnSettingsExecutor();
    return paramHttpURLConnection;
  }
  
  public static RequestAsyncTask executeConnectionAsync(HttpURLConnection paramHttpURLConnection, RequestBatch paramRequestBatch)
  {
    return executeConnectionAsync(null, paramHttpURLConnection, paramRequestBatch);
  }
  
  @Deprecated
  public static RequestAsyncTask executeGraphPathRequestAsync(Session paramSession, String paramString, Request.Callback paramCallback)
  {
    return newGraphPathRequest(paramSession, paramString, paramCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executeMeRequestAsync(Session paramSession, Request.GraphUserCallback paramGraphUserCallback)
  {
    return newMeRequest(paramSession, paramGraphUserCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executeMyFriendsRequestAsync(Session paramSession, Request.GraphUserListCallback paramGraphUserListCallback)
  {
    return newMyFriendsRequest(paramSession, paramGraphUserListCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executePlacesSearchRequestAsync(Session paramSession, Location paramLocation, int paramInt1, int paramInt2, String paramString, Request.GraphPlaceListCallback paramGraphPlaceListCallback)
  {
    return newPlacesSearchRequest(paramSession, paramLocation, paramInt1, paramInt2, paramString, paramGraphPlaceListCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executePostRequestAsync(Session paramSession, String paramString, GraphObject paramGraphObject, Request.Callback paramCallback)
  {
    return newPostRequest(paramSession, paramString, paramGraphObject, paramCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executeStatusUpdateRequestAsync(Session paramSession, String paramString, Request.Callback paramCallback)
  {
    return newStatusUpdateRequest(paramSession, paramString, paramCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executeUploadPhotoRequestAsync(Session paramSession, Bitmap paramBitmap, Request.Callback paramCallback)
  {
    return newUploadPhotoRequest(paramSession, paramBitmap, paramCallback).executeAsync();
  }
  
  @Deprecated
  public static RequestAsyncTask executeUploadPhotoRequestAsync(Session paramSession, File paramFile, Request.Callback paramCallback)
  {
    return newUploadPhotoRequest(paramSession, paramFile, paramCallback).executeAsync();
  }
  
  private static String getBatchAppId(RequestBatch paramRequestBatch)
  {
    if (!Utility.isNullOrEmpty(paramRequestBatch.getBatchApplicationId())) {
      return paramRequestBatch.getBatchApplicationId();
    }
    paramRequestBatch = paramRequestBatch.iterator();
    while (paramRequestBatch.hasNext())
    {
      Session localSession = nextsession;
      if (localSession != null) {
        return localSession.getApplicationId();
      }
    }
    return defaultBatchApplicationId;
  }
  
  public static final String getDefaultBatchApplicationId()
  {
    return defaultBatchApplicationId;
  }
  
  private String getGraphPathWithVersion()
  {
    if (versionPattern.matcher(graphPath).matches()) {
      return graphPath;
    }
    return String.format("%s/%s", new Object[] { version, graphPath });
  }
  
  private static String getMimeContentType()
  {
    return String.format("multipart/form-data; boundary=%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  private static String getUserAgent()
  {
    if (userAgent == null) {
      userAgent = String.format("%s.%s", new Object[] { "FBAndroidSDK", "3.23.1" });
    }
    return userAgent;
  }
  
  private static boolean hasOnProgressCallbacks(RequestBatch paramRequestBatch)
  {
    Iterator localIterator = paramRequestBatch.getCallbacks().iterator();
    while (localIterator.hasNext()) {
      if (((RequestBatch.Callback)localIterator.next() instanceof RequestBatch.OnProgressCallback)) {
        return true;
      }
    }
    paramRequestBatch = paramRequestBatch.iterator();
    while (paramRequestBatch.hasNext()) {
      if ((((Request)paramRequestBatch.next()).getCallback() instanceof Request.OnProgressCallback)) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean isGzipCompressible(RequestBatch paramRequestBatch)
  {
    Request localRequest;
    String str;
    do
    {
      paramRequestBatch = paramRequestBatch.iterator();
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        if (!paramRequestBatch.hasNext()) {
          break;
        }
        localRequest = (Request)paramRequestBatch.next();
        localIterator = parameters.keySet().iterator();
      }
      str = (String)localIterator.next();
    } while (!isSupportedAttachmentType(parameters.get(str)));
    return false;
    return true;
  }
  
  private static boolean isMeRequest(String paramString)
  {
    Matcher localMatcher = versionPattern.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(1);
    }
    return (paramString.startsWith("me/")) || (paramString.startsWith("/me/"));
  }
  
  private static boolean isSupportedAttachmentType(Object paramObject)
  {
    return ((paramObject instanceof Bitmap)) || ((paramObject instanceof byte[])) || ((paramObject instanceof ParcelFileDescriptor)) || ((paramObject instanceof Request.ParcelFileDescriptorWithMimeType));
  }
  
  private static boolean isSupportedParameterType(Object paramObject)
  {
    return ((paramObject instanceof String)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Number)) || ((paramObject instanceof Date));
  }
  
  public static Request newCustomAudienceThirdPartyIdRequest(Session paramSession, Context paramContext, Request.Callback paramCallback)
  {
    return newCustomAudienceThirdPartyIdRequest(paramSession, paramContext, null, paramCallback);
  }
  
  public static Request newCustomAudienceThirdPartyIdRequest(Session paramSession, Context paramContext, String paramString, Request.Callback paramCallback)
  {
    if (paramSession == null) {
      paramSession = Session.getActiveSession();
    }
    for (;;)
    {
      Session localSession = paramSession;
      if (paramSession != null)
      {
        localSession = paramSession;
        if (!paramSession.isOpened()) {
          localSession = null;
        }
      }
      paramSession = paramString;
      if (paramString == null) {
        if (localSession == null) {
          break label60;
        }
      }
      label60:
      for (paramSession = localSession.getApplicationId(); paramSession == null; paramSession = Utility.getMetadataApplicationId(paramContext)) {
        throw new FacebookException("Facebook App ID cannot be determined");
      }
      paramString = paramSession + "/custom_audience_third_party_id";
      AttributionIdentifiers localAttributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(paramContext);
      Bundle localBundle = new Bundle();
      if (localSession == null) {
        if (localAttributionIdentifiers.getAttributionId() == null) {
          break label183;
        }
      }
      label183:
      for (paramSession = localAttributionIdentifiers.getAttributionId();; paramSession = localAttributionIdentifiers.getAndroidAdvertiserId())
      {
        if (localAttributionIdentifiers.getAttributionId() != null) {
          localBundle.putString("udid", paramSession);
        }
        if ((Settings.getLimitEventAndDataUsage(paramContext)) || (localAttributionIdentifiers.isTrackingLimited())) {
          localBundle.putString("limit_event_usage", "1");
        }
        return new Request(localSession, paramString, localBundle, HttpMethod.GET, paramCallback);
      }
    }
  }
  
  public static Request newDeleteObjectRequest(Session paramSession, String paramString, Request.Callback paramCallback)
  {
    return new Request(paramSession, paramString, null, HttpMethod.DELETE, paramCallback);
  }
  
  public static Request newGraphPathRequest(Session paramSession, String paramString, Request.Callback paramCallback)
  {
    return new Request(paramSession, paramString, null, null, paramCallback);
  }
  
  public static Request newMeRequest(Session paramSession, Request.GraphUserCallback paramGraphUserCallback)
  {
    return new Request(paramSession, "me", null, null, new Request.1(paramGraphUserCallback));
  }
  
  public static Request newMyFriendsRequest(Session paramSession, Request.GraphUserListCallback paramGraphUserListCallback)
  {
    return new Request(paramSession, "me/friends", null, null, new Request.2(paramGraphUserListCallback));
  }
  
  public static Request newPlacesSearchRequest(Session paramSession, Location paramLocation, int paramInt1, int paramInt2, String paramString, Request.GraphPlaceListCallback paramGraphPlaceListCallback)
  {
    if ((paramLocation == null) && (Utility.isNullOrEmpty(paramString))) {
      throw new FacebookException("Either location or searchText must be specified.");
    }
    Bundle localBundle = new Bundle(5);
    localBundle.putString("type", "place");
    localBundle.putInt("limit", paramInt2);
    if (paramLocation != null)
    {
      localBundle.putString("center", String.format(Locale.US, "%f,%f", new Object[] { Double.valueOf(paramLocation.getLatitude()), Double.valueOf(paramLocation.getLongitude()) }));
      localBundle.putInt("distance", paramInt1);
    }
    if (!Utility.isNullOrEmpty(paramString)) {
      localBundle.putString("q", paramString);
    }
    paramLocation = new Request.3(paramGraphPlaceListCallback);
    return new Request(paramSession, "search", localBundle, HttpMethod.GET, paramLocation);
  }
  
  public static Request newPostOpenGraphActionRequest(Session paramSession, OpenGraphAction paramOpenGraphAction, Request.Callback paramCallback)
  {
    if (paramOpenGraphAction == null) {
      throw new FacebookException("openGraphAction cannot be null");
    }
    if (Utility.isNullOrEmpty(paramOpenGraphAction.getType())) {
      throw new FacebookException("openGraphAction must have non-null 'type' property");
    }
    return newPostRequest(paramSession, String.format("me/%s", new Object[] { paramOpenGraphAction.getType() }), paramOpenGraphAction, paramCallback);
  }
  
  public static Request newPostOpenGraphObjectRequest(Session paramSession, OpenGraphObject paramOpenGraphObject, Request.Callback paramCallback)
  {
    if (paramOpenGraphObject == null) {
      throw new FacebookException("openGraphObject cannot be null");
    }
    if (Utility.isNullOrEmpty(paramOpenGraphObject.getType())) {
      throw new FacebookException("openGraphObject must have non-null 'type' property");
    }
    if (Utility.isNullOrEmpty(paramOpenGraphObject.getTitle())) {
      throw new FacebookException("openGraphObject must have non-null 'title' property");
    }
    String str = String.format("me/objects/%s", new Object[] { paramOpenGraphObject.getType() });
    Bundle localBundle = new Bundle();
    localBundle.putString("object", paramOpenGraphObject.getInnerJSONObject().toString());
    return new Request(paramSession, str, localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newPostOpenGraphObjectRequest(Session paramSession, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, GraphObject paramGraphObject, Request.Callback paramCallback)
  {
    paramString1 = OpenGraphObject.Factory.createForPost(OpenGraphObject.class, paramString1, paramString2, paramString3, paramString4, paramString5);
    if (paramGraphObject != null) {
      paramString1.setData(paramGraphObject);
    }
    return newPostOpenGraphObjectRequest(paramSession, paramString1, paramCallback);
  }
  
  public static Request newPostRequest(Session paramSession, String paramString, GraphObject paramGraphObject, Request.Callback paramCallback)
  {
    paramSession = new Request(paramSession, paramString, null, HttpMethod.POST, paramCallback);
    paramSession.setGraphObject(paramGraphObject);
    return paramSession;
  }
  
  public static Request newStatusUpdateRequest(Session paramSession, String paramString, Request.Callback paramCallback)
  {
    return newStatusUpdateRequest(paramSession, paramString, (String)null, null, paramCallback);
  }
  
  public static Request newStatusUpdateRequest(Session paramSession, String paramString, GraphPlace paramGraphPlace, List<GraphUser> paramList, Request.Callback paramCallback)
  {
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      Iterator localIterator = paramList.iterator();
      for (;;)
      {
        paramList = localArrayList;
        if (!localIterator.hasNext()) {
          break;
        }
        localArrayList.add(((GraphUser)localIterator.next()).getId());
      }
    }
    paramList = null;
    if (paramGraphPlace == null) {}
    for (paramGraphPlace = null;; paramGraphPlace = paramGraphPlace.getId()) {
      return newStatusUpdateRequest(paramSession, paramString, paramGraphPlace, paramList, paramCallback);
    }
  }
  
  private static Request newStatusUpdateRequest(Session paramSession, String paramString1, String paramString2, List<String> paramList, Request.Callback paramCallback)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString1);
    if (paramString2 != null) {
      localBundle.putString("place", paramString2);
    }
    if ((paramList != null) && (paramList.size() > 0)) {
      localBundle.putString("tags", TextUtils.join(",", paramList));
    }
    return new Request(paramSession, "me/feed", localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUpdateOpenGraphObjectRequest(Session paramSession, OpenGraphObject paramOpenGraphObject, Request.Callback paramCallback)
  {
    if (paramOpenGraphObject == null) {
      throw new FacebookException("openGraphObject cannot be null");
    }
    String str = paramOpenGraphObject.getId();
    if (str == null) {
      throw new FacebookException("openGraphObject must have an id");
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("object", paramOpenGraphObject.getInnerJSONObject().toString());
    return new Request(paramSession, str, localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUpdateOpenGraphObjectRequest(Session paramSession, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, GraphObject paramGraphObject, Request.Callback paramCallback)
  {
    paramString2 = OpenGraphObject.Factory.createForPost(OpenGraphObject.class, null, paramString2, paramString3, paramString4, paramString5);
    paramString2.setId(paramString1);
    paramString2.setData(paramGraphObject);
    return newUpdateOpenGraphObjectRequest(paramSession, paramString2, paramCallback);
  }
  
  public static Request newUploadPhotoRequest(Session paramSession, Bitmap paramBitmap, Request.Callback paramCallback)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("picture", paramBitmap);
    return new Request(paramSession, "me/photos", localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUploadPhotoRequest(Session paramSession, File paramFile, Request.Callback paramCallback)
  {
    paramFile = ParcelFileDescriptor.open(paramFile, 268435456);
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("picture", paramFile);
    return new Request(paramSession, "me/photos", localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUploadStagingResourceWithImageRequest(Session paramSession, Bitmap paramBitmap, Request.Callback paramCallback)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("file", paramBitmap);
    return new Request(paramSession, "me/staging_resources", localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUploadStagingResourceWithImageRequest(Session paramSession, File paramFile, Request.Callback paramCallback)
  {
    paramFile = new Request.ParcelFileDescriptorWithMimeType(ParcelFileDescriptor.open(paramFile, 268435456), "image/png");
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("file", paramFile);
    return new Request(paramSession, "me/staging_resources", localBundle, HttpMethod.POST, paramCallback);
  }
  
  public static Request newUploadVideoRequest(Session paramSession, File paramFile, Request.Callback paramCallback)
  {
    ParcelFileDescriptor localParcelFileDescriptor = ParcelFileDescriptor.open(paramFile, 268435456);
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable(paramFile.getName(), localParcelFileDescriptor);
    return new Request(paramSession, "me/videos", localBundle, HttpMethod.POST, paramCallback);
  }
  
  private static String parameterToString(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (((paramObject instanceof Boolean)) || ((paramObject instanceof Number))) {
      return paramObject.toString();
    }
    if ((paramObject instanceof Date)) {
      return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(paramObject);
    }
    throw new IllegalArgumentException("Unsupported parameter type.");
  }
  
  private static void processGraphObject(GraphObject paramGraphObject, String paramString, Request.KeyValueSerializer paramKeyValueSerializer)
  {
    int i;
    if (isMeRequest(paramString))
    {
      i = paramString.indexOf(":");
      int j = paramString.indexOf("?");
      if ((i > 3) && ((j == -1) || (i < j))) {
        i = 1;
      }
    }
    for (;;)
    {
      paramGraphObject = paramGraphObject.asMap().entrySet().iterator();
      label60:
      if (paramGraphObject.hasNext())
      {
        paramString = (Map.Entry)paramGraphObject.next();
        if ((i != 0) && (((String)paramString.getKey()).equalsIgnoreCase("image"))) {}
        for (boolean bool = true;; bool = false)
        {
          processGraphObjectProperty((String)paramString.getKey(), paramString.getValue(), paramKeyValueSerializer, bool);
          break label60;
          i = 0;
          break;
        }
      }
      return;
      i = 0;
    }
  }
  
  private static void processGraphObjectProperty(String paramString, Object paramObject, Request.KeyValueSerializer paramKeyValueSerializer, boolean paramBoolean)
  {
    Object localObject = paramObject.getClass();
    if (GraphObject.class.isAssignableFrom((Class)localObject))
    {
      paramObject = ((GraphObject)paramObject).getInnerJSONObject();
      localObject = paramObject.getClass();
    }
    label372:
    for (;;)
    {
      if (JSONObject.class.isAssignableFrom((Class)localObject))
      {
        paramObject = (JSONObject)paramObject;
        if (paramBoolean)
        {
          localObject = ((JSONObject)paramObject).keys();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            processGraphObjectProperty(String.format("%s[%s]", new Object[] { paramString, str }), ((JSONObject)paramObject).opt(str), paramKeyValueSerializer, paramBoolean);
          }
          if (!GraphObjectList.class.isAssignableFrom((Class)localObject)) {
            break label372;
          }
          paramObject = ((GraphObjectList)paramObject).getInnerJSONArray();
          localObject = paramObject.getClass();
          continue;
        }
        if (((JSONObject)paramObject).has("id")) {
          processGraphObjectProperty(paramString, ((JSONObject)paramObject).optString("id"), paramKeyValueSerializer, paramBoolean);
        }
      }
      do
      {
        for (;;)
        {
          return;
          if (((JSONObject)paramObject).has("url"))
          {
            processGraphObjectProperty(paramString, ((JSONObject)paramObject).optString("url"), paramKeyValueSerializer, paramBoolean);
            return;
          }
          if (((JSONObject)paramObject).has("fbsdk:create_object"))
          {
            processGraphObjectProperty(paramString, ((JSONObject)paramObject).toString(), paramKeyValueSerializer, paramBoolean);
            return;
            if (!JSONArray.class.isAssignableFrom((Class)localObject)) {
              break;
            }
            paramObject = (JSONArray)paramObject;
            int j = ((JSONArray)paramObject).length();
            int i = 0;
            while (i < j)
            {
              processGraphObjectProperty(String.format("%s[%d]", new Object[] { paramString, Integer.valueOf(i) }), ((JSONArray)paramObject).opt(i), paramKeyValueSerializer, paramBoolean);
              i += 1;
            }
          }
        }
        if ((String.class.isAssignableFrom((Class)localObject)) || (Number.class.isAssignableFrom((Class)localObject)) || (Boolean.class.isAssignableFrom((Class)localObject)))
        {
          paramKeyValueSerializer.writeString(paramString, paramObject.toString());
          return;
        }
      } while (!Date.class.isAssignableFrom((Class)localObject));
      paramObject = (Date)paramObject;
      paramKeyValueSerializer.writeString(paramString, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)paramObject));
      return;
    }
  }
  
  private static void processRequest(RequestBatch paramRequestBatch, Logger paramLogger, int paramInt, URL paramURL, OutputStream paramOutputStream, boolean paramBoolean)
  {
    paramOutputStream = new Request.Serializer(paramOutputStream, paramLogger, paramBoolean);
    if (paramInt == 1)
    {
      paramRequestBatch = paramRequestBatch.get(0);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = parameters.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = parameters.get(str);
        if (isSupportedAttachmentType(localObject)) {
          localHashMap.put(str, new Request.Attachment(paramRequestBatch, localObject));
        }
      }
      if (paramLogger != null) {
        paramLogger.append("  Parameters:\n");
      }
      serializeParameters(parameters, paramOutputStream, paramRequestBatch);
      if (paramLogger != null) {
        paramLogger.append("  Attachments:\n");
      }
      serializeAttachments(localHashMap, paramOutputStream);
      if (graphObject != null) {
        processGraphObject(graphObject, paramURL.getPath(), paramOutputStream);
      }
      return;
    }
    paramURL = getBatchAppId(paramRequestBatch);
    if (Utility.isNullOrEmpty(paramURL)) {
      throw new FacebookException("At least one request in a batch must have an open Session, or a default app ID must be specified.");
    }
    paramOutputStream.writeString("batch_app_id", paramURL);
    paramURL = new HashMap();
    serializeRequestsAsJSON(paramOutputStream, paramRequestBatch, paramURL);
    if (paramLogger != null) {
      paramLogger.append("  Attachments:\n");
    }
    serializeAttachments(paramURL, paramOutputStream);
  }
  
  static void runCallbacks(RequestBatch paramRequestBatch, List<Response> paramList)
  {
    int j = paramRequestBatch.size();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < j)
    {
      Request localRequest = paramRequestBatch.get(i);
      if (callback != null) {
        localArrayList.add(new Pair(callback, paramList.get(i)));
      }
      i += 1;
    }
    if (localArrayList.size() > 0)
    {
      paramList = new Request.4(localArrayList, paramRequestBatch);
      paramRequestBatch = paramRequestBatch.getCallbackHandler();
      if (paramRequestBatch == null) {
        paramList.run();
      }
    }
    else
    {
      return;
    }
    paramRequestBatch.post(paramList);
  }
  
  private static void serializeAttachments(Map<String, Request.Attachment> paramMap, Request.Serializer paramSerializer)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Request.Attachment localAttachment = (Request.Attachment)paramMap.get(str);
      if (isSupportedAttachmentType(localAttachment.getValue())) {
        paramSerializer.writeObject(str, localAttachment.getValue(), localAttachment.getRequest());
      }
    }
  }
  
  private static void serializeParameters(Bundle paramBundle, Request.Serializer paramSerializer, Request paramRequest)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (isSupportedParameterType(localObject)) {
        paramSerializer.writeObject(str, localObject, paramRequest);
      }
    }
  }
  
  private static void serializeRequestsAsJSON(Request.Serializer paramSerializer, Collection<Request> paramCollection, Map<String, Request.Attachment> paramMap)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      ((Request)localIterator.next()).serializeToBatch(localJSONArray, paramMap);
    }
    paramSerializer.writeRequestsAsJson("batch", localJSONArray, paramCollection);
  }
  
  private void serializeToBatch(JSONArray paramJSONArray, Map<String, Request.Attachment> paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    if (batchEntryName != null)
    {
      localJSONObject.put("name", batchEntryName);
      localJSONObject.put("omit_response_on_success", batchEntryOmitResultOnSuccess);
    }
    if (batchEntryDependsOn != null) {
      localJSONObject.put("depends_on", batchEntryDependsOn);
    }
    String str1 = getUrlForBatchedRequest();
    localJSONObject.put("relative_url", str1);
    localJSONObject.put("method", httpMethod);
    if (session != null) {
      Logger.registerAccessToken(session.getAccessToken());
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = parameters.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = parameters.get((String)localObject);
      if (isSupportedAttachmentType(localObject))
      {
        String str2 = String.format("%s%d", new Object[] { "file", Integer.valueOf(paramMap.size()) });
        localArrayList.add(str2);
        paramMap.put(str2, new Request.Attachment(this, localObject));
      }
    }
    if (!localArrayList.isEmpty()) {
      localJSONObject.put("attached_files", TextUtils.join(",", localArrayList));
    }
    if (graphObject != null)
    {
      paramMap = new ArrayList();
      processGraphObject(graphObject, str1, new Request.5(this, paramMap));
      localJSONObject.put("body", TextUtils.join("&", paramMap));
    }
    paramJSONArray.put(localJSONObject);
  }
  
  /* Error */
  static final void serializeToUrlConnection(RequestBatch paramRequestBatch, HttpURLConnection paramHttpURLConnection)
  {
    // Byte code:
    //   0: new 248	com/facebook/internal/Logger
    //   3: dup
    //   4: getstatic 1082	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   7: ldc_w 1084
    //   10: invokespecial 1087	com/facebook/internal/Logger:<init>	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
    //   13: astore 7
    //   15: aload_0
    //   16: invokevirtual 462	com/facebook/RequestBatch:size	()I
    //   19: istore_3
    //   20: aload_0
    //   21: invokestatic 1089	com/facebook/Request:isGzipCompressible	(Lcom/facebook/RequestBatch;)Z
    //   24: istore 4
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpne +138 -> 166
    //   31: aload_0
    //   32: iconst_0
    //   33: invokevirtual 945	com/facebook/RequestBatch:get	(I)Lcom/facebook/Request;
    //   36: getfield 321	com/facebook/Request:httpMethod	Lcom/facebook/HttpMethod;
    //   39: astore 5
    //   41: aload_1
    //   42: aload 5
    //   44: invokevirtual 1091	com/facebook/HttpMethod:name	()Ljava/lang/String;
    //   47: invokevirtual 1094	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: iload 4
    //   53: invokestatic 1098	com/facebook/Request:setConnectionContentType	(Ljava/net/HttpURLConnection;Z)V
    //   56: aload_1
    //   57: invokevirtual 1102	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   60: astore 8
    //   62: aload 7
    //   64: ldc_w 1104
    //   67: invokevirtual 961	com/facebook/internal/Logger:append	(Ljava/lang/String;)V
    //   70: aload 7
    //   72: ldc_w 1106
    //   75: aload_0
    //   76: invokevirtual 1107	com/facebook/RequestBatch:getId	()Ljava/lang/String;
    //   79: invokevirtual 1111	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   82: aload 7
    //   84: ldc_w 1113
    //   87: aload 8
    //   89: invokevirtual 1111	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload 7
    //   94: ldc_w 1115
    //   97: aload_1
    //   98: invokevirtual 1118	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   101: invokevirtual 1111	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   104: aload 7
    //   106: ldc 109
    //   108: aload_1
    //   109: ldc 109
    //   111: invokevirtual 1121	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual 1111	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload 7
    //   119: ldc 47
    //   121: aload_1
    //   122: ldc 47
    //   124: invokevirtual 1121	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   127: invokevirtual 1111	com/facebook/internal/Logger:appendKeyValue	(Ljava/lang/String;Ljava/lang/Object;)V
    //   130: aload_1
    //   131: aload_0
    //   132: invokevirtual 1124	com/facebook/RequestBatch:getTimeout	()I
    //   135: invokevirtual 1127	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   138: aload_1
    //   139: aload_0
    //   140: invokevirtual 1124	com/facebook/RequestBatch:getTimeout	()I
    //   143: invokevirtual 1130	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   146: aload 5
    //   148: getstatic 762	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   151: if_acmpne +23 -> 174
    //   154: iconst_1
    //   155: istore_2
    //   156: iload_2
    //   157: ifne +22 -> 179
    //   160: aload 7
    //   162: invokevirtual 1133	com/facebook/internal/Logger:log	()V
    //   165: return
    //   166: getstatic 762	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   169: astore 5
    //   171: goto -130 -> 41
    //   174: iconst_0
    //   175: istore_2
    //   176: goto -20 -> 156
    //   179: aload_1
    //   180: iconst_1
    //   181: invokevirtual 1137	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   184: new 1139	java/io/BufferedOutputStream
    //   187: dup
    //   188: aload_1
    //   189: invokevirtual 1143	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   192: invokespecial 1146	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   195: astore 6
    //   197: aload 6
    //   199: astore_1
    //   200: iload 4
    //   202: ifeq +17 -> 219
    //   205: aload 6
    //   207: astore 5
    //   209: new 1148	java/util/zip/GZIPOutputStream
    //   212: dup
    //   213: aload 6
    //   215: invokespecial 1149	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   218: astore_1
    //   219: aload_1
    //   220: astore 5
    //   222: aload_0
    //   223: invokestatic 1151	com/facebook/Request:hasOnProgressCallbacks	(Lcom/facebook/RequestBatch;)Z
    //   226: ifeq +116 -> 342
    //   229: aload_1
    //   230: astore 5
    //   232: new 1153	com/facebook/ProgressNoopOutputStream
    //   235: dup
    //   236: aload_0
    //   237: invokevirtual 1004	com/facebook/RequestBatch:getCallbackHandler	()Landroid/os/Handler;
    //   240: invokespecial 1155	com/facebook/ProgressNoopOutputStream:<init>	(Landroid/os/Handler;)V
    //   243: astore 6
    //   245: aload_1
    //   246: astore 5
    //   248: aload_0
    //   249: aconst_null
    //   250: iload_3
    //   251: aload 8
    //   253: aload 6
    //   255: iload 4
    //   257: invokestatic 1157	com/facebook/Request:processRequest	(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   260: aload_1
    //   261: astore 5
    //   263: aload 6
    //   265: invokevirtual 1160	com/facebook/ProgressNoopOutputStream:getMaxProgress	()I
    //   268: istore_2
    //   269: aload_1
    //   270: astore 5
    //   272: new 1162	com/facebook/ProgressOutputStream
    //   275: dup
    //   276: aload_1
    //   277: aload_0
    //   278: aload 6
    //   280: invokevirtual 1165	com/facebook/ProgressNoopOutputStream:getProgressMap	()Ljava/util/Map;
    //   283: iload_2
    //   284: i2l
    //   285: invokespecial 1168	com/facebook/ProgressOutputStream:<init>	(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
    //   288: astore_1
    //   289: aload_0
    //   290: aload 7
    //   292: iload_3
    //   293: aload 8
    //   295: aload_1
    //   296: iload 4
    //   298: invokestatic 1157	com/facebook/Request:processRequest	(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   301: aload_1
    //   302: ifnull +7 -> 309
    //   305: aload_1
    //   306: invokevirtual 1173	java/io/OutputStream:close	()V
    //   309: aload 7
    //   311: invokevirtual 1133	com/facebook/internal/Logger:log	()V
    //   314: return
    //   315: astore_0
    //   316: aconst_null
    //   317: astore 5
    //   319: aload 5
    //   321: ifnull +8 -> 329
    //   324: aload 5
    //   326: invokevirtual 1173	java/io/OutputStream:close	()V
    //   329: aload_0
    //   330: athrow
    //   331: astore_0
    //   332: goto -13 -> 319
    //   335: astore_0
    //   336: aload_1
    //   337: astore 5
    //   339: goto -20 -> 319
    //   342: goto -53 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	345	0	paramRequestBatch	RequestBatch
    //   0	345	1	paramHttpURLConnection	HttpURLConnection
    //   155	129	2	i	int
    //   19	274	3	j	int
    //   24	273	4	bool	boolean
    //   39	299	5	localObject1	Object
    //   195	84	6	localObject2	Object
    //   13	297	7	localLogger	Logger
    //   60	234	8	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   184	197	315	finally
    //   209	219	331	finally
    //   222	229	331	finally
    //   232	245	331	finally
    //   248	260	331	finally
    //   263	269	331	finally
    //   272	289	331	finally
    //   289	301	335	finally
  }
  
  private static void setConnectionContentType(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      paramHttpURLConnection.setRequestProperty("Content-Encoding", "gzip");
      return;
    }
    paramHttpURLConnection.setRequestProperty("Content-Type", getMimeContentType());
  }
  
  public static final void setDefaultBatchApplicationId(String paramString)
  {
    defaultBatchApplicationId = paramString;
  }
  
  public static HttpURLConnection toHttpConnection(RequestBatch paramRequestBatch)
  {
    for (;;)
    {
      try
      {
        if (paramRequestBatch.size() == 1) {
          localObject = new URL(paramRequestBatch.get(0).getUrlForSingleRequest());
        }
      }
      catch (MalformedURLException paramRequestBatch)
      {
        Object localObject;
        throw new FacebookException("could not construct URL for request", paramRequestBatch);
      }
      try
      {
        localObject = createConnection((URL)localObject);
        serializeToUrlConnection(paramRequestBatch, (HttpURLConnection)localObject);
        return (HttpURLConnection)localObject;
      }
      catch (IOException paramRequestBatch)
      {
        throw new FacebookException("could not construct request body", paramRequestBatch);
      }
      catch (JSONException paramRequestBatch)
      {
        throw new FacebookException("could not construct request body", paramRequestBatch);
      }
      localObject = new URL(ServerProtocol.getGraphUrlBase());
    }
  }
  
  public static HttpURLConnection toHttpConnection(Collection<Request> paramCollection)
  {
    Validate.notEmptyAndContainsNoNulls(paramCollection, "requests");
    return toHttpConnection(new RequestBatch(paramCollection));
  }
  
  public static HttpURLConnection toHttpConnection(Request... paramVarArgs)
  {
    return toHttpConnection(Arrays.asList(paramVarArgs));
  }
  
  private static <T extends GraphObject> List<T> typedListFromResponse(Response paramResponse, Class<T> paramClass)
  {
    paramResponse = (GraphMultiResult)paramResponse.getGraphObjectAs(GraphMultiResult.class);
    if (paramResponse == null) {
      return null;
    }
    paramResponse = paramResponse.getData();
    if (paramResponse == null) {
      return null;
    }
    return paramResponse.castToListOf(paramClass);
  }
  
  public final Response executeAndWait()
  {
    return executeAndWait(this);
  }
  
  public final RequestAsyncTask executeAsync()
  {
    return executeBatchAsync(new Request[] { this });
  }
  
  public final String getBatchEntryDependsOn()
  {
    return batchEntryDependsOn;
  }
  
  public final String getBatchEntryName()
  {
    return batchEntryName;
  }
  
  public final boolean getBatchEntryOmitResultOnSuccess()
  {
    return batchEntryOmitResultOnSuccess;
  }
  
  public final Request.Callback getCallback()
  {
    return callback;
  }
  
  public final GraphObject getGraphObject()
  {
    return graphObject;
  }
  
  public final String getGraphPath()
  {
    return graphPath;
  }
  
  public final HttpMethod getHttpMethod()
  {
    return httpMethod;
  }
  
  public final Bundle getParameters()
  {
    return parameters;
  }
  
  public final Session getSession()
  {
    return session;
  }
  
  public final Object getTag()
  {
    return tag;
  }
  
  final String getUrlForBatchedRequest()
  {
    if (overriddenURL != null) {
      throw new FacebookException("Can't override URL for a batch request");
    }
    String str = getGraphPathWithVersion();
    addCommonParameters();
    return appendParametersToBaseUrl(str);
  }
  
  final String getUrlForSingleRequest()
  {
    if (overriddenURL != null) {
      return overriddenURL.toString();
    }
    if ((getHttpMethod() == HttpMethod.POST) && (graphPath != null) && (graphPath.endsWith("/videos"))) {}
    for (String str = ServerProtocol.getGraphVideoUrlBase();; str = ServerProtocol.getGraphUrlBase())
    {
      str = String.format("%s/%s", new Object[] { str, getGraphPathWithVersion() });
      addCommonParameters();
      return appendParametersToBaseUrl(str);
    }
  }
  
  public final String getVersion()
  {
    return version;
  }
  
  public final void setBatchEntryDependsOn(String paramString)
  {
    batchEntryDependsOn = paramString;
  }
  
  public final void setBatchEntryName(String paramString)
  {
    batchEntryName = paramString;
  }
  
  public final void setBatchEntryOmitResultOnSuccess(boolean paramBoolean)
  {
    batchEntryOmitResultOnSuccess = paramBoolean;
  }
  
  public final void setCallback(Request.Callback paramCallback)
  {
    callback = paramCallback;
  }
  
  public final void setGraphObject(GraphObject paramGraphObject)
  {
    graphObject = paramGraphObject;
  }
  
  public final void setGraphPath(String paramString)
  {
    graphPath = paramString;
  }
  
  public final void setHttpMethod(HttpMethod paramHttpMethod)
  {
    if ((overriddenURL != null) && (paramHttpMethod != HttpMethod.GET)) {
      throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }
    if (paramHttpMethod != null) {}
    for (;;)
    {
      httpMethod = paramHttpMethod;
      return;
      paramHttpMethod = HttpMethod.GET;
    }
  }
  
  public final void setParameters(Bundle paramBundle)
  {
    parameters = paramBundle;
  }
  
  public final void setSession(Session paramSession)
  {
    session = paramSession;
  }
  
  public final void setSkipClientToken(boolean paramBoolean)
  {
    skipClientToken = paramBoolean;
  }
  
  public final void setTag(Object paramObject)
  {
    tag = paramObject;
  }
  
  public final void setVersion(String paramString)
  {
    version = paramString;
  }
  
  public String toString()
  {
    return "{Request: " + " session: " + session + ", graphPath: " + graphPath + ", graphObject: " + graphObject + ", httpMethod: " + httpMethod + ", parameters: " + parameters + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */