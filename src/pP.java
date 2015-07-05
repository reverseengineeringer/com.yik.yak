import com.google.android.gms.common.util.VisibleForTesting;

public class pp
{
  private final pE a;
  private pq b;
  private pB c;
  private po d;
  private volatile String e;
  private volatile el f;
  private volatile long g;
  private volatile int h;
  
  private boolean b(long paramLong)
  {
    if (g == 0L)
    {
      h -= 1;
      return true;
    }
    paramLong -= g;
    if (paramLong < 5000L) {
      return false;
    }
    if (h < 30) {
      h = Math.min(30, (int)Math.floor(paramLong / 900000L) + h);
    }
    if (h > 0)
    {
      h -= 1;
      return true;
    }
    return false;
  }
  
  private pB c()
  {
    try
    {
      pB localpB = c;
      return localpB;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean d()
  {
    return a.a() == pJ.b;
  }
  
  public void a()
  {
    for (;;)
    {
      try
      {
        if (c() == null)
        {
          pv.b("refresh called for closed container");
          return;
        }
        try
        {
          if (!d()) {
            break label66;
          }
          pv.b("Container is in DEFAULT_CONTAINER mode. Refresh request is ignored.");
        }
        catch (Exception localException)
        {
          pv.a("Calling refresh() throws an exception: " + localException.getMessage());
        }
        continue;
        l = d.a();
      }
      finally {}
      label66:
      long l;
      if (b(l))
      {
        pv.d("Container refresh requested");
        a(0L);
        g = l;
      }
      else
      {
        pv.d("Container refresh was called too often. Ignored.");
      }
    }
  }
  
  /* Error */
  @VisibleForTesting
  void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	pp:b	Lpq;
    //   6: ifnull +19 -> 25
    //   9: aload_0
    //   10: invokespecial 70	pp:d	()Z
    //   13: ifne +12 -> 25
    //   16: aload_0
    //   17: getfield 115	pp:f	Lel;
    //   20: astore_3
    //   21: aload_3
    //   22: ifnonnull +6 -> 28
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: aload_0
    //   29: getfield 115	pp:f	Lel;
    //   32: invokevirtual 120	el:C	()Ljava/lang/String;
    //   35: pop
    //   36: goto -11 -> 25
    //   39: astore_3
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_3
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	pp
    //   0	44	1	paramLong	long
    //   20	2	3	localel	el
    //   39	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	39	finally
    //   28	36	39	finally
  }
  
  @VisibleForTesting
  void a(String paramString)
  {
    try
    {
      e = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  String b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     pp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */