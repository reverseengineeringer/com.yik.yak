package com.parse;

import Q;
import R;
import ad;
import java.util.concurrent.Executor;

final class Parse$6
  implements Q<T, Void>
{
  Parse$6(boolean paramBoolean, ad paramad, ParseCallback paramParseCallback) {}
  
  public Void then(R<T> paramR)
  {
    if ((paramR.c()) && (!val$reportCancellation))
    {
      val$tcs.c();
      return null;
    }
    R.b.execute(new Parse.6.1(this, paramR));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */