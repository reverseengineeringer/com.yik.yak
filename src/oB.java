import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class ob
{
  private static ob g;
  private final og a;
  private final Context b;
  private final nT c;
  private final oQ d;
  private final ConcurrentMap<pc, Boolean> e;
  private final pf f;
  
  ob(Context paramContext, og paramog, nT paramnT, oQ paramoQ)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    b = paramContext.getApplicationContext();
    d = paramoQ;
    a = paramog;
    e = new ConcurrentHashMap();
    c = paramnT;
    c.a(new oc(this));
    c.a(new oW(b));
    f = new pf();
    b();
  }
  
  public static ob a(Context paramContext)
  {
    try
    {
      if (g != null) {
        break label68;
      }
      if (paramContext == null)
      {
        op.a("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    g = new ob(paramContext, new od(), new nT(new ph(paramContext)), oR.b());
    label68:
    paramContext = g;
    return paramContext;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = e.keySet().iterator();
    while (localIterator.hasNext()) {
      ((pc)localIterator.next()).a(paramString);
    }
  }
  
  private void b()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      b.registerComponentCallbacks(new oe(this));
    }
  }
  
  public void a()
  {
    d.a();
  }
  
  public boolean a(Uri paramUri)
  {
    for (;;)
    {
      boolean bool;
      Object localObject2;
      try
      {
        localObject1 = oA.a();
        if (!((oA)localObject1).a(paramUri)) {
          break label229;
        }
        paramUri = ((oA)localObject1).d();
        int i = of.a[localObject1.b().ordinal()];
        switch (i)
        {
        default: 
          bool = true;
          return bool;
        }
      }
      finally {}
      Object localObject1 = e.keySet().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (pc)((Iterator)localObject1).next();
        if (((pc)localObject2).b().equals(paramUri))
        {
          ((pc)localObject2).b(null);
          ((pc)localObject2).a();
        }
      }
      else
      {
        continue;
        localObject2 = e.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          pc localpc = (pc)((Iterator)localObject2).next();
          if (localpc.b().equals(paramUri))
          {
            localpc.b(((oA)localObject1).c());
            localpc.a();
          }
          else if (localpc.c() != null)
          {
            localpc.b(null);
            localpc.a();
          }
        }
        continue;
        label229:
        bool = false;
      }
    }
  }
  
  boolean a(pc parampc)
  {
    return e.remove(parampc) != null;
  }
}

/* Location:
 * Qualified Name:     ob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */