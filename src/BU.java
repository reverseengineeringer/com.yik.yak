import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.concurrent.ScheduledExecutorService;

@TargetApi(14)
class bu
  extends bA
{
  private final Application c;
  private final Application.ActivityLifecycleCallbacks d = new bv(this);
  
  bu(bE parambE, bG parambG, Application paramApplication)
  {
    super(parambE, parambG);
    c = paramApplication;
    Ie.a(bs.b().C(), "Registering activity lifecycle callbacks for session analytics.");
    paramApplication.registerActivityLifecycleCallbacks(d);
  }
  
  public static bu a(Application paramApplication, bE parambE, bz parambz, JI paramJI)
  {
    ScheduledExecutorService localScheduledExecutorService = Im.b("Crashlytics Trace Manager");
    return new bu(parambE, new bG(paramApplication, new by(paramApplication, localScheduledExecutorService, parambz, paramJI), parambz, localScheduledExecutorService), paramApplication);
  }
  
  public void a()
  {
    Ie.a(bs.b().C(), "Unregistering activity lifecycle callbacks for session analytics");
    c.unregisterActivityLifecycleCallbacks(d);
    super.a();
  }
}

/* Location:
 * Qualified Name:     bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */