import android.os.Bundle;
import android.os.IBinder;

public final class id
  extends ip
{
  private ia a;
  
  public id(ia paramia)
  {
    a = paramia;
  }
  
  public void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    iB.a("onPostInitComplete can be called only once per call to getServiceFromBroker", a);
    a.a(paramInt, paramIBinder, paramBundle);
    a = null;
  }
}

/* Location:
 * Qualified Name:     id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */