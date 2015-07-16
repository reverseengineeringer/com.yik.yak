import com.google.android.gms.common.api.Status;

class pf
  implements nV
{
  private nU a;
  private nU b;
  private Status c;
  private ph d;
  private pg e;
  private boolean f;
  private oe g;
  
  public void a()
  {
    try
    {
      if (f) {
        os.a("Refreshing a released ContainerHolder.");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	pf:f	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 32	pf:a	LnU;
    //   18: aload_1
    //   19: invokevirtual 35	nU:a	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	pf
    //   0	30	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  String b()
  {
    if (f)
    {
      os.a("getContainerId called on a released ContainerHolder.");
      return "";
    }
    return a.a();
  }
  
  void b(String paramString)
  {
    if (f) {
      os.a("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
    }
  }
  
  String c()
  {
    if (f)
    {
      os.a("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return "";
    }
    return e.a();
  }
  
  public Status getStatus()
  {
    return c;
  }
  
  /* Error */
  public void release()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	pf:f	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 56
    //   11: invokestatic 29	os:a	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 22	pf:f	Z
    //   22: aload_0
    //   23: getfield 58	pf:g	Loe;
    //   26: aload_0
    //   27: invokevirtual 63	oe:a	(Lpf;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 32	pf:a	LnU;
    //   35: invokevirtual 65	nU:b	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 32	pf:a	LnU;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 67	pf:b	LnU;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 46	pf:e	Lpg;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 69	pf:d	Lph;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	pf
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
}

/* Location:
 * Qualified Name:     pf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */