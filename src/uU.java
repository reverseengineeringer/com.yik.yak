import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;

class uu
  implements Application.ActivityLifecycleCallbacks, uh
{
  private final ug b = new ug(this);
  private final ut c;
  
  public uu(uq paramuq)
  {
    c = new ut(paramuq);
  }
  
  private void a(Activity paramActivity)
  {
    if ((b()) && (!uq.c(a).f())) {
      c.a();
    }
    while (uq.c(a).e()) {
      return;
    }
    paramActivity = (SensorManager)paramActivity.getSystemService("sensor");
    Sensor localSensor = paramActivity.getDefaultSensor(1);
    paramActivity.registerListener(b, localSensor, 3);
  }
  
  private void b(Activity paramActivity)
  {
    if ((b()) && (!uq.c(a).f())) {
      c.b();
    }
    while (uq.c(a).e()) {
      return;
    }
    ((SensorManager)paramActivity.getSystemService("sensor")).unregisterListener(b);
  }
  
  private boolean b()
  {
    if (!Build.HARDWARE.equals("goldfish")) {}
    while ((!Build.BRAND.startsWith("generic")) || (!Build.DEVICE.startsWith("generic")) || (!Build.PRODUCT.contains("sdk")) || (!Build.MODEL.toLowerCase().contains("sdk"))) {
      return false;
    }
    return true;
  }
  
  public void a()
  {
    Message localMessage = uq.a(a).obtainMessage(1);
    uq.a(a).sendMessage(localMessage);
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    uq.b(a).b(paramActivity);
    if (uq.b(a).b()) {
      b(paramActivity);
    }
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a(paramActivity);
    uq.b(a).a(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     uu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */