import java.util.ArrayList;

public abstract class if<TListener>
{
  private TListener b;
  private boolean c;
  
  public if(TListener paramTListener)
  {
    Object localObject;
    b = localObject;
    c = false;
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	if:b	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_0
    //   8: getfield 23	if:c	Z
    //   11: ifeq +28 -> 39
    //   14: new 30	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   21: ldc 33
    //   23: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_0
    //   27: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   30: ldc 42
    //   32: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: pop
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: ifnull +8 -> 50
    //   45: aload_0
    //   46: aload_1
    //   47: invokevirtual 49	if:a	(Ljava/lang/Object;)V
    //   50: aload_0
    //   51: monitorenter
    //   52: aload_0
    //   53: iconst_1
    //   54: putfield 23	if:c	Z
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_0
    //   60: invokevirtual 51	if:b	()V
    //   63: return
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: astore_1
    //   70: aload_1
    //   71: athrow
    //   72: astore_1
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	if
    //   6	41	1	localObject1	Object
    //   64	4	1	localObject2	Object
    //   69	2	1	localRuntimeException	RuntimeException
    //   72	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	39	64	finally
    //   39	41	64	finally
    //   65	67	64	finally
    //   45	50	69	java/lang/RuntimeException
    //   52	59	72	finally
    //   73	75	72	finally
  }
  
  protected abstract void a(TListener paramTListener);
  
  public void b()
  {
    c();
    synchronized (id.b(a))
    {
      id.b(a).remove(this);
      return;
    }
  }
  
  public void c()
  {
    try
    {
      b = null;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */