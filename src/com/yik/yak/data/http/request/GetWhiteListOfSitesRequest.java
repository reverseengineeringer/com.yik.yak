package com.yik.yak.data.http.request;

import Ai;
import com.yik.yak.data.models.Website;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GetWhiteListOfSitesRequest
  extends BaseRequest
{
  public Object buildResponse(Object paramObject)
  {
    paramObject = (JSONArray)paramObject;
    Ai localAi = new Ai();
    Website[] arrayOfWebsite = new Website[((JSONArray)paramObject).length()];
    int i = 0;
    for (;;)
    {
      if (i < arrayOfWebsite.length) {
        try
        {
          arrayOfWebsite[i] = localAi.a((JSONObject)((JSONArray)paramObject).get(i));
          i += 1;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
          }
        }
      }
    }
    return arrayOfWebsite;
  }
  
  public MethodType getMethodType()
  {
    return MethodType.GET;
  }
  
  public String getUrl()
  {
    return "http://lv.yikyakapi.net/getSites";
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.GetWhiteListOfSitesRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */