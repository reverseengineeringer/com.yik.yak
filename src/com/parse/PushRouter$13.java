package com.parse;

import M;
import N;
import java.util.concurrent.Executor;

final class PushRouter$13
  implements M<Void, Void>
{
  public Void then(N<Void> paramN)
  {
    if (paramN.d()) {
      N.b.execute(new PushRouter.13.1(this, paramN));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */