package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class OfflineStore$22
  implements M<String, N<Void>>
{
  OfflineStore$22(OfflineStore paramOfflineStore, ArrayList paramArrayList, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public N<Void> then(N<String> paramN)
  {
    paramN = (String)paramN.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = val$objectsInTree.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = (ParseObject)localIterator.next();
      localArrayList.add(OfflineStore.access$800(this$0, paramN, localParseObject, val$db));
    }
    return N.a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */