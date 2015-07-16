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

public final class zv
  implements Closeable
{
  private static final ExecutorService l;
  final xC a;
  final boolean b;
  long c = 0L;
  long d;
  final zr e = new zr();
  final zr f = new zr();
  final zM g;
  final Socket h;
  final yW i;
  final zE j;
  private final zj m;
  private final Map<Integer, zH> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, zo> u;
  private final zp v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();
  
  static
  {
    if (!zv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), yi.a("OkHttp SpdyConnection", true));
      return;
    }
  }
  
  private zv(zD paramzD)
  {
    a = zD.a(paramzD);
    v = zD.b(paramzD);
    b = zD.c(paramzD);
    m = zD.d(paramzD);
    int i1;
    if (zD.c(paramzD))
    {
      i1 = 1;
      q = i1;
      if ((zD.c(paramzD)) && (a == xC.d)) {
        q += 2;
      }
      i1 = i2;
      if (zD.c(paramzD)) {
        i1 = 1;
      }
      w = i1;
      if (zD.c(paramzD)) {
        e.a(7, 0, 16777216);
      }
      o = zD.e(paramzD);
      if (a != xC.d) {
        break label359;
      }
      g = new zc();
      t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), yi.a(String.format("OkHttp %s Push Observer", new Object[] { o }), true));
      f.a(7, 0, 65535);
      f.a(5, 0, 16384);
    }
    for (;;)
    {
      d = f.e(65536);
      h = zD.f(paramzD);
      i = g.a(KI.a(KI.a(zD.f(paramzD))), b);
      j = new zE(this, null);
      new Thread(j).start();
      return;
      i1 = 2;
      break;
      label359:
      if (a != xC.c) {
        break label388;
      }
      g = new zs();
      t = null;
    }
    label388:
    throw new AssertionError(a);
  }
  
  private zH a(int paramInt, List<yX> paramList, boolean paramBoolean1, boolean paramBoolean2)
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
    zH localzH = new zH(i1, this, bool1, paramBoolean2, paramList);
    if (localzH.b())
    {
      n.put(Integer.valueOf(i1), localzH);
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
      return localzH;
      if (b) {
        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
      }
      i.a(paramInt, i1, paramList);
    }
  }
  
  private void a(int paramInt1, KB paramKB, int paramInt2, boolean paramBoolean)
  {
    Kx localKx = new Kx();
    paramKB.a(paramInt2);
    paramKB.a(localKx, paramInt2);
    if (localKx.c() != paramInt2) {
      throw new IOException(localKx.c() + " != " + paramInt2);
    }
    t.submit(new zB(this, "OkHttp %s Push Data[%s]", new Object[] { o, Integer.valueOf(paramInt1) }, paramInt1, localKx, paramInt2, paramBoolean));
  }
  
  private void a(int paramInt, List<yX> paramList)
  {
    try
    {
      if (y.contains(Integer.valueOf(paramInt)))
      {
        a(paramInt, yT.b);
        return;
      }
      y.add(Integer.valueOf(paramInt));
      t.submit(new zz(this, "OkHttp %s Push Request[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList));
      return;
    }
    finally {}
  }
  
  private void a(int paramInt, List<yX> paramList, boolean paramBoolean)
  {
    t.submit(new zA(this, "OkHttp %s Push Headers[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList, paramBoolean));
  }
  
  /* Error */
  private void a(yT paramyT1, yT paramyT2)
  {
    // Byte code:
    //   0: getstatic 59	zv:k	Z
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
    //   23: invokevirtual 370	zv:a	(LyT;)V
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_0
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 95	zv:n	Ljava/util/Map;
    //   34: invokeinterface 373 1 0
    //   39: ifne +247 -> 286
    //   42: aload_0
    //   43: getfield 95	zv:n	Ljava/util/Map;
    //   46: invokeinterface 377 1 0
    //   51: aload_0
    //   52: getfield 95	zv:n	Ljava/util/Map;
    //   55: invokeinterface 381 1 0
    //   60: anewarray 244	zH
    //   63: invokeinterface 387 2 0
    //   68: checkcast 389	[LzH;
    //   71: astore 6
    //   73: aload_0
    //   74: getfield 95	zv:n	Ljava/util/Map;
    //   77: invokeinterface 392 1 0
    //   82: aload_0
    //   83: iconst_0
    //   84: invokespecial 264	zv:a	(Z)V
    //   87: aload_0
    //   88: getfield 394	zv:u	Ljava/util/Map;
    //   91: ifnull +189 -> 280
    //   94: aload_0
    //   95: getfield 394	zv:u	Ljava/util/Map;
    //   98: invokeinterface 377 1 0
    //   103: aload_0
    //   104: getfield 394	zv:u	Ljava/util/Map;
    //   107: invokeinterface 381 1 0
    //   112: anewarray 396	zo
    //   115: invokeinterface 387 2 0
    //   120: checkcast 398	[Lzo;
    //   123: astore 7
    //   125: aload_0
    //   126: aconst_null
    //   127: putfield 394	zv:u	Ljava/util/Map;
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
    //   162: invokevirtual 399	zH:a	(LyT;)V
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
    //   228: invokevirtual 401	zo:c	()V
    //   231: iload_3
    //   232: iconst_1
    //   233: iadd
    //   234: istore_3
    //   235: goto -17 -> 218
    //   238: aload_0
    //   239: getfield 203	zv:i	LyW;
    //   242: invokeinterface 404 1 0
    //   247: aload 5
    //   249: astore_1
    //   250: aload_0
    //   251: getfield 188	zv:h	Ljava/net/Socket;
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
    //   0	292	0	this	zv
    //   0	292	1	paramyT1	yT
    //   0	292	2	paramyT2	yT
    //   146	89	3	i1	int
    //   143	79	4	i2	int
    //   133	137	5	localObject	Object
    //   71	217	6	arrayOfzH	zH[]
    //   123	159	7	arrayOfzo	zo[]
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
  
  private void a(boolean paramBoolean, int paramInt1, int paramInt2, zo paramzo)
  {
    l.submit(new zy(this, "OkHttp %s ping %08x%08x", new Object[] { o, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }, paramBoolean, paramInt1, paramInt2, paramzo));
  }
  
  private void b(boolean paramBoolean, int paramInt1, int paramInt2, zo paramzo)
  {
    yW localyW = i;
    if (paramzo != null) {}
    try
    {
      paramzo.a();
      i.a(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally {}
  }
  
  /* Error */
  private zo c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 394	zv:u	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 394	zv:u	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 255	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 457 2 0
    //   22: checkcast 396	zo
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
    //   0	40	0	this	zv
    //   0	40	1	paramInt	int
    //   25	7	2	localzo	zo
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  private void c(int paramInt, yT paramyT)
  {
    t.submit(new zC(this, "OkHttp %s Push Reset[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramyT));
  }
  
  private boolean d(int paramInt)
  {
    return (a == xC.d) && (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  public xC a()
  {
    return a;
  }
  
  zH a(int paramInt)
  {
    try
    {
      zH localzH = (zH)n.get(Integer.valueOf(paramInt));
      return localzH;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public zH a(List<yX> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(0, paramList, paramBoolean1, paramBoolean2);
  }
  
  void a(int paramInt, long paramLong)
  {
    l.submit(new zx(this, "OkHttp Window Update %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramLong));
  }
  
  void a(int paramInt, yT paramyT)
  {
    l.submit(new zw(this, "OkHttp %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramyT));
  }
  
  public void a(int paramInt, boolean paramBoolean, Kx paramKx, long paramLong)
  {
    long l1 = paramLong;
    if (paramLong == 0L)
    {
      i.a(paramBoolean, paramInt, paramKx, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, d), i.c());
        d -= i1;
        l1 -= i1;
        yW localyW = i;
        if ((paramBoolean) && (l1 == 0L))
        {
          bool = true;
          localyW.a(bool, paramInt, paramKx, i1);
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
            paramKx = finally;
          }
          catch (InterruptedException paramKx)
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
  
  public void a(yT paramyT)
  {
    int i1;
    synchronized (i) {}
  }
  
  zH b(int paramInt)
  {
    try
    {
      zH localzH = (zH)n.remove(Integer.valueOf(paramInt));
      if ((localzH != null) && (n.isEmpty())) {
        a(true);
      }
      return localzH;
    }
    finally {}
  }
  
  void b(int paramInt, yT paramyT)
  {
    i.a(paramInt, paramyT);
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 103	zv:s	J
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
    //   0	33	0	this	zv
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
    a(yT.a, yT.l);
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
 * Qualified Name:     zv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */