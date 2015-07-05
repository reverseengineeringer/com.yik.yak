import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

public final class zx
{
  long a = 0L;
  long b;
  final zz c;
  private final int e;
  private final zl f;
  private long g = 0L;
  private final List<yN> h;
  private List<yN> i;
  private final zA j;
  private final zB k = new zB(this);
  private final zB l = new zB(this);
  private yJ m = null;
  
  static
  {
    if (!zx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  zx(int paramInt, zl paramzl, boolean paramBoolean1, boolean paramBoolean2, List<yN> paramList)
  {
    if (paramzl == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    e = paramInt;
    f = paramzl;
    b = f.e(65536);
    j = new zA(this, e.e(65536), null);
    c = new zz(this);
    zA.a(j, paramBoolean2);
    zz.a(c, paramBoolean1);
    h = paramList;
  }
  
  private boolean d(yJ paramyJ)
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      if (m != null) {
        return false;
      }
      if ((zA.a(j)) && (zz.a(c))) {
        return false;
      }
    }
    finally {}
    m = paramyJ;
    notifyAll();
    f.b(e);
    return true;
  }
  
  private void i()
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    for (;;)
    {
      try
      {
        boolean bool;
        if ((!zA.a(j)) && (zA.b(j)))
        {
          if (zz.a(c)) {
            break label112;
          }
          if (zz.b(c))
          {
            break label112;
            bool = b();
            if (n == 0) {
              break label95;
            }
            a(yJ.l);
            return;
          }
        }
        n = 0;
        continue;
        if (bool) {
          continue;
        }
      }
      finally {}
      label95:
      f.b(e);
      return;
      label112:
      int n = 1;
    }
  }
  
  private void j()
  {
    if (zz.b(c)) {
      throw new IOException("stream closed");
    }
    if (zz.a(c)) {
      throw new IOException("stream finished");
    }
    if (m != null) {
      throw new IOException("stream was reset: " + m);
    }
  }
  
  private void k()
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  public int a()
  {
    return e;
  }
  
  void a(long paramLong)
  {
    b += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  void a(JT paramJT, int paramInt)
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    j.a(paramJT, paramInt);
  }
  
  void a(List<yN> paramList, yO paramyO)
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    Object localObject = null;
    boolean bool = true;
    label97:
    do
    {
      for (;;)
      {
        try
        {
          if (i == null)
          {
            if (paramyO.c())
            {
              paramList = yJ.b;
              if (paramList == null) {
                break;
              }
              b(paramList);
              return;
            }
            i = paramList;
            bool = b();
            notifyAll();
            paramList = (List<yN>)localObject;
            continue;
          }
          if (!paramyO.d()) {
            break label97;
          }
        }
        finally {}
        paramList = yJ.e;
        continue;
        paramyO = new ArrayList();
        paramyO.addAll(i);
        paramyO.addAll(paramList);
        i = paramyO;
        paramList = (List<yN>)localObject;
      }
    } while (bool);
    f.b(e);
  }
  
  public void a(yJ paramyJ)
  {
    if (!d(paramyJ)) {
      return;
    }
    f.b(e, paramyJ);
  }
  
  public void b(yJ paramyJ)
  {
    if (!d(paramyJ)) {
      return;
    }
    f.a(e, paramyJ);
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 57	zx:m	LyJ;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 92	zx:j	LzA;
    //   21: invokestatic 124	zA:a	(LzA;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 92	zx:j	LzA;
    //   31: invokestatic 141	zA:b	(LzA;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 97	zx:c	Lzz;
    //   41: invokestatic 127	zz:a	(Lzz;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 97	zx:c	Lzz;
    //   51: invokestatic 143	zz:b	(Lzz;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 192	zx:i	Ljava/util/List;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnonnull -50 -> 13
    //   66: iconst_1
    //   67: istore_1
    //   68: goto -55 -> 13
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	zx
    //   1	67	1	bool	boolean
    //   8	55	2	localObject1	Object
    //   71	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	71	finally
    //   17	37	71	finally
    //   37	57	71	finally
    //   57	62	71	finally
  }
  
  void c(yJ paramyJ)
  {
    try
    {
      if (m == null)
      {
        m = paramyJ;
        notifyAll();
      }
      return;
    }
    finally
    {
      paramyJ = finally;
      throw paramyJ;
    }
  }
  
  public boolean c()
  {
    if ((e & 0x1) == 1) {}
    for (int n = 1; f.b == n; n = 0) {
      return true;
    }
    return false;
  }
  
  /* Error */
  public List<yN> d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 53	zx:k	LzB;
    //   6: invokevirtual 226	zB:c	()V
    //   9: aload_0
    //   10: getfield 192	zx:i	Ljava/util/List;
    //   13: ifnonnull +32 -> 45
    //   16: aload_0
    //   17: getfield 57	zx:m	LyJ;
    //   20: ifnonnull +25 -> 45
    //   23: aload_0
    //   24: invokespecial 135	zx:k	()V
    //   27: goto -18 -> 9
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 53	zx:k	LzB;
    //   35: invokevirtual 228	zB:b	()V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    //   45: aload_0
    //   46: getfield 53	zx:k	LzB;
    //   49: invokevirtual 228	zB:b	()V
    //   52: aload_0
    //   53: getfield 192	zx:i	Ljava/util/List;
    //   56: ifnull +12 -> 68
    //   59: aload_0
    //   60: getfield 192	zx:i	Ljava/util/List;
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: areturn
    //   68: new 154	java/io/IOException
    //   71: dup
    //   72: new 161	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   79: ldc -92
    //   81: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_0
    //   85: getfield 57	zx:m	LyJ;
    //   88: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokespecial 157	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	zx
    //   30	9	1	localObject1	Object
    //   40	4	1	localObject2	Object
    //   63	4	1	localList	List
    // Exception table:
    //   from	to	target	type
    //   9	27	30	finally
    //   2	9	40	finally
    //   31	40	40	finally
    //   45	64	40	finally
    //   68	98	40	finally
  }
  
  public Km e()
  {
    return k;
  }
  
  public Kl f()
  {
    return j;
  }
  
  public Kk g()
  {
    try
    {
      if ((i == null) && (!c())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally {}
    return c;
  }
  
  void h()
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      zA.a(j, true);
      boolean bool = b();
      notifyAll();
      if (!bool) {
        f.b(e);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     zx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */