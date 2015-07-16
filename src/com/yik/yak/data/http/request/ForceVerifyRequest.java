package com.yik.yak.data.http.request;

import Aa;
import Aj;
import java.util.TreeMap;
import org.json.JSONObject;

public class ForceVerifyRequest
  extends BaseRequest
{
  private String mYakkerId;
  
  public ForceVerifyRequest(String paramString)
  {
    mYakkerId = paramString;
  }
  
  public JSONObject buildBody()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("userID", mYakkerId);
    return localJSONObject;
  }
  
  public MethodType getMethodType()
  {
    return MethodType.POST;
  }
  
  public String getUrl()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    return Aj.a("forceVerify", localTreeMap, null);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.ForceVerifyRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */