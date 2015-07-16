import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

public final class ij
  implements Handler.Callback
{
  private static final Object a = new Object();
  private static ij b;
  private final Context c;
  private final HashMap<String, ik> d = new HashMap();
  private final Handler e = new Handler(paramContext.getMainLooper(), this);
  
  private ij(Context paramContext)
  {
    c = paramContext.getApplicationContext();
  }
  
  public static ij a(Context paramContext)
  {
    synchronized (a)
    {
      if (b == null) {
        b = new ij(paramContext.getApplicationContext());
      }
      return b;
    }
  }
  
  public boolean a(String paramString, ia<?>.ie paramia)
  {
    for (;;)
    {
      ik localik;
      synchronized (d)
      {
        localik = (ik)d.get(paramString);
        if (localik == null)
        {
          localik = new ik(this, paramString);
          localik.a(paramia);
          localik.a();
          d.put(paramString, localik);
          paramString = localik;
          boolean bool = paramString.d();
          return bool;
        }
        e.removeMessages(0, localik);
        if (localik.c(paramia)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + paramString);
        }
      }
      localik.a(paramia);
      switch (localik.e())
      {
      case 1: 
        paramia.onServiceConnected(localik.h(), localik.g());
        paramString = localik;
        break;
      case 2: 
        localik.a();
        paramString = localik;
        break;
      default: 
        paramString = localik;
      }
    }
  }
  
  public void b(String paramString, ia<?>.ie paramia)
  {
    ik localik;
    synchronized (d)
    {
      localik = (ik)d.get(paramString);
      if (localik == null) {
        throw new IllegalStateException("Nonexistent connection status for service action: " + paramString);
      }
    }
    if (!localik.c(paramia)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + paramString);
    }
    localik.b(paramia);
    if (localik.f())
    {
      paramString = e.obtainMessage(0, localik);
      e.sendMessageDelayed(paramString, 5000L);
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    ik localik = (ik)obj;
    synchronized (d)
    {
      if (localik.f())
      {
        localik.b();
        d.remove(localik.c());
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */