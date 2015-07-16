package com.parse;

import N;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import com.parse.codec.digest.DigestUtils;
import com.parse.signpost.OAuthConsumer;
import com.parse.signpost.commonshttp.CommonsHttpOAuthConsumer;
import com.parse.signpost.exception.OAuthCommunicationException;
import com.parse.signpost.exception.OAuthExpectationFailedException;
import com.parse.signpost.exception.OAuthMessageSignerException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

class ParseCommand
  extends ParseRequest<JSONObject, Object>
{
  private static final String APP_BUILD_VERSION = "appBuildVersion";
  private static final String APP_DISPLAY_VERSION = "appDisplayVersion";
  private static final String COMMAND_UUID = "uuid";
  private static final String DEVICE_TYPE_AND_SDK_VERSION = "v";
  private static final String INSTALLATION_ID = "iid";
  private static final String OS_VERSION = "osVersion";
  private static final String SESSION_TOKEN = "session_token";
  private String localId;
  private String op;
  private String operationSetUUID;
  JSONObject params;
  private final String sessionToken;
  
  ParseCommand(String paramString1, String paramString2)
  {
    this(paramString1, new JSONObject(), null, null, paramString2);
  }
  
  private ParseCommand(String paramString1, JSONObject paramJSONObject, String paramString2, String paramString3, String paramString4)
  {
    super(1, generateUrl(paramString1));
    op = paramString1;
    params = paramJSONObject;
    localId = paramString2;
    operationSetUUID = paramString3;
    sessionToken = paramString4;
    maxRetries = 0;
  }
  
  ParseCommand(JSONObject paramJSONObject) {}
  
  static void addDefaultParameters(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject.put("osVersion", Build.VERSION.RELEASE);
    paramJSONObject.put("appBuildVersion", Integer.toString(ManifestInfo.getVersionCode()));
    paramJSONObject.put("appDisplayVersion", ManifestInfo.getVersionName());
    paramJSONObject.put("v", "a1.7.1");
    paramJSONObject.put("iid", ParseInstallation.getOrCreateCurrentInstallationId());
    paramJSONObject.put("uuid", UUID.randomUUID().toString());
    if (paramString != null) {
      paramJSONObject.put("session_token", paramString);
    }
  }
  
  static void addToStringer(JSONStringer paramJSONStringer, Object paramObject)
  {
    if ((paramObject instanceof JSONObject))
    {
      paramJSONStringer.object();
      paramObject = (JSONObject)paramObject;
      Iterator localIterator = ((JSONObject)paramObject).keys();
      Object localObject = new ArrayList();
      while (localIterator.hasNext()) {
        ((ArrayList)localObject).add(localIterator.next());
      }
      Collections.sort((List)localObject);
      localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (String)localIterator.next();
        paramJSONStringer.key((String)localObject);
        addToStringer(paramJSONStringer, ((JSONObject)paramObject).opt((String)localObject));
      }
      paramJSONStringer.endObject();
      return;
    }
    if ((paramObject instanceof JSONArray))
    {
      paramObject = (JSONArray)paramObject;
      paramJSONStringer.array();
      int i = 0;
      while (i < ((JSONArray)paramObject).length())
      {
        addToStringer(paramJSONStringer, ((JSONArray)paramObject).get(i));
        i += 1;
      }
      paramJSONStringer.endArray();
      return;
    }
    paramJSONStringer.value(paramObject);
  }
  
  private static String generateUrl(String paramString)
  {
    return String.format("%s/%s/%s", new Object[] { ParseObject.server, "2", paramString });
  }
  
  private static void getLocalPointersIn(Object paramObject, ArrayList<JSONObject> paramArrayList)
  {
    JSONObject localJSONObject;
    if ((paramObject instanceof JSONObject))
    {
      localJSONObject = (JSONObject)paramObject;
      if (("Pointer".equals(localJSONObject.opt("__type"))) && (localJSONObject.has("localId"))) {
        paramArrayList.add((JSONObject)paramObject);
      }
    }
    for (;;)
    {
      return;
      Iterator localIterator = localJSONObject.keys();
      while (localIterator.hasNext()) {
        getLocalPointersIn(localJSONObject.get((String)localIterator.next()), paramArrayList);
      }
      if ((paramObject instanceof JSONArray))
      {
        paramObject = (JSONArray)paramObject;
        int i = 0;
        while (i < ((JSONArray)paramObject).length())
        {
          getLocalPointersIn(((JSONArray)paramObject).get(i), paramArrayList);
          i += 1;
        }
      }
    }
  }
  
  static String toDeterministicString(Object paramObject)
  {
    JSONStringer localJSONStringer = new JSONStringer();
    addToStringer(localJSONStringer, paramObject);
    return localJSONStringer.toString();
  }
  
  void enableRetrying()
  {
    maxRetries = 4;
  }
  
  String getCacheKey()
  {
    try
    {
      String str1 = toDeterministicString(params);
      String str2 = str1;
      if (sessionToken != null) {
        str2 = str1 + sessionToken;
      }
      return "ParseCommand." + op + "." + "2" + "." + DigestUtils.md5Hex(str2);
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException.getMessage());
    }
  }
  
  String getLocalId()
  {
    return localId;
  }
  
  String getOp()
  {
    return op;
  }
  
  String getOperationSetUUID()
  {
    return operationSetUUID;
  }
  
  String getSessionToken()
  {
    return sessionToken;
  }
  
  public void maybeChangeServerOperation()
  {
    if (localId != null)
    {
      String str = LocalIdManager.getDefaultInstance().getObjectId(localId);
      if (str != null)
      {
        localId = null;
        JSONObject localJSONObject = params.optJSONObject("data");
        if (localJSONObject != null) {
          localJSONObject.put("objectId", str);
        }
        if (op.equals("create")) {
          setOp("update");
        }
      }
    }
  }
  
  protected HttpEntity newEntity()
  {
    Iterator localIterator = params.keys();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject.put(str, params.get(str));
      }
      addDefaultParameters(localJSONObject, sessionToken);
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException.getMessage());
    }
    try
    {
      StringEntity localStringEntity = new StringEntity(localJSONObject.toString(), "UTF8");
      localStringEntity.setContentType("application/json");
      return localStringEntity;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException.getMessage());
    }
  }
  
  protected HttpUriRequest newRequest()
  {
    HttpUriRequest localHttpUriRequest = super.newRequest();
    try
    {
      CommonsHttpOAuthConsumer localCommonsHttpOAuthConsumer = new CommonsHttpOAuthConsumer(Parse.applicationId, Parse.clientKey);
      localCommonsHttpOAuthConsumer.setTokenWithSecret(null, "");
      localCommonsHttpOAuthConsumer.sign(localHttpUriRequest);
      return localHttpUriRequest;
    }
    catch (OAuthMessageSignerException localOAuthMessageSignerException)
    {
      throw new ParseException(109, localOAuthMessageSignerException.getMessage());
    }
    catch (OAuthExpectationFailedException localOAuthExpectationFailedException)
    {
      throw new ParseException(109, localOAuthExpectationFailedException.getMessage());
    }
    catch (OAuthCommunicationException localOAuthCommunicationException)
    {
      throw new ParseException(109, localOAuthCommunicationException.getMessage());
    }
  }
  
  protected N<Object> onPostExecute(N<JSONObject> paramN)
  {
    paramN = (JSONObject)paramN.e();
    try
    {
      if (paramN.has("error")) {
        return N.a(new ParseException(paramN.getInt("code"), paramN.getString("error")));
      }
      paramN = paramN.get("result");
      return N.a(paramN);
    }
    catch (JSONException paramN) {}
    return N.a(connectionFailed("corrupted json", paramN));
  }
  
  protected N<Void> onPreExecute(N<Void> paramN)
  {
    Parse.checkInit();
    resolveLocalIds();
    return paramN;
  }
  
  protected JSONObject onResponse(HttpResponse paramHttpResponse, ProgressCallback paramProgressCallback)
  {
    try
    {
      paramHttpResponse = new JSONObject(new JSONTokener(new String(ParseIOUtils.toByteArray(AndroidHttpClient.getUngzippedContent(paramHttpResponse.getEntity())))));
      return paramHttpResponse;
    }
    catch (JSONException paramHttpResponse)
    {
      throw connectionFailed("bad json response", paramHttpResponse);
    }
  }
  
  void put(String paramString, int paramInt)
  {
    try
    {
      params.put(paramString, paramInt);
      return;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  void put(String paramString, long paramLong)
  {
    try
    {
      params.put(paramString, paramLong);
      return;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  void put(String paramString1, String paramString2)
  {
    try
    {
      params.put(paramString1, paramString2);
      return;
    }
    catch (JSONException paramString1)
    {
      throw new RuntimeException(paramString1.getMessage());
    }
  }
  
  void put(String paramString, JSONArray paramJSONArray)
  {
    try
    {
      params.put(paramString, paramJSONArray);
      return;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  void put(String paramString, JSONObject paramJSONObject)
  {
    try
    {
      params.put(paramString, paramJSONObject);
      return;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  public void releaseLocalIds()
  {
    if (localId != null) {
      LocalIdManager.getDefaultInstance().releaseLocalIdOnDisk(localId);
    }
    try
    {
      Object localObject1 = params.get("data");
      Object localObject2 = new ArrayList();
      getLocalPointersIn(localObject1, (ArrayList)localObject2);
      localObject1 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((JSONObject)((Iterator)localObject1).next()).get("localId");
        LocalIdManager.getDefaultInstance().releaseLocalIdOnDisk((String)localObject2);
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  public void resolveLocalIds()
  {
    try
    {
      Object localObject1 = params.get("data");
      Object localObject2 = new ArrayList();
      getLocalPointersIn(localObject1, (ArrayList)localObject2);
      localObject1 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (JSONObject)((Iterator)localObject1).next();
        String str = (String)((JSONObject)localObject2).get("localId");
        str = LocalIdManager.getDefaultInstance().getObjectId(str);
        if (str == null) {
          throw new IllegalStateException("Tried to serialize a command referencing a new, unsaved object.");
        }
        ((JSONObject)localObject2).put("objectId", str);
        ((JSONObject)localObject2).remove("localId");
      }
      maybeChangeServerOperation();
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  public void retainLocalIds()
  {
    if (localId != null) {
      LocalIdManager.getDefaultInstance().retainLocalIdOnDisk(localId);
    }
    try
    {
      Object localObject1 = params.get("data");
      Object localObject2 = new ArrayList();
      getLocalPointersIn(localObject1, (ArrayList)localObject2);
      localObject1 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((JSONObject)((Iterator)localObject1).next()).get("localId");
        LocalIdManager.getDefaultInstance().retainLocalIdOnDisk((String)localObject2);
      }
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  void setLocalId(String paramString)
  {
    localId = paramString;
  }
  
  void setOp(String paramString)
  {
    op = paramString;
    setUrl(generateUrl(paramString));
  }
  
  void setOperationSetUUID(String paramString)
  {
    operationSetUUID = paramString;
  }
  
  /* Error */
  JSONObject toJSONObject()
  {
    // Byte code:
    //   0: new 37	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 40	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: ldc 67
    //   11: aload_0
    //   12: getfield 53	com/parse/ParseCommand:op	Ljava/lang/String;
    //   15: invokevirtual 102	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   18: pop
    //   19: aload_2
    //   20: ldc 71
    //   22: aload_0
    //   23: getfield 55	com/parse/ParseCommand:params	Lorg/json/JSONObject;
    //   26: invokevirtual 102	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   29: pop
    //   30: aload_0
    //   31: getfield 57	com/parse/ParseCommand:localId	Ljava/lang/String;
    //   34: ifnull +14 -> 48
    //   37: aload_2
    //   38: ldc 76
    //   40: aload_0
    //   41: getfield 57	com/parse/ParseCommand:localId	Ljava/lang/String;
    //   44: invokevirtual 102	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   47: pop
    //   48: aload_0
    //   49: getfield 59	com/parse/ParseCommand:operationSetUUID	Ljava/lang/String;
    //   52: ifnull +14 -> 66
    //   55: aload_2
    //   56: ldc 81
    //   58: aload_0
    //   59: getfield 59	com/parse/ParseCommand:operationSetUUID	Ljava/lang/String;
    //   62: invokevirtual 102	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   65: pop
    //   66: aload_0
    //   67: getfield 61	com/parse/ParseCommand:sessionToken	Ljava/lang/String;
    //   70: ifnull +18 -> 88
    //   73: aload_0
    //   74: getfield 61	com/parse/ParseCommand:sessionToken	Ljava/lang/String;
    //   77: astore_1
    //   78: aload_2
    //   79: ldc 27
    //   81: aload_1
    //   82: invokevirtual 102	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   85: pop
    //   86: aload_2
    //   87: areturn
    //   88: getstatic 465	org/json/JSONObject:NULL	Ljava/lang/Object;
    //   91: astore_1
    //   92: goto -14 -> 78
    //   95: astore_1
    //   96: new 263	java/lang/RuntimeException
    //   99: dup
    //   100: aload_1
    //   101: invokevirtual 266	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   104: invokespecial 269	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	ParseCommand
    //   77	15	1	localObject	Object
    //   95	6	1	localJSONException	JSONException
    //   7	80	2	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	48	95	org/json/JSONException
    //   48	66	95	org/json/JSONException
    //   66	78	95	org/json/JSONException
    //   78	86	95	org/json/JSONException
    //   88	92	95	org/json/JSONException
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */