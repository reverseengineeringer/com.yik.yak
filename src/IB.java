import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class ib
  extends Handler
{
  public ib(ia paramia, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((what == 1) && (!a.c()))
    {
      ((ic)obj).b();
      return;
    }
    if (what == 3)
    {
      ia.a(a).a(new ConnectionResult(((Integer)obj).intValue(), null));
      return;
    }
    if (what == 4)
    {
      ia.a(a, 4, null);
      ia.a(a).a(((Integer)obj).intValue());
      ia.a(a, 4, 1, null);
      return;
    }
    if ((what == 2) && (!a.isConnected()))
    {
      ((ic)obj).b();
      return;
    }
    if ((what == 2) || (what == 1))
    {
      ((ic)obj).a();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     ib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */