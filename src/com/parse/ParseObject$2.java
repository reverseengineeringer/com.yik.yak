package com.parse;

import M;
import N;
import java.util.List;

final class ParseObject$2
  implements M<Void, N<T>>
{
  ParseObject$2(List paramList, N paramN) {}
  
  public N<T> then(N<Void> paramN)
  {
    val$childTasks.add(paramN);
    return val$fullTask;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */