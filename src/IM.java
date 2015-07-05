import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

public final class im
  implements Handler.Callback
{
  private static final Object a = new Object();
  private static im b;
  private final Context c;
  private final HashMap<String, in> d = new HashMap();
  private final Handler e = new Handler(paramContext.getMainLooper(), this);
  
  private im(Context paramContext)
  {
    c = paramContext.getApplicationContext();
  }
  
  public static im a(Context paramContext)
  {
    synchronized (a)
    {
      if (b == null) {
        b = new im(paramContext.getApplicationContext());
      }
      return b;
    }
  }
  
  public boolean a(String paramString, id<?>.ih paramid)
  {
    for (;;)
    {
      in localin;
      synchronized (d)
      {
        localin = (in)d.get(paramString);
        if (localin == null)
        {
          localin = new in(this, paramString);
          localin.a(paramid);
          localin.a();
          d.put(paramString, localin);
          paramString = localin;
          boolean bool = paramString.d();
          return bool;
        }
        e.removeMessages(0, localin);
        if (localin.c(paramid)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + paramString);
        }
      }
      localin.a(paramid);
      switch (localin.e())
      {
      case 1: 
        paramid.onServiceConnected(localin.h(), localin.g());
        paramString = localin;
        break;
      case 2: 
        localin.a();
        paramString = localin;
        break;
      default: 
        paramString = localin;
      }
    }
  }
  
  public void b(String paramString, id<?>.ih paramid)
  {
    in localin;
    synchronized (d)
    {
      localin = (in)d.get(paramString);
      if (localin == null) {
        throw new IllegalStateException("Nonexistent connection status for service action: " + paramString);
      }
    }
    if (!localin.c(paramid)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + paramString);
    }
    localin.b(paramid);
    if (localin.f())
    {
      paramString = e.obtainMessage(0, localin);
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
    in localin = (in)obj;
    synchronized (d)
    {
      if (localin.f())
      {
        localin.b();
        d.remove(localin.c());
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */