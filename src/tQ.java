import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class tq
{
  private final Map<String, ts> a = new HashMap();
  private final List<tr> b = new ArrayList();
  
  public Map<String, ts> a()
  {
    try
    {
      HashMap localHashMap = new HashMap(a);
      return localHashMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void a(String paramString, Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	tq:a	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 38 2 0
    //   12: ifne +31 -> 43
    //   15: new 40	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   22: ldc 43
    //   24: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: aload_1
    //   28: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc 49
    //   33: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: pop
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: aload_0
    //   44: getfield 19	tq:a	Ljava/util/Map;
    //   47: aload_1
    //   48: invokeinterface 57 2 0
    //   53: checkcast 59	ts
    //   56: aload_2
    //   57: invokevirtual 62	ts:a	(Ljava/lang/Object;)Lts;
    //   60: astore_2
    //   61: aload_0
    //   62: getfield 19	tq:a	Ljava/util/Map;
    //   65: aload_1
    //   66: aload_2
    //   67: invokeinterface 66 3 0
    //   72: pop
    //   73: goto -33 -> 40
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	tq
    //   0	81	1	paramString	String
    //   0	81	2	paramObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	40	76	finally
    //   43	73	76	finally
  }
  
  public void a(tr paramtr)
  {
    if (paramtr == null) {
      try
      {
        throw new NullPointerException("listener cannot be null");
      }
      finally {}
    }
    b.add(paramtr);
  }
}

/* Location:
 * Qualified Name:     tq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */