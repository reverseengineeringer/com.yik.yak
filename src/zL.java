import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zl
  implements Closeable
{
  private static final ExecutorService l;
  final xs a;
  final boolean b;
  long c = 0L;
  long d;
  final zh e = new zh();
  final zh f = new zh();
  final zC g;
  final Socket h;
  final yM i;
  final zu j;
  private final yZ m;
  private final Map<Integer, zx> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, ze> u;
  private final zf v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();
  
  static
  {
    if (!zl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), xY.a("OkHttp SpdyConnection", true));
      return;
    }
  }
  
  private zl(zt paramzt)
  {
    a = zt.a(paramzt);
    v = zt.b(paramzt);
    b = zt.c(paramzt);
    m = zt.d(paramzt);
    int i1;
    if (zt.c(paramzt))
    {
      i1 = 1;
      q = i1;
      if ((zt.c(paramzt)) && (a == xs.d)) {
        q += 2;
      }
      i1 = i2;
      if (zt.c(paramzt)) {
        i1 = 1;
      }
      w = i1;
      if (zt.c(paramzt)) {
        e.a(7, 0, 16777216);
      }
      o = zt.e(paramzt);
      if (a != xs.d) {
        break label359;
      }
      g = new yS();
      t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), xY.a(String.format("OkHttp %s Push Observer", new Object[] { o }), true));
      f.a(7, 0, 65535);
      f.a(5, 0, 16384);
    }
    for (;;)
    {
      d = f.e(65536);
      h = zt.f(paramzt);
      i = g.a(Ka.a(Ka.a(zt.f(paramzt))), b);
      j = new zu(this, null);
      new Thread(j).start();
      return;
      i1 = 2;
      break;
      label359:
      if (a != xs.c) {
        break label388;
      }
      g = new zi();
      t = null;
    }
    label388:
    throw new AssertionError(a);
  }
  
  private zx a(int paramInt, List<yN> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!paramBoolean1)
    {
      bool1 = true;
      if (paramBoolean2) {
        break label64;
      }
    }
    label64:
    for (paramBoolean2 = bool2;; paramBoolean2 = false)
    {
      synchronized (i)
      {
        try
        {
          if (!r) {
            break label70;
          }
          throw new IOException("shutdown");
        }
        finally {}
      }
      bool1 = false;
      break;
    }
    label70:
    int i1 = q;
    q += 2;
    zx localzx = new zx(i1, this, bool1, paramBoolean2, paramList);
    if (localzx.b())
    {
      n.put(Integer.valueOf(i1), localzx);
      a(false);
    }
    if (paramInt == 0) {
      i.a(bool1, paramBoolean2, i1, paramInt, paramList);
    }
    for (;;)
    {
      if (!paramBoolean1) {
        i.b();
      }
      return localzx;
      if (b) {
        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
      }
      i.a(paramInt, i1, paramList);
    }
  }
  
  private void a(int paramInt1, JT paramJT, int paramInt2, boolean paramBoolean)
  {
    JP localJP = new JP();
    paramJT.a(paramInt2);
    paramJT.a(localJP, paramInt2);
    if (localJP.c() != paramInt2) {
      throw new IOException(localJP.c() + " != " + paramInt2);
    }
    t.submit(new zr(this, "OkHttp %s Push Data[%s]", new Object[] { o, Integer.valueOf(paramInt1) }, paramInt1, localJP, paramInt2, paramBoolean));
  }
  
  private void a(int paramInt, List<yN> paramList)
  {
    try
    {
      if (y.contains(Integer.valueOf(paramInt)))
      {
        a(paramInt, yJ.b);
        return;
      }
      y.add(Integer.valueOf(paramInt));
      t.submit(new zp(this, "OkHttp %s Push Request[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList));
      return;
    }
    finally {}
  }
  
  private void a(int paramInt, List<yN> paramList, boolean paramBoolean)
  {
    t.submit(new zq(this, "OkHttp %s Push Headers[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList, paramBoolean));
  }
  
  /* Error */
  private void a(yJ paramyJ1, yJ paramyJ2)
  {
    // Byte code:
    //   0: getstatic 59	zl:k	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 366	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 225	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 367	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 370	zl:a	(LyJ;)V
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_0
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 95	zl:n	Ljava/util/Map;
    //   34: invokeinterface 373 1 0
    //   39: ifne +247 -> 286
    //   42: aload_0
    //   43: getfield 95	zl:n	Ljava/util/Map;
    //   46: invokeinterface 377 1 0
    //   51: aload_0
    //   52: getfield 95	zl:n	Ljava/util/Map;
    //   55: invokeinterface 381 1 0
    //   60: anewarray 244	zx
    //   63: invokeinterface 387 2 0
    //   68: checkcast 389	[Lzx;
    //   71: astore 6
    //   73: aload_0
    //   74: getfield 95	zl:n	Ljava/util/Map;
    //   77: invokeinterface 392 1 0
    //   82: aload_0
    //   83: iconst_0
    //   84: invokespecial 264	zl:a	(Z)V
    //   87: aload_0
    //   88: getfield 394	zl:u	Ljava/util/Map;
    //   91: ifnull +189 -> 280
    //   94: aload_0
    //   95: getfield 394	zl:u	Ljava/util/Map;
    //   98: invokeinterface 377 1 0
    //   103: aload_0
    //   104: getfield 394	zl:u	Ljava/util/Map;
    //   107: invokeinterface 381 1 0
    //   112: anewarray 396	ze
    //   115: invokeinterface 387 2 0
    //   120: checkcast 398	[Lze;
    //   123: astore 7
    //   125: aload_0
    //   126: aconst_null
    //   127: putfield 394	zl:u	Ljava/util/Map;
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: astore 5
    //   135: aload 6
    //   137: ifnull +69 -> 206
    //   140: aload 6
    //   142: arraylength
    //   143: istore 4
    //   145: iconst_0
    //   146: istore_3
    //   147: iload_3
    //   148: iload 4
    //   150: if_icmpge +53 -> 203
    //   153: aload 6
    //   155: iload_3
    //   156: aaload
    //   157: astore 5
    //   159: aload 5
    //   161: aload_2
    //   162: invokevirtual 399	zx:a	(LyJ;)V
    //   165: aload_1
    //   166: astore 5
    //   168: iload_3
    //   169: iconst_1
    //   170: iadd
    //   171: istore_3
    //   172: aload 5
    //   174: astore_1
    //   175: goto -28 -> 147
    //   178: astore_1
    //   179: goto -151 -> 28
    //   182: astore_1
    //   183: aload_0
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    //   187: astore 8
    //   189: aload_1
    //   190: astore 5
    //   192: aload_1
    //   193: ifnull -25 -> 168
    //   196: aload 8
    //   198: astore 5
    //   200: goto -32 -> 168
    //   203: aload_1
    //   204: astore 5
    //   206: aload 7
    //   208: ifnull +30 -> 238
    //   211: aload 7
    //   213: arraylength
    //   214: istore 4
    //   216: iconst_0
    //   217: istore_3
    //   218: iload_3
    //   219: iload 4
    //   221: if_icmpge +17 -> 238
    //   224: aload 7
    //   226: iload_3
    //   227: aaload
    //   228: invokevirtual 401	ze:c	()V
    //   231: iload_3
    //   232: iconst_1
    //   233: iadd
    //   234: istore_3
    //   235: goto -17 -> 218
    //   238: aload_0
    //   239: getfield 203	zl:i	LyM;
    //   242: invokeinterface 404 1 0
    //   247: aload 5
    //   249: astore_1
    //   250: aload_0
    //   251: getfield 188	zl:h	Ljava/net/Socket;
    //   254: invokevirtual 407	java/net/Socket:close	()V
    //   257: aload_1
    //   258: ifnull +17 -> 275
    //   261: aload_1
    //   262: athrow
    //   263: astore_1
    //   264: aload 5
    //   266: ifnull -16 -> 250
    //   269: aload 5
    //   271: astore_1
    //   272: goto -22 -> 250
    //   275: return
    //   276: astore_1
    //   277: goto -20 -> 257
    //   280: aconst_null
    //   281: astore 7
    //   283: goto -153 -> 130
    //   286: aconst_null
    //   287: astore 6
    //   289: goto -202 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	zl
    //   0	292	1	paramyJ1	yJ
    //   0	292	2	paramyJ2	yJ
    //   146	89	3	i1	int
    //   143	79	4	i2	int
    //   133	137	5	localObject	Object
    //   71	217	6	arrayOfzx	zx[]
    //   123	159	7	arrayOfze	ze[]
    //   187	10	8	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   21	26	178	java/io/IOException
    //   30	87	182	finally
    //   87	130	182	finally
    //   130	132	182	finally
    //   183	185	182	finally
    //   159	165	187	java/io/IOException
    //   238	247	263	java/io/IOException
    //   250	257	276	java/io/IOException
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l1 = System.nanoTime();
        s = l1;
        return;
      }
      finally {}
      long l1 = Long.MAX_VALUE;
    }
  }
  
  private void a(boolean paramBoolean, int paramInt1, int paramInt2, ze paramze)
  {
    l.submit(new zo(this, "OkHttp %s ping %08x%08x", new Object[] { o, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }, paramBoolean, paramInt1, paramInt2, paramze));
  }
  
  private void b(boolean paramBoolean, int paramInt1, int paramInt2, ze paramze)
  {
    yM localyM = i;
    if (paramze != null) {}
    try
    {
      paramze.a();
      i.a(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally {}
  }
  
  /* Error */
  private ze c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 394	zl:u	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 394	zl:u	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 255	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 457 2 0
    //   22: checkcast 396	ze
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	zl
    //   0	40	1	paramInt	int
    //   25	7	2	localze	ze
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  private void c(int paramInt, yJ paramyJ)
  {
    t.submit(new zs(this, "OkHttp %s Push Reset[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramyJ));
  }
  
  private boolean d(int paramInt)
  {
    return (a == xs.d) && (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  public xs a()
  {
    return a;
  }
  
  zx a(int paramInt)
  {
    try
    {
      zx localzx = (zx)n.get(Integer.valueOf(paramInt));
      return localzx;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public zx a(List<yN> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(0, paramList, paramBoolean1, paramBoolean2);
  }
  
  void a(int paramInt, long paramLong)
  {
    l.submit(new zn(this, "OkHttp Window Update %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramLong));
  }
  
  void a(int paramInt, yJ paramyJ)
  {
    l.submit(new zm(this, "OkHttp %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramyJ));
  }
  
  public void a(int paramInt, boolean paramBoolean, JP paramJP, long paramLong)
  {
    long l1 = paramLong;
    if (paramLong == 0L)
    {
      i.a(paramBoolean, paramInt, paramJP, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, d), i.c());
        d -= i1;
        l1 -= i1;
        yM localyM = i;
        if ((paramBoolean) && (l1 == 0L))
        {
          bool = true;
          localyM.a(bool, paramInt, paramJP, i1);
          if (l1 <= 0L) {
            break;
          }
          try
          {
            if (d > 0L) {
              continue;
            }
            wait();
            continue;
            paramJP = finally;
          }
          catch (InterruptedException paramJP)
          {
            throw new InterruptedIOException();
          }
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  void a(long paramLong)
  {
    d += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public void a(yJ paramyJ)
  {
    int i1;
    synchronized (i) {}
  }
  
  zx b(int paramInt)
  {
    try
    {
      zx localzx = (zx)n.remove(Integer.valueOf(paramInt));
      if ((localzx != null) && (n.isEmpty())) {
        a(true);
      }
      return localzx;
    }
    finally {}
  }
  
  void b(int paramInt, yJ paramyJ)
  {
    i.a(paramInt, paramyJ);
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 103	zl:s	J
    //   6: lstore_1
    //   7: lload_1
    //   8: ldc2_w 427
    //   11: lcmp
    //   12: ifeq +9 -> 21
    //   15: iconst_1
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: iconst_0
    //   22: istore_3
    //   23: goto -6 -> 17
    //   26: astore 4
    //   28: aload_0
    //   29: monitorexit
    //   30: aload 4
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	zl
    //   6	2	1	l1	long
    //   16	7	3	bool	boolean
    //   26	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
  }
  
  public long c()
  {
    try
    {
      long l1 = s;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void close()
  {
    a(yJ.a, yJ.l);
  }
  
  public void d()
  {
    i.b();
  }
  
  public void e()
  {
    i.a();
    i.b(e);
    int i1 = e.e(65536);
    if (i1 != 65536) {
      i.a(0, i1 - 65536);
    }
  }
}

/* Location:
 * Qualified Name:     zl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */