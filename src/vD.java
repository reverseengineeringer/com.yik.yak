import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class vd
  extends va
{
  boolean b = false;
  private ArrayList<va> c = new ArrayList();
  private HashMap<va, vj> d = new HashMap();
  private ArrayList<vj> e = new ArrayList();
  private ArrayList<vj> f = new ArrayList();
  private boolean g = true;
  private vf h = null;
  private boolean i = false;
  private long j = 0L;
  private vK k = null;
  private long l = -1L;
  
  private void e()
  {
    Object localObject1;
    int n;
    int m;
    Object localObject2;
    int i1;
    int i2;
    if (g)
    {
      f.clear();
      localObject1 = new ArrayList();
      n = e.size();
      m = 0;
      while (m < n)
      {
        localObject2 = (vj)e.get(m);
        if ((b == null) || (b.size() == 0)) {
          ((ArrayList)localObject1).add(localObject2);
        }
        m += 1;
      }
      localObject2 = new ArrayList();
      while (((ArrayList)localObject1).size() > 0)
      {
        i1 = ((ArrayList)localObject1).size();
        m = 0;
        while (m < i1)
        {
          vj localvj1 = (vj)((ArrayList)localObject1).get(m);
          f.add(localvj1);
          if (e != null)
          {
            i2 = e.size();
            n = 0;
            while (n < i2)
            {
              vj localvj2 = (vj)e.get(n);
              d.remove(localvj1);
              if (d.size() == 0) {
                ((ArrayList)localObject2).add(localvj2);
              }
              n += 1;
            }
          }
          m += 1;
        }
        ((ArrayList)localObject1).clear();
        ((ArrayList)localObject1).addAll((Collection)localObject2);
        ((ArrayList)localObject2).clear();
      }
      g = false;
      if (f.size() != e.size()) {
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
      }
    }
    else
    {
      i1 = e.size();
      m = 0;
      while (m < i1)
      {
        localObject1 = (vj)e.get(m);
        if ((b != null) && (b.size() > 0))
        {
          i2 = b.size();
          n = 0;
          while (n < i2)
          {
            localObject2 = (vh)b.get(n);
            if (d == null) {
              d = new ArrayList();
            }
            if (!d.contains(a)) {
              d.add(a);
            }
            n += 1;
          }
        }
        f = false;
        m += 1;
      }
    }
  }
  
  public vg a(va paramva)
  {
    if (paramva != null)
    {
      g = true;
      return new vg(this, paramva);
    }
    return null;
  }
  
  public void a()
  {
    int i1 = 0;
    b = false;
    i = true;
    e();
    int i2 = f.size();
    int m = 0;
    Object localObject2;
    Object localObject3;
    while (m < i2)
    {
      localObject1 = (vj)f.get(m);
      localObject2 = a.b();
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        localObject2 = new ArrayList((Collection)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (vb)((Iterator)localObject2).next();
          if (((localObject3 instanceof vi)) || ((localObject3 instanceof vf))) {
            a.b((vb)localObject3);
          }
        }
      }
      m += 1;
    }
    Object localObject1 = new ArrayList();
    m = 0;
    int n;
    if (m < i2)
    {
      localObject2 = (vj)f.get(m);
      if (h == null) {
        h = new vf(this, this);
      }
      if ((b == null) || (b.size() == 0)) {
        ((ArrayList)localObject1).add(localObject2);
      }
      for (;;)
      {
        a.a(h);
        m += 1;
        break;
        int i3 = b.size();
        n = 0;
        while (n < i3)
        {
          localObject3 = (vh)b.get(n);
          a.a.a(new vi(this, (vj)localObject2, b));
          n += 1;
        }
        c = ((ArrayList)b.clone());
      }
    }
    if (j <= 0L)
    {
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (vj)((Iterator)localObject1).next();
        a.a();
        c.add(a);
      }
    }
    k = vK.b(new float[] { 0.0F, 1.0F });
    k.c(j);
    k.a(new ve(this, (ArrayList)localObject1));
    k.a();
    if (a != null)
    {
      localObject1 = (ArrayList)a.clone();
      n = ((ArrayList)localObject1).size();
      m = 0;
      while (m < n)
      {
        ((vb)((ArrayList)localObject1).get(m)).a(this);
        m += 1;
      }
    }
    if ((e.size() == 0) && (j == 0L))
    {
      i = false;
      if (a != null)
      {
        localObject1 = (ArrayList)a.clone();
        n = ((ArrayList)localObject1).size();
        m = i1;
        while (m < n)
        {
          ((vb)((ArrayList)localObject1).get(m)).b(this);
          m += 1;
        }
      }
    }
  }
  
  public void a(Interpolator paramInterpolator)
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      nexta.a(paramInterpolator);
    }
  }
  
  public void a(va... paramVarArgs)
  {
    int m = 1;
    if (paramVarArgs != null)
    {
      g = true;
      vg localvg = a(paramVarArgs[0]);
      while (m < paramVarArgs.length)
      {
        localvg.a(paramVarArgs[m]);
        m += 1;
      }
    }
  }
  
  public void b(long paramLong)
  {
    j = paramLong;
  }
  
  public vd c(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("duration must be a value of zero or greater");
    }
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      nexta.a(paramLong);
    }
    l = paramLong;
    return this;
  }
  
  public vd d()
  {
    vd localvd = (vd)super.c();
    g = true;
    b = false;
    i = false;
    c = new ArrayList();
    d = new HashMap();
    e = new ArrayList();
    f = new ArrayList();
    HashMap localHashMap = new HashMap();
    Object localObject3 = e.iterator();
    Object localObject2;
    Object localObject4;
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = (vj)((Iterator)localObject3).next();
      localObject2 = ((vj)localObject1).a();
      localHashMap.put(localObject1, localObject2);
      e.add(localObject2);
      d.put(a, localObject2);
      b = null;
      c = null;
      e = null;
      d = null;
      localObject4 = a.b();
      if (localObject4 != null)
      {
        Iterator localIterator = ((ArrayList)localObject4).iterator();
        localObject1 = null;
        while (localIterator.hasNext())
        {
          vb localvb = (vb)localIterator.next();
          if ((localvb instanceof vf))
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localvb);
            localObject1 = localObject2;
          }
        }
        if (localObject1 != null)
        {
          localObject1 = ((ArrayList)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((ArrayList)localObject4).remove((vb)((Iterator)localObject1).next());
          }
        }
      }
    }
    Object localObject1 = e.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (vj)((Iterator)localObject1).next();
      localObject2 = (vj)localHashMap.get(localObject3);
      if (b != null)
      {
        localObject3 = b.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (vh)((Iterator)localObject3).next();
          ((vj)localObject2).a(new vh((vj)localHashMap.get(a), b));
        }
      }
    }
    return localvd;
  }
}

/* Location:
 * Qualified Name:     vd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */