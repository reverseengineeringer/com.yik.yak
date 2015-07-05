import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class ie
  extends Handler
{
  public ie(id paramid, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((what == 1) && (!a.c()))
    {
      ((if)obj).b();
      return;
    }
    if (what == 3)
    {
      id.a(a).a(new ConnectionResult(((Integer)obj).intValue(), null));
      return;
    }
    if (what == 4)
    {
      id.a(a, 4, null);
      id.a(a).a(((Integer)obj).intValue());
      id.a(a, 4, 1, null);
      return;
    }
    if ((what == 2) && (!a.isConnected()))
    {
      ((if)obj).b();
      return;
    }
    if ((what == 2) || (what == 1))
    {
      ((if)obj).a();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */