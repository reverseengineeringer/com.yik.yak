package com.google.android.gms.common.api;

public class BaseImplementation
{
  static void a(Result paramResult)
  {
    if ((paramResult instanceof Releasable)) {}
    try
    {
      ((Releasable)paramResult).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder().append("Unable to release ").append(paramResult).toString();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BaseImplementation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */