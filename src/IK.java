import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashSet;

final class ik
{
  private final String b;
  private final il c;
  private final HashSet<ia<?>.ie> d;
  private int e;
  private boolean f;
  private IBinder g;
  private ComponentName h;
  
  public ik(ij paramij, String paramString)
  {
    b = paramString;
    c = new il(this);
    d = new HashSet();
    e = 2;
  }
  
  public void a()
  {
    Intent localIntent = new Intent(b).setPackage("com.google.android.gms");
    f = ij.b(a).bindService(localIntent, c, 129);
    if (f)
    {
      e = 3;
      return;
    }
    ij.b(a).unbindService(c);
  }
  
  public void a(ia<?>.ie paramia)
  {
    d.add(paramia);
  }
  
  public void b()
  {
    ij.b(a).unbindService(c);
    f = false;
    e = 2;
  }
  
  public void b(ia<?>.ie paramia)
  {
    d.remove(paramia);
  }
  
  public String c()
  {
    return b;
  }
  
  public boolean c(ia<?>.ie paramia)
  {
    return d.contains(paramia);
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
 * Qualified Name:     ik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */