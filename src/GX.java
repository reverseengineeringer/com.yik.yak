import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public class gx
  implements gO
{
  private static gx e;
  private static Object f = new Object();
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  
  protected gx() {}
  
  private gx(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    c = paramContext.getPackageName();
    d = localPackageManager.getInstallerPackageName(c);
    String str = c;
    localObject2 = null;
    localObject1 = str;
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      paramContext = (Context)localObject2;
      localObject1 = str;
      if (localPackageInfo != null)
      {
        localObject1 = str;
        paramContext = localPackageManager.getApplicationLabel(applicationInfo).toString();
        localObject1 = paramContext;
        str = versionName;
        localObject1 = paramContext;
        paramContext = str;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        gc.a("Error retrieving package info: appName set to " + (String)localObject1);
        paramContext = (Context)localObject2;
      }
    }
    a = ((String)localObject1);
    b = paramContext;
  }
  
  public static gx a()
  {
    return e;
  }
  
  public static void a(Context paramContext)
  {
    synchronized (f)
    {
      if (e == null) {
        e = new gx(paramContext);
      }
      return;
    }
  }
  
  public String a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return a;
      }
      if (paramString.equals("&av")) {
        return b;
      }
      if (paramString.equals("&aid")) {
        return c;
      }
    } while (!paramString.equals("&aiid"));
    return d;
  }
  
  public boolean b(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
}

/* Location:
 * Qualified Name:     gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */