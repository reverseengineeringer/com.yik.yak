package com.yik.yak.data.http.request;

import Aa;
import Ae;
import android.content.Context;
import android.os.Handler;
import org.json.JSONException;
import org.json.JSONObject;
import xt;
import xv;
import xw;

public abstract class BaseRequest
  implements YikYakRequest
{
  public JSONObject buildBody()
  {
    return null;
  }
  
  public xt buildRequest()
  {
    switch (BaseRequest.1.$SwitchMap$com$yik$yak$data$http$request$MethodType[getMethodType().ordinal()])
    {
    default: 
      return null;
    case 1: 
      return new xv().a().a(getUrl()).b();
    case 2: 
      try
      {
        xt localxt1 = new xv().a(getUrl()).a(xw.a(null, buildBody().toString())).b();
        return localxt1;
      }
      catch (JSONException localJSONException1)
      {
        localJSONException1.printStackTrace();
      }
    }
    try
    {
      xt localxt2 = new xv().a(getUrl()).b(xw.a(null, buildBody().toString())).b("Content-Type", "application/json").b();
      return localxt2;
    }
    catch (JSONException localJSONException2)
    {
      localJSONException2.printStackTrace();
    }
    return null;
  }
  
  public Object buildResponse(Object paramObject)
  {
    return paramObject;
  }
  
  public Handler execute(Context paramContext, Ae paramAe)
  {
    return Aa.a().a(paramContext, this, paramAe);
  }
  
  public String getUrl()
  {
    return getUrlBase() + getUrlPath();
  }
  
  protected String getUrlBase()
  {
    return null;
  }
  
  protected String getUrlPath()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.BaseRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */