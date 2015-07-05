package com.parse;

import Q;
import R;
import java.util.concurrent.Executor;

final class PushRouter$13
  implements Q<Void, Void>
{
  public Void then(R<Void> paramR)
  {
    if (paramR.d()) {
      R.b.execute(new PushRouter.13.1(this, paramR));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */