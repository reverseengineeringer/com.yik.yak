package com.parse;

import M;
import N;
import Z;
import java.util.concurrent.Executor;

final class Parse$6
  implements M<T, Void>
{
  Parse$6(boolean paramBoolean, Z paramZ, ParseCallback paramParseCallback) {}
  
  public Void then(N<T> paramN)
  {
    if ((paramN.c()) && (!val$reportCancellation))
    {
      val$tcs.c();
      return null;
    }
    N.b.execute(new Parse.6.1(this, paramN));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */