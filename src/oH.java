import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

class oh
  implements ComponentCallbacks2
{
  oh(oe paramoe) {}
  
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
 * Qualified Name:     oh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */