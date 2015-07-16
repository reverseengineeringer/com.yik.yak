package com.parse;

import M;
import N;
import Z;
import org.json.JSONObject;

class ParseCommandCache$4
  implements M<Object, N<Object>>
{
  ParseCommandCache$4(ParseCommandCache paramParseCommandCache, Z paramZ, String paramString) {}
  
  public N<Object> then(N<Object> paramN)
  {
    Object localObject = paramN.f();
    if (localObject != null) {
      if ((!(localObject instanceof ParseException)) || (((ParseException)localObject).getCode() != 100)) {}
    }
    do
    {
      do
      {
        return paramN;
      } while (val$tcs == null);
      val$tcs.b((Exception)localObject);
      return paramN;
      localObject = paramN.e();
      if (val$tcs != null)
      {
        val$tcs.b(localObject);
        return paramN;
      }
    } while ((val$localId == null) || (!(localObject instanceof JSONObject)) || (!((JSONObject)localObject).has("data")) || (!((JSONObject)localObject).getJSONObject("data").has("objectId")));
    localObject = ((JSONObject)localObject).getJSONObject("data").getString("objectId");
    LocalIdManager.getDefaultInstance().setObjectId(val$localId, (String)localObject);
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommandCache.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */