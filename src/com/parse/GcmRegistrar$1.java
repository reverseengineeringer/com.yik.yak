package com.parse;

import java.util.concurrent.Callable;

final class GcmRegistrar$1
  implements Callable<Void>
{
  public Void call()
  {
    GcmRegistrar.getInstance().update();
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.GcmRegistrar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */