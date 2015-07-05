final class zz
  implements Kk
{
  private boolean c;
  private boolean d;
  
  static
  {
    if (!zx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  zz(zx paramzx) {}
  
  public void a()
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    synchronized (b)
    {
      zx.h(b);
      zx.a(b).d();
      return;
    }
  }
  
  public void a_(JP paramJP, long paramLong)
  {
    long l = paramLong;
    if (!a)
    {
      l = paramLong;
      if (Thread.holdsLock(b)) {
        throw new AssertionError();
      }
    }
    zx localzx1;
    try
    {
      zx.g(b).b();
      zx.h(b);
      paramLong = Math.min(b.b, l);
      zx localzx2 = b;
      b -= paramLong;
      l -= paramLong;
      zx.a(b).a(zx.b(b), false, paramJP, paramLong);
      if (l > 0L)
      {
        localzx1 = b;
        zx.g(b).c();
      }
    }
    finally
    {
      try
      {
        for (;;)
        {
          if ((b.b <= 0L) && (!d) && (!c) && (zx.d(b) == null)) {
            zx.e(b);
          }
        }
      }
      finally
      {
        zx.g(b).b();
      }
    }
  }
  
  public Km b()
  {
    return zx.g(b);
  }
  
  public void close()
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    synchronized (b)
    {
      if (c) {
        return;
      }
      if (!b.c.d) {
        zx.a(b).a(zx.b(b), true, null, 0L);
      }
    }
    synchronized (b)
    {
      c = true;
      zx.a(b).d();
      zx.f(b);
      return;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
  }
}

/* Location:
 * Qualified Name:     zz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */