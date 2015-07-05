package com.parse;

import Q;
import R;
import java.util.List;

final class ParseObject$2
  implements Q<Void, R<T>>
{
  ParseObject$2(List paramList, R paramR) {}
  
  public R<T> then(R<Void> paramR)
  {
    val$childTasks.add(paramR);
    return val$fullTask;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */