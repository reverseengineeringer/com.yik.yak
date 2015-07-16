package com.parse;

import M;
import N;

final class TaskQueue$2
  implements M<T, N<T>>
{
  TaskQueue$2(N paramN) {}
  
  public N<T> then(N<T> paramN)
  {
    return val$toAwait.b(new TaskQueue.2.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.TaskQueue.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */