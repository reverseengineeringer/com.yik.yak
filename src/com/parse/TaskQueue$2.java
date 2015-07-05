package com.parse;

import Q;
import R;

final class TaskQueue$2
  implements Q<T, R<T>>
{
  TaskQueue$2(R paramR) {}
  
  public R<T> then(R<T> paramR)
  {
    return val$toAwait.b(new TaskQueue.2.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.TaskQueue.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */