import android.os.RemoteException;

public final class kE
{
  private final lj a;
  
  kE(lj paramlj)
  {
    a = paramlj;
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      a.a(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mI(localRemoteException);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    try
    {
      a.h(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mI(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     kE
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */