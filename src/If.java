import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

public final class if
  extends ia<T>.ic<Boolean>
{
  public final int b;
  public final Bundle c;
  public final IBinder d;
  
  public if(ia paramia, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramia, Boolean.valueOf(true));
    b = paramInt;
    d = paramIBinder;
    c = paramBundle;
  }
  
  protected void a(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      ia.a(e, 1, null);
      return;
    }
    switch (b)
    {
    default: 
      if (c == null) {
        break;
      }
    }
    for (paramBoolean = (PendingIntent)c.getParcelable("pendingIntent");; paramBoolean = null)
    {
      if (ia.c(e) != null)
      {
        ij.a(ia.d(e)).b(e.a(), ia.c(e));
        ia.a(e, null);
      }
      ia.a(e, 1, null);
      ia.a(e).a(new ConnectionResult(b, paramBoolean));
      return;
      try
      {
        paramBoolean = d.getInterfaceDescriptor();
        if (e.b().equals(paramBoolean))
        {
          paramBoolean = e.a(d);
          if (paramBoolean != null)
          {
            ia.a(e, 3, paramBoolean);
            ia.a(e).a();
            return;
          }
        }
      }
      catch (RemoteException paramBoolean)
      {
        ij.a(ia.d(e)).b(e.a(), ia.c(e));
        ia.a(e, null);
        ia.a(e, 1, null);
        ia.a(e).a(new ConnectionResult(8, null));
        return;
      }
      ia.a(e, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
  }
}

/* Location:
 * Qualified Name:     if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */