package com.parse;

import M;
import N;
import java.util.Map;
import org.json.JSONObject;

class OfflineQueryLogic$20
  implements M<Void, N<Object>>
{
  OfflineQueryLogic$20(OfflineQueryLogic paramOfflineQueryLogic, Object paramObject, ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString) {}
  
  public N<Object> then(N<Void> paramN)
  {
    if ((val$container instanceof ParseObject)) {
      return OfflineQueryLogic.access$600(this$0, val$container, null, val$db).c(new OfflineQueryLogic.20.1(this));
    }
    if ((val$container instanceof Map)) {
      return N.a(((Map)val$container).get(val$key));
    }
    if ((val$container instanceof JSONObject)) {
      return N.a(((JSONObject)val$container).opt(val$key));
    }
    return N.a(new IllegalStateException("include is invalid"));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */