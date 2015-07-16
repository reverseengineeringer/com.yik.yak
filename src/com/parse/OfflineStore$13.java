package com.parse;

import M;
import N;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class OfflineStore$13
  implements M<String, N<Void>>
{
  OfflineStore$13(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase, ParseObject paramParseObject) {}
  
  public N<Void> then(N<String> paramN)
  {
    paramN = (String)paramN.e();
    if (paramN == null) {
      return N.a(new ParseException(120, "Attempted to fetch an object offline which was never saved to the offline cache."));
    }
    try
    {
      paramN = new JSONObject(paramN);
      HashMap localHashMap = new HashMap();
      new OfflineStore.13.1(this, localHashMap).setTraverseParseObjects(false).setYieldRoot(false).traverse(paramN);
      return N.a(localHashMap.values()).c(new OfflineStore.13.2(this, paramN, localHashMap));
    }
    catch (JSONException paramN) {}
    return N.a(paramN);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */