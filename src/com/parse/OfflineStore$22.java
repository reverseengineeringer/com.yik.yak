package com.parse;

import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class OfflineStore$22
  implements Q<String, R<Void>>
{
  OfflineStore$22(OfflineStore paramOfflineStore, ArrayList paramArrayList, ParseSQLiteDatabase paramParseSQLiteDatabase) {}
  
  public R<Void> then(R<String> paramR)
  {
    paramR = (String)paramR.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = val$objectsInTree.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = (ParseObject)localIterator.next();
      localArrayList.add(OfflineStore.access$800(this$0, paramR, localParseObject, val$db));
    }
    return R.a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */