package com.parse;

import Q;
import R;
import ad;
import org.json.JSONObject;

class ParseCommandCache$4
  implements Q<Object, R<Object>>
{
  ParseCommandCache$4(ParseCommandCache paramParseCommandCache, ad paramad, String paramString) {}
  
  public R<Object> then(R<Object> paramR)
  {
    Object localObject = paramR.f();
    if (localObject != null) {
      if ((!(localObject instanceof ParseException)) || (((ParseException)localObject).getCode() != 100)) {}
    }
    do
    {
      do
      {
        return paramR;
      } while (val$tcs == null);
      val$tcs.b((Exception)localObject);
      return paramR;
      localObject = paramR.e();
      if (val$tcs != null)
      {
        val$tcs.b(localObject);
        return paramR;
      }
    } while ((val$localId == null) || (!(localObject instanceof JSONObject)) || (!((JSONObject)localObject).has("data")) || (!((JSONObject)localObject).getJSONObject("data").has("objectId")));
    localObject = ((JSONObject)localObject).getJSONObject("data").getString("objectId");
    LocalIdManager.getDefaultInstance().setObjectId(val$localId, (String)localObject);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommandCache.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */