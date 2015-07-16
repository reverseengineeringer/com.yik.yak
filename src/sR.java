import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.Survey;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;

class sr
{
  private String a;
  private final String b;
  private final Set<Integer> c;
  private final Set<Integer> d;
  private final List<Survey> e;
  private final List<InAppNotification> f;
  private final ss g;
  private final uD h;
  private JSONArray i;
  
  public sr(String paramString, ss paramss, uD paramuD)
  {
    b = paramString;
    g = paramss;
    h = paramuD;
    a = null;
    e = new LinkedList();
    f = new LinkedList();
    c = new HashSet();
    d = new HashSet();
  }
  
  /* Error */
  public Survey a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	sr:e	Ljava/util/List;
    //   6: invokeinterface 57 1 0
    //   11: istore_2
    //   12: iload_2
    //   13: ifeq +9 -> 22
    //   16: aconst_null
    //   17: astore_3
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_3
    //   21: areturn
    //   22: aload_0
    //   23: getfield 40	sr:e	Ljava/util/List;
    //   26: iconst_0
    //   27: invokeinterface 61 2 0
    //   32: checkcast 63	com/mixpanel/android/mpmetrics/Survey
    //   35: astore 4
    //   37: aload 4
    //   39: astore_3
    //   40: iload_1
    //   41: ifeq -23 -> 18
    //   44: aload_0
    //   45: getfield 40	sr:e	Ljava/util/List;
    //   48: aload_0
    //   49: getfield 40	sr:e	Ljava/util/List;
    //   52: invokeinterface 67 1 0
    //   57: aload 4
    //   59: invokeinterface 71 3 0
    //   64: aload 4
    //   66: astore_3
    //   67: goto -49 -> 18
    //   70: astore_3
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_3
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	sr
    //   0	75	1	paramBoolean	boolean
    //   11	2	2	bool	boolean
    //   17	50	3	localObject1	Object
    //   70	4	3	localObject2	Object
    //   35	30	4	localSurvey	Survey
    // Exception table:
    //   from	to	target	type
    //   2	12	70	finally
    //   22	37	70	finally
    //   44	64	70	finally
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    try
    {
      e.clear();
      f.clear();
      a = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(List<Survey> paramList, List<InAppNotification> paramList1, JSONArray paramJSONArray1, JSONArray paramJSONArray2)
  {
    int j = 0;
    label278:
    label281:
    for (;;)
    {
      try
      {
        h.a(paramJSONArray1);
        paramJSONArray1 = paramList.iterator();
        Object localObject;
        int k;
        if (paramJSONArray1.hasNext())
        {
          localObject = (Survey)paramJSONArray1.next();
          k = ((Survey)localObject).b();
          if (c.contains(Integer.valueOf(k))) {
            break label278;
          }
          c.add(Integer.valueOf(k));
          e.add(localObject);
          j = 1;
          break label278;
        }
        paramJSONArray1 = paramList1.iterator();
        if (paramJSONArray1.hasNext())
        {
          localObject = (InAppNotification)paramJSONArray1.next();
          k = ((InAppNotification)localObject).b();
          if (!d.contains(Integer.valueOf(k)))
          {
            d.add(Integer.valueOf(k));
            f.add(localObject);
            j = 1;
            break label281;
          }
        }
        else
        {
          i = paramJSONArray2;
          if (sG.a) {
            new StringBuilder().append("New Decide content has become available. ").append(paramList.size()).append(" surveys and ").append(paramList1.size()).append(" notifications have been added.").toString();
          }
          if ((j != 0) && (d()) && (g != null)) {
            g.a();
          }
          return;
        }
      }
      finally {}
      break label281;
    }
  }
  
  public InAppNotification b(boolean paramBoolean)
  {
    for (;;)
    {
      InAppNotification localInAppNotification;
      try
      {
        Object localObject1;
        if (f.isEmpty())
        {
          paramBoolean = sG.a;
          localObject1 = null;
          return (InAppNotification)localObject1;
        }
        localInAppNotification = (InAppNotification)f.remove(0);
        if (paramBoolean)
        {
          f.add(f.size(), localInAppNotification);
          localObject1 = localInAppNotification;
          continue;
        }
        localObject3 = localInAppNotification;
      }
      finally {}
      Object localObject3;
      if (sG.a)
      {
        new StringBuilder().append("Recording notification ").append(localInAppNotification).append(" as seen.").toString();
        localObject3 = localInAppNotification;
      }
    }
  }
  
  public String b()
  {
    try
    {
      String str = a;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public JSONArray c()
  {
    try
    {
      JSONArray localJSONArray = i;
      return localJSONArray;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 42	sr:f	Ljava/util/List;
    //   6: invokeinterface 57 1 0
    //   11: ifeq +24 -> 35
    //   14: aload_0
    //   15: getfield 40	sr:e	Ljava/util/List;
    //   18: invokeinterface 57 1 0
    //   23: ifeq +12 -> 35
    //   26: aload_0
    //   27: getfield 117	sr:i	Lorg/json/JSONArray;
    //   30: astore_2
    //   31: aload_2
    //   32: ifnull +9 -> 41
    //   35: iconst_1
    //   36: istore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: iload_1
    //   40: ireturn
    //   41: iconst_0
    //   42: istore_1
    //   43: goto -6 -> 37
    //   46: astore_2
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_2
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	sr
    //   36	7	1	bool	boolean
    //   30	2	2	localJSONArray	JSONArray
    //   46	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	31	46	finally
  }
}

/* Location:
 * Qualified Name:     sr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */