import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashSet;

final class in
{
  private final String b;
  private final io c;
  private final HashSet<id<?>.ih> d;
  private int e;
  private boolean f;
  private IBinder g;
  private ComponentName h;
  
  public in(im paramim, String paramString)
  {
    b = paramString;
    c = new io(this);
    d = new HashSet();
    e = 2;
  }
  
  public void a()
  {
    Intent localIntent = new Intent(b).setPackage("com.google.android.gms");
    f = im.b(a).bindService(localIntent, c, 129);
    if (f)
    {
      e = 3;
      return;
    }
    im.b(a).unbindService(c);
  }
  
  public void a(id<?>.ih paramid)
  {
    d.add(paramid);
  }
  
  public void b()
  {
    im.b(a).unbindService(c);
    f = false;
    e = 2;
  }
  
  public void b(id<?>.ih paramid)
  {
    d.remove(paramid);
  }
  
  public String c()
  {
    return b;
  }
  
  public boolean c(id<?>.ih paramid)
  {
    return d.contains(paramid);
  }
  
  public boolean d()
  {
    return f;
  }
  
  public int e()
  {
    return e;
  }
  
  public boolean f()
  {
    return d.isEmpty();
  }
  
  public IBinder g()
  {
    return g;
  }
  
  public ComponentName h()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     in
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */