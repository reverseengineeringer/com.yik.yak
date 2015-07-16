import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class oe
{
  private static oe g;
  private final oj a;
  private final Context b;
  private final nW c;
  private final oT d;
  private final ConcurrentMap<pf, Boolean> e;
  private final pi f;
  
  oe(Context paramContext, oj paramoj, nW paramnW, oT paramoT)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    b = paramContext.getApplicationContext();
    d = paramoT;
    a = paramoj;
    e = new ConcurrentHashMap();
    c = paramnW;
    c.a(new of(this));
    c.a(new oZ(b));
    f = new pi();
    b();
  }
  
  public static oe a(Context paramContext)
  {
    try
    {
      if (g != null) {
        break label68;
      }
      if (paramContext == null)
      {
        os.a("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    g = new oe(paramContext, new og(), new nW(new pk(paramContext)), oU.b());
    label68:
    paramContext = g;
    return paramContext;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = e.keySet().iterator();
    while (localIterator.hasNext()) {
      ((pf)localIterator.next()).a(paramString);
    }
  }
  
  private void b()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      b.registerComponentCallbacks(new oh(this));
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
        localObject1 = oD.a();
        if (!((oD)localObject1).a(paramUri)) {
          break label229;
        }
        paramUri = ((oD)localObject1).d();
        int i = oi.a[localObject1.b().ordinal()];
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
        localObject2 = (pf)((Iterator)localObject1).next();
        if (((pf)localObject2).b().equals(paramUri))
        {
          ((pf)localObject2).b(null);
          ((pf)localObject2).a();
        }
      }
      else
      {
        continue;
        localObject2 = e.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          pf localpf = (pf)((Iterator)localObject2).next();
          if (localpf.b().equals(paramUri))
          {
            localpf.b(((oD)localObject1).c());
            localpf.a();
          }
          else if (localpf.c() != null)
          {
            localpf.b(null);
            localpf.a();
          }
        }
        continue;
        label229:
        bool = false;
      }
    }
  }
  
  boolean a(pf parampf)
  {
    return e.remove(parampf) != null;
  }
}

/* Location:
 * Qualified Name:     oe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */