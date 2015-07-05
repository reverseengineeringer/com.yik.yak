import android.content.Context;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class fb
  implements eG, eH, fE
{
  private volatile long a;
  private volatile ff b;
  private volatile eD c;
  private eI d;
  private eI e;
  private final fq f;
  private final eK g;
  private final Context h;
  private final Queue<fi> i = new ConcurrentLinkedQueue();
  private volatile int j;
  private volatile Timer k;
  private volatile Timer l;
  private volatile Timer m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private eO r;
  private long s = 300000L;
  
  fb(Context paramContext, eK parameK)
  {
    this(paramContext, parameK, null, fq.a(paramContext));
  }
  
  @VisibleForTesting
  fb(Context paramContext, eK parameK, eI parameI, fq paramfq)
  {
    e = parameI;
    h = paramContext;
    g = parameK;
    f = paramfq;
    r = new fc(this);
    j = 0;
    b = ff.g;
  }
  
  private Timer a(Timer paramTimer)
  {
    if (paramTimer != null) {
      paramTimer.cancel();
    }
    return null;
  }
  
  private void g()
  {
    k = a(k);
    l = a(l);
    m = a(m);
  }
  
  private void h()
  {
    for (;;)
    {
      try
      {
        if (!Thread.currentThread().equals(g.d()))
        {
          g.c().add(new fd(this));
          return;
        }
        if (o) {
          d();
        }
        switch (fe.a[b.ordinal()])
        {
        case 1: 
          if (!i.isEmpty())
          {
            fi localfi1 = (fi)i.poll();
            ft.c("Sending hit to store  " + localfi1);
            d.a(localfi1.a(), localfi1.b(), localfi1.c(), localfi1.d());
            continue;
          }
          if (!n) {
            continue;
          }
        }
      }
      finally {}
      i();
      continue;
      if (!i.isEmpty())
      {
        fi localfi2 = (fi)i.peek();
        ft.c("Sending hit to service   " + localfi2);
        if (!f.b()) {
          c.a(localfi2.a(), localfi2.b(), localfi2.c(), localfi2.d());
        }
        for (;;)
        {
          i.poll();
          break;
          ft.c("Dry run enabled. Hit not actually sent to service.");
        }
      }
      a = r.a();
      continue;
      ft.c("Need to reconnect");
      if (!i.isEmpty()) {
        k();
      }
    }
  }
  
  private void i()
  {
    d.a();
    n = false;
  }
  
  private void j()
  {
    for (;;)
    {
      try
      {
        ff localff1 = b;
        ff localff2 = ff.c;
        if (localff1 == localff2) {
          return;
        }
        g();
        ft.c("falling back to local store");
        if (e != null)
        {
          d = e;
          b = ff.c;
          h();
          continue;
        }
        localeY = eY.a();
      }
      finally {}
      eY localeY;
      localeY.a(h, g);
      d = localeY.b();
    }
  }
  
  private void k()
  {
    for (;;)
    {
      try
      {
        if ((!q) && (c != null))
        {
          ff localff1 = b;
          ff localff2 = ff.c;
          if (localff1 != localff2) {
            try
            {
              j += 1;
              a(l);
              b = ff.a;
              l = new Timer("Failed Connect");
              l.schedule(new fh(this, null), 3000L);
              ft.c("connecting to Analytics service");
              c.b();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              ft.d("security exception on connectToService");
              j();
              continue;
            }
          }
        }
        ft.d("client not initialized.");
      }
      finally {}
      j();
    }
  }
  
  private void l()
  {
    try
    {
      if ((c != null) && (b == ff.b))
      {
        b = ff.f;
        c.c();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void m()
  {
    k = a(k);
    k = new Timer("Service Reconnect");
    k.schedule(new fj(this, null), 5000L);
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_0
    //   5: getfield 113	fb:l	Ljava/util/Timer;
    //   8: invokespecial 111	fb:a	(Ljava/util/Timer;)Ljava/util/Timer;
    //   11: putfield 113	fb:l	Ljava/util/Timer;
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 83	fb:j	I
    //   19: ldc_w 297
    //   22: invokestatic 187	ft:c	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getstatic 284	ff:b	Lff;
    //   29: putfield 89	fb:b	Lff;
    //   32: aload_0
    //   33: getfield 299	fb:p	Z
    //   36: ifeq +15 -> 51
    //   39: aload_0
    //   40: invokespecial 235	fb:l	()V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 299	fb:p	Z
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: invokespecial 98	fb:h	()V
    //   55: aload_0
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 115	fb:m	Ljava/util/Timer;
    //   61: invokespecial 111	fb:a	(Ljava/util/Timer;)Ljava/util/Timer;
    //   64: putfield 115	fb:m	Ljava/util/Timer;
    //   67: aload_0
    //   68: new 93	java/util/Timer
    //   71: dup
    //   72: ldc_w 301
    //   75: invokespecial 262	java/util/Timer:<init>	(Ljava/lang/String;)V
    //   78: putfield 115	fb:m	Ljava/util/Timer;
    //   81: aload_0
    //   82: getfield 115	fb:m	Ljava/util/Timer;
    //   85: new 303	fg
    //   88: dup
    //   89: aload_0
    //   90: aconst_null
    //   91: invokespecial 304	fg:<init>	(Lfb;Lfc;)V
    //   94: aload_0
    //   95: getfield 66	fb:s	J
    //   98: invokevirtual 273	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   101: goto -53 -> 48
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	fb
    //   104	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	48	104	finally
    //   51	101	104	finally
  }
  
  /* Error */
  public void a(int paramInt, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getstatic 307	ff:e	Lff;
    //   6: putfield 89	fb:b	Lff;
    //   9: aload_0
    //   10: getfield 83	fb:j	I
    //   13: iconst_2
    //   14: if_icmpge +39 -> 53
    //   17: new 168	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   24: ldc_w 309
    //   27: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: iload_1
    //   31: invokevirtual 312	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   34: ldc_w 314
    //   37: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 281	ft:d	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: invokespecial 316	fb:m	()V
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: new 168	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 169	java/lang/StringBuilder:<init>	()V
    //   60: ldc_w 309
    //   63: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: iload_1
    //   67: invokevirtual 312	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   70: ldc_w 318
    //   73: invokevirtual 175	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 281	ft:d	(Ljava/lang/String;)V
    //   82: aload_0
    //   83: invokespecial 101	fb:j	()V
    //   86: goto -36 -> 50
    //   89: astore_2
    //   90: aload_0
    //   91: monitorexit
    //   92: aload_2
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	fb
    //   0	94	1	paramInt	int
    //   0	94	2	paramIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   2	50	89	finally
    //   53	86	89	finally
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    ft.c("putHit called");
    i.add(new fi(paramMap, paramLong, paramString, paramList));
    h();
  }
  
  public void b()
  {
    for (;;)
    {
      try
      {
        if (b == ff.f)
        {
          ft.c("Disconnected from service");
          g();
          b = ff.g;
          return;
        }
        ft.c("Unexpected disconnect.");
        b = ff.e;
        if (j < 2) {
          m();
        } else {
          j();
        }
      }
      finally {}
    }
  }
  
  public void c()
  {
    switch (fe.a[b.ordinal()])
    {
    default: 
      n = true;
    case 2: 
      return;
    }
    i();
  }
  
  public void d()
  {
    ft.c("clearHits called");
    i.clear();
    switch (fe.a[b.ordinal()])
    {
    default: 
      o = true;
      return;
    case 1: 
      d.a(0L);
      o = false;
      return;
    }
    c.a();
    o = false;
  }
  
  public void e()
  {
    for (;;)
    {
      try
      {
        boolean bool = q;
        if (bool) {
          return;
        }
        ft.c("setForceLocalDispatch called.");
        q = true;
        switch (fe.a[b.ordinal()])
        {
        case 1: 
        case 2: 
          l();
          break;
        case 3: 
          p = true;
        }
      }
      finally {}
    }
  }
  
  public void f()
  {
    if (c != null) {
      return;
    }
    c = new eE(h, this, this);
    k();
  }
}

/* Location:
 * Qualified Name:     fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */