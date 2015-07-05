import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class fa
  implements Handler.Callback
{
  fa(eY parameY) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (eY.f().equals(obj)))
    {
      fo.a().a(true);
      a.c();
      fo.a().a(false);
      if ((eY.b(a) > 0) && (!eY.c(a))) {
        eY.d(a).sendMessageDelayed(eY.d(a).obtainMessage(1, eY.f()), eY.b(a) * 1000);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */