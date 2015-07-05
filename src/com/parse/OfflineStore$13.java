package com.parse;

import Q;
import R;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class OfflineStore$13
  implements Q<String, R<Void>>
{
  OfflineStore$13(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase, ParseObject paramParseObject) {}
  
  public R<Void> then(R<String> paramR)
  {
    paramR = (String)paramR.e();
    if (paramR == null) {
      return R.a(new ParseException(120, "Attempted to fetch an object offline which was never saved to the offline cache."));
    }
    try
    {
      paramR = new JSONObject(paramR);
      HashMap localHashMap = new HashMap();
      new OfflineStore.13.1(this, localHashMap).setTraverseParseObjects(false).setYieldRoot(false).traverse(paramR);
      return R.a(localHashMap.values()).c(new OfflineStore.13.2(this, paramR, localHashMap));
    }
    catch (JSONException paramR) {}
    return R.a(paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */