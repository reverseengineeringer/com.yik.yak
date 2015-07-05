import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;

final class ik
  extends Handler
{
  public ik(ij paramij, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      synchronized (ij.a(a))
      {
        if ((ij.b(a).gN()) && (ij.b(a).isConnected()) && (ij.a(a).contains(obj)))
        {
          Bundle localBundle = ij.b(a).fX();
          ((GoogleApiClient.ConnectionCallbacks)obj).onConnected(localBundle);
        }
        return;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     ik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */