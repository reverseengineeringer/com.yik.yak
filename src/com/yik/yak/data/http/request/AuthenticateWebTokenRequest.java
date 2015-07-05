package com.yik.yak.data.http.request;

import GF;
import org.json.JSONException;
import org.json.JSONObject;

public class AuthenticateWebTokenRequest
  extends BaseRequest
{
  private Integer mToken;
  private String mYakkerId;
  
  public AuthenticateWebTokenRequest(String paramString, int paramInt)
  {
    mToken = Integer.valueOf(paramInt);
    mYakkerId = paramString;
  }
  
  public JSONObject buildBody()
  {
    GF.a(this, new Object[] { "buildBody: " + mYakkerId });
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("userID", mYakkerId);
    return localJSONObject;
  }
  
  public Object buildResponse(Object paramObject)
  {
    try
    {
      AuthenticateWebTokenRequest.AuthenticateWebTokenResponse localAuthenticateWebTokenResponse = new AuthenticateWebTokenRequest.AuthenticateWebTokenResponse();
      JSONObject localJSONObject = (JSONObject)paramObject;
      mValidationToken = localJSONObject.getString("validationToken");
      mYid = localJSONObject.getString("yid");
      return localAuthenticateWebTokenResponse;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return paramObject;
  }
  
  public MethodType getMethodType()
  {
    return MethodType.PUT;
  }
  
  public String getUrl()
  {
    return "http://webclient.yikyakapi.net/api/auth/token/" + mToken;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.AuthenticateWebTokenRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */