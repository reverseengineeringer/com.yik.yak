import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

public final class ii
  extends id<T>.if<Boolean>
{
  public final int b;
  public final Bundle c;
  public final IBinder d;
  
  public ii(id paramid, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramid, Boolean.valueOf(true));
    b = paramInt;
    d = paramIBinder;
    c = paramBundle;
  }
  
  protected void a(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      id.a(e, 1, null);
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
      if (id.c(e) != null)
      {
        im.a(id.d(e)).b(e.a(), id.c(e));
        id.a(e, null);
      }
      id.a(e, 1, null);
      id.a(e).a(new ConnectionResult(b, paramBoolean));
      return;
      try
      {
        paramBoolean = d.getInterfaceDescriptor();
        if (e.b().equals(paramBoolean))
        {
          paramBoolean = e.a(d);
          if (paramBoolean != null)
          {
            id.a(e, 3, paramBoolean);
            id.a(e).a();
            return;
          }
        }
      }
      catch (RemoteException paramBoolean)
      {
        im.a(id.d(e)).b(e.a(), id.c(e));
        id.a(e, null);
        id.a(e, 1, null);
        id.a(e).a(new ConnectionResult(8, null));
        return;
      }
      id.a(e, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
  }
}

/* Location:
 * Qualified Name:     ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */