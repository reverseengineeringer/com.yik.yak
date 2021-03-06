package com.yik.yak.data.http.request;

import AM;
import com.yik.yak.data.models.Environment;
import org.json.JSONObject;

public class ValidateUrlRequest
  extends BaseRequest
{
  private String mYakTextToValidate;
  
  public ValidateUrlRequest(String paramString)
  {
    mYakTextToValidate = paramString;
  }
  
  public JSONObject buildBody()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("yt", mYakTextToValidate);
    return localJSONObject;
  }
  
  public MethodType getMethodType()
  {
    return MethodType.POST;
  }
  
  public String getUrl()
  {
    return AM.a().c().getLinkEndpoint() + "/validateUrl";
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.ValidateUrlRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */