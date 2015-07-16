package com.yik.yak.data.http.request;

import Aa;
import Aj;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class VerifyRequest
  extends BaseRequest
{
  private String mToken;
  private String mVerificationCode;
  private String mYakkerId;
  
  public VerifyRequest(String paramString1, String paramString2, String paramString3)
  {
    mYakkerId = paramString1;
    mVerificationCode = paramString2;
    mToken = paramString3;
  }
  
  public JSONObject buildBody()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("userID", mYakkerId);
    localJSONObject.put("token", mToken);
    localJSONObject.put("code", mVerificationCode);
    return localJSONObject;
  }
  
  public Object buildResponse(Object paramObject)
  {
    JSONObject localJSONObject = (JSONObject)paramObject;
    paramObject = new VerifyRequest.VerifyRequestResponse(this);
    try
    {
      if (localJSONObject.has("error")) {
        mErrorCode = localJSONObject.getInt("error");
      }
      if (localJSONObject.has("message")) {
        mErrorMessage = localJSONObject.getString("message");
      }
      if (localJSONObject.has("success")) {
        mVerificationSuccessful = localJSONObject.getBoolean("success");
      }
      return paramObject;
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
    localTreeMap.put("userID", Aa.g());
    return Aj.a("verify", localTreeMap, null);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.VerifyRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */