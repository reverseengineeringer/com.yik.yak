package com.parse;

import M;
import N;
import java.util.Iterator;
import java.util.List;

class OfflineStore$7
  implements M<Void, N<List<T>>>
{
  OfflineStore$7(OfflineStore paramOfflineStore, OfflineQueryLogic paramOfflineQueryLogic, List paramList, ParseQuery paramParseQuery, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<List<T>> then(N<Void> paramN)
  {
    val$queryLogic.sort(val$results, val$query);
    Object localObject = val$results;
    int i = val$query.getSkip();
    paramN = (N<Void>)localObject;
    if (!val$isCount)
    {
      paramN = (N<Void>)localObject;
      if (i >= 0) {
        paramN = ((List)localObject).subList(Math.min(val$query.getSkip(), ((List)localObject).size()), ((List)localObject).size());
      }
    }
    i = val$query.getLimit();
    if ((!val$isCount) && (i >= 0) && (paramN.size() > i)) {
      paramN = paramN.subList(0, i);
    }
    for (;;)
    {
      localObject = N.a(null);
      Iterator localIterator = paramN.iterator();
      while (localIterator.hasNext()) {
        localObject = ((N)localObject).d(new OfflineStore.7.1(this, (ParseObject)localIterator.next()));
      }
      return ((N)localObject).c(new OfflineStore.7.2(this, paramN));
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */