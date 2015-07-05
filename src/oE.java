import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

class oe
  implements ComponentCallbacks2
{
  oe(ob paramob) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt)
  {
    if (paramInt == 20) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     oe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */