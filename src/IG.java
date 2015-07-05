import android.os.Bundle;
import android.os.IBinder;

public final class ig
  extends is
{
  private id a;
  
  public ig(id paramid)
  {
    a = paramid;
  }
  
  public void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    iE.a("onPostInitComplete can be called only once per call to getServiceFromBroker", a);
    a.a(paramInt, paramIBinder, paramBundle);
    a = null;
  }
}

/* Location:
 * Qualified Name:     ig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */