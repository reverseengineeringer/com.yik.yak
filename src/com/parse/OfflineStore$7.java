package com.parse;

import Q;
import R;
import java.util.Iterator;
import java.util.List;

class OfflineStore$7
  implements Q<Void, R<List<T>>>
{
  OfflineStore$7(OfflineStore paramOfflineStore, OfflineQueryLogic paramOfflineQueryLogic, List paramList, ParseQuery paramParseQuery, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<List<T>> then(R<Void> paramR)
  {
    val$queryLogic.sort(val$results, val$query);
    Object localObject = val$results;
    int i = val$query.getSkip();
    paramR = (R<Void>)localObject;
    if (!val$isCount)
    {
      paramR = (R<Void>)localObject;
      if (i >= 0) {
        paramR = ((List)localObject).subList(Math.min(val$query.getSkip(), ((List)localObject).size()), ((List)localObject).size());
      }
    }
    i = val$query.getLimit();
    if ((!val$isCount) && (i >= 0) && (paramR.size() > i)) {
      paramR = paramR.subList(0, i);
    }
    for (;;)
    {
      localObject = R.a(null);
      Iterator localIterator = paramR.iterator();
      while (localIterator.hasNext()) {
        localObject = ((R)localObject).d(new OfflineStore.7.1(this, (ParseObject)localIterator.next()));
      }
      return ((R)localObject).c(new OfflineStore.7.2(this, paramR));
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */