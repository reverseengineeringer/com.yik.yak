package com.yik.yak.data.http.request;

import Aj;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class StartVerificationRequest
  extends BaseRequest
{
  private final String TEMP_USER_ID = "124123124112";
  private String mCountry3;
  private String mNumber;
  private String mPrefix;
  private String mType;
  
  public StartVerificationRequest(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    mType = paramString1;
    mPrefix = paramString2;
    mNumber = paramString3;
    mCountry3 = paramString4;
  }
  
  public JSONObject buildBody()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("type", mType);
    localJSONObject.put("prefix", mPrefix);
    localJSONObject.put("number", mNumber);
    localJSONObject.put("country3", mCountry3);
    return localJSONObject;
  }
  
  public Object buildResponse(Object paramObject)
  {
    JSONObject localJSONObject = (JSONObject)paramObject;
    try
    {
      StartVerificationRequest.StartVerificationRequestResponse localStartVerificationRequestResponse = new StartVerificationRequest.StartVerificationRequestResponse();
      if (localJSONObject.has("error")) {
        mErrorCode = localJSONObject.getInt("error");
      }
      if (localJSONObject.has("message")) {
        mMessage = localJSONObject.getString("message");
      }
      if (localJSONObject.has("token")) {
        mToken = localJSONObject.getString("token");
      }
      return localStartVerificationRequestResponse;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return paramObject;
  }
  
  public MethodType getMethodType()
  {
    return MethodType.POST;
  }
  
  public String getUrl()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", "124123124112");
    return Aj.a("startVerification", localTreeMap, null);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.StartVerificationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */