package com.google.android.gms.common.api;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Api<O extends Api.ApiOptions>
{
  private final Api.b<?, O> Jm;
  private final Api.c<?> Jn;
  private final ArrayList<Scope> Jo;
  
  public <C extends Api.a> Api(Api.b<C, O> paramb, Api.c<C> paramc, Scope... paramVarArgs)
  {
    Jm = paramb;
    Jn = paramc;
    Jo = new ArrayList(Arrays.asList(paramVarArgs));
  }
  
  public Api.b<?, O> gx()
  {
    return Jm;
  }
  
  public List<Scope> gy()
  {
    return Jo;
  }
  
  public Api.c<?> gz()
  {
    return Jn;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */