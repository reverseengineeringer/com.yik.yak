package com.parse;

import Q;
import R;
import java.util.Map;
import org.json.JSONObject;

class OfflineQueryLogic$20
  implements Q<Void, R<Object>>
{
  OfflineQueryLogic$20(OfflineQueryLogic paramOfflineQueryLogic, Object paramObject, ParseSQLiteDatabase paramParseSQLiteDatabase, String paramString) {}
  
  public R<Object> then(R<Void> paramR)
  {
    if ((val$container instanceof ParseObject)) {
      return OfflineQueryLogic.access$600(this$0, val$container, null, val$db).c(new OfflineQueryLogic.20.1(this));
    }
    if ((val$container instanceof Map)) {
      return R.a(((Map)val$container).get(val$key));
    }
    if ((val$container instanceof JSONObject)) {
      return R.a(((JSONObject)val$container).opt(val$key));
    }
    return R.a(new IllegalStateException("include is invalid"));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */