package com.yik.yak.data.http.request;

import Al;
import Ap;
import Hm;
import android.content.Context;
import android.os.Handler;
import org.json.JSONException;
import org.json.JSONObject;
import xD;
import xF;
import xG;

public abstract class BaseRequest
  implements YikYakRequest
{
  public JSONObject buildBody()
  {
    return null;
  }
  
  public xD buildRequest()
  {
    switch (BaseRequest.1.$SwitchMap$com$yik$yak$data$http$request$MethodType[getMethodType().ordinal()])
    {
    default: 
      return null;
    case 1: 
      return new xF().a().a(getUrl()).b();
    case 2: 
      try
      {
        Object localObject = getUrl();
        String str = buildBody().toString();
        Hm.a(this, new Object[] { "POST to url: " + (String)localObject + " \n" + str });
        localObject = new xF().a((String)localObject).a(xG.a(null, str)).b();
        return (xD)localObject;
      }
      catch (JSONException localJSONException1)
      {
        localJSONException1.printStackTrace();
      }
    }
    try
    {
      xD localxD = new xF().a(getUrl()).b(xG.a(null, buildBody().toString())).b("Content-Type", "application/json").b();
      return localxD;
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
  
  public Handler execute(Context paramContext, Ap paramAp)
  {
    return Al.a().a(paramContext, this, paramAp);
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