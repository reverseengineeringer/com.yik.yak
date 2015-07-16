package com.yik.yak.data.http.request;

import org.json.JSONObject;
import xD;

public abstract interface YikYakRequest
{
  public abstract JSONObject buildBody();
  
  public abstract xD buildRequest();
  
  public abstract Object buildResponse(Object paramObject);
  
  public abstract MethodType getMethodType();
  
  public abstract String getUrl();
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.YikYakRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */