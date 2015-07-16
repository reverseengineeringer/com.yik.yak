import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class vm
  extends vj
{
  boolean b = false;
  private ArrayList<vj> c = new ArrayList();
  private HashMap<vj, vs> d = new HashMap();
  private ArrayList<vs> e = new ArrayList();
  private ArrayList<vs> f = new ArrayList();
  private boolean g = true;
  private vo h = null;
  private boolean i = false;
  private long j = 0L;
  private vT k = null;
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
        localObject2 = (vs)e.get(m);
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
          vs localvs1 = (vs)((ArrayList)localObject1).get(m);
          f.add(localvs1);
          if (e != null)
          {
            i2 = e.size();
            n = 0;
            while (n < i2)
            {
              vs localvs2 = (vs)e.get(n);
              d.remove(localvs1);
              if (d.size() == 0) {
                ((ArrayList)localObject2).add(localvs2);
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
        localObject1 = (vs)e.get(m);
        if ((b != null) && (b.size() > 0))
        {
          i2 = b.size();
          n = 0;
          while (n < i2)
          {
            localObject2 = (vq)b.get(n);
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
  
  public vp a(vj paramvj)
  {
    if (paramvj != null)
    {
      g = true;
      return new vp(this, paramvj);
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
      localObject1 = (vs)f.get(m);
      localObject2 = a.b();
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        localObject2 = new ArrayList((Collection)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (vk)((Iterator)localObject2).next();
          if (((localObject3 instanceof vr)) || ((localObject3 instanceof vo))) {
            a.b((vk)localObject3);
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
      localObject2 = (vs)f.get(m);
      if (h == null) {
        h = new vo(this, this);
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
          localObject3 = (vq)b.get(n);
          a.a.a(new vr(this, (vs)localObject2, b));
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
        localObject2 = (vs)((Iterator)localObject1).next();
        a.a();
        c.add(a);
      }
    }
    k = vT.b(new float[] { 0.0F, 1.0F });
    k.c(j);
    k.a(new vn(this, (ArrayList)localObject1));
    k.a();
    if (a != null)
    {
      localObject1 = (ArrayList)a.clone();
      n = ((ArrayList)localObject1).size();
      m = 0;
      while (m < n)
      {
        ((vk)((ArrayList)localObject1).get(m)).a(this);
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
          ((vk)((ArrayList)localObject1).get(m)).b(this);
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
  
  public void a(vj... paramVarArgs)
  {
    int m = 1;
    if (paramVarArgs != null)
    {
      g = true;
      vp localvp = a(paramVarArgs[0]);
      while (m < paramVarArgs.length)
      {
        localvp.a(paramVarArgs[m]);
        m += 1;
      }
    }
  }
  
  public void b(long paramLong)
  {
    j = paramLong;
  }
  
  public vm c(long paramLong)
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
  
  public vm d()
  {
    vm localvm = (vm)super.c();
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
      localObject1 = (vs)((Iterator)localObject3).next();
      localObject2 = ((vs)localObject1).a();
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
          vk localvk = (vk)localIterator.next();
          if ((localvk instanceof vo))
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localvk);
            localObject1 = localObject2;
          }
        }
        if (localObject1 != null)
        {
          localObject1 = ((ArrayList)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((ArrayList)localObject4).remove((vk)((Iterator)localObject1).next());
          }
        }
      }
    }
    Object localObject1 = e.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (vs)((Iterator)localObject1).next();
      localObject2 = (vs)localHashMap.get(localObject3);
      if (b != null)
      {
        localObject3 = b.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (vq)((Iterator)localObject3).next();
          ((vs)localObject2).a(new vq((vs)localHashMap.get(a), b));
        }
      }
    }
    return localvm;
  }
}

/* Location:
 * Qualified Name:     vm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */