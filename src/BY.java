import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.concurrent.ScheduledExecutorService;

@TargetApi(14)
class by
  extends bE
{
  private final Application c;
  private final Application.ActivityLifecycleCallbacks d = new bz(this);
  
  by(bI parambI, bK parambK, Application paramApplication)
  {
    super(parambI, parambK);
    c = paramApplication;
    Hw.a(bw.b().C(), "Registering activity lifecycle callbacks for session analytics.");
    paramApplication.registerActivityLifecycleCallbacks(d);
  }
  
  public static by a(Application paramApplication, bI parambI, bD parambD, Ja paramJa)
  {
    ScheduledExecutorService localScheduledExecutorService = HE.b("Crashlytics Trace Manager");
    return new by(parambI, new bK(paramApplication, new bC(paramApplication, localScheduledExecutorService, parambD, paramJa), parambD, localScheduledExecutorService), paramApplication);
  }
  
  public void a()
  {
    Hw.a(bw.b().C(), "Unregistering activity lifecycle callbacks for session analytics");
    c.unregisterActivityLifecycleCallbacks(d);
    super.a();
  }
}

/* Location:
 * Qualified Name:     by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */