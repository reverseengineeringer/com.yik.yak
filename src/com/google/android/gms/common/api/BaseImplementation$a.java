package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.RemoteException;
import iB;

public abstract class BaseImplementation$a<R extends Result, A extends Api.a>
  extends BaseImplementation.AbstractPendingResult<R>
  implements c.d<A>
{
  private final Api.c<A> Jn;
  private final GoogleApiClient Jx;
  private c.b Jy;
  
  public BaseImplementation$a(Api.c<A> paramc, GoogleApiClient paramGoogleApiClient)
  {
    super(paramGoogleApiClient.getLooper());
    Jn = ((Api.c)iB.a(paramc));
    Jx = paramGoogleApiClient;
  }
  
  private void a(RemoteException paramRemoteException)
  {
    l(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public abstract void a(A paramA);
  
  public void a(c.b paramb)
  {
    Jy = paramb;
  }
  
  public final void b(A paramA)
  {
    try
    {
      a(paramA);
      return;
    }
    catch (DeadObjectException paramA)
    {
      a(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      a(paramA);
    }
  }
  
  protected void gB()
  {
    super.gB();
    if (Jy != null)
    {
      Jy.b(this);
      Jy = null;
    }
  }
  
  public final a gE()
  {
    iB.a(Jx, "GoogleApiClient was not set.");
    Jx.b(this);
    return this;
  }
  
  public int gF()
  {
    return 0;
  }
  
  public final Api.c<A> gz()
  {
    return Jn;
  }
  
  public final void l(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {}
    for (boolean bool = true;; bool = false)
    {
      iB.b(bool, "Failed result must not be success");
      b(c(paramStatus));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BaseImplementation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */