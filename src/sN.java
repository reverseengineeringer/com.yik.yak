import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.Survey;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;

public class sn
{
  private String a;
  private final String b;
  private final Set<Integer> c;
  private final Set<Integer> d;
  private final List<Survey> e;
  private final List<InAppNotification> f;
  private final so g;
  private final up h;
  
  public sn(String paramString, so paramso, up paramup)
  {
    b = paramString;
    g = paramso;
    h = paramup;
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
    //   3: getfield 38	sn:e	Ljava/util/List;
    //   6: invokeinterface 55 1 0
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
    //   23: getfield 38	sn:e	Ljava/util/List;
    //   26: iconst_0
    //   27: invokeinterface 59 2 0
    //   32: checkcast 61	com/mixpanel/android/mpmetrics/Survey
    //   35: astore 4
    //   37: aload 4
    //   39: astore_3
    //   40: iload_1
    //   41: ifeq -23 -> 18
    //   44: aload_0
    //   45: getfield 38	sn:e	Ljava/util/List;
    //   48: aload_0
    //   49: getfield 38	sn:e	Ljava/util/List;
    //   52: invokeinterface 65 1 0
    //   57: aload 4
    //   59: invokeinterface 69 3 0
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
    //   0	75	0	this	sn
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
  
  public void a(List<Survey> paramList, List<InAppNotification> paramList1, JSONArray paramJSONArray)
  {
    int i = 0;
    label272:
    label275:
    for (;;)
    {
      try
      {
        h.a(paramJSONArray);
        paramJSONArray = paramList.iterator();
        Object localObject;
        int j;
        if (paramJSONArray.hasNext())
        {
          localObject = (Survey)paramJSONArray.next();
          j = ((Survey)localObject).b();
          if (c.contains(Integer.valueOf(j))) {
            break label272;
          }
          c.add(Integer.valueOf(j));
          e.add(localObject);
          i = 1;
          break label272;
        }
        paramJSONArray = paramList1.iterator();
        if (paramJSONArray.hasNext())
        {
          localObject = (InAppNotification)paramJSONArray.next();
          j = ((InAppNotification)localObject).b();
          if (!d.contains(Integer.valueOf(j)))
          {
            d.add(Integer.valueOf(j));
            f.add(localObject);
            i = 1;
            break label275;
          }
        }
        else
        {
          if (sD.a) {
            new StringBuilder().append("New Decide content has become available. ").append(paramList.size()).append(" surveys and ").append(paramList1.size()).append(" notifications have been added.").toString();
          }
          if ((i != 0) && (c()) && (g != null)) {
            g.a();
          }
          return;
        }
      }
      finally {}
      break label275;
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
          paramBoolean = sD.a;
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
      if (sD.a)
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
  
  /* Error */
  public boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	sn:f	Ljava/util/List;
    //   6: invokeinterface 55 1 0
    //   11: ifeq +17 -> 28
    //   14: aload_0
    //   15: getfield 38	sn:e	Ljava/util/List;
    //   18: invokeinterface 55 1 0
    //   23: istore_1
    //   24: iload_1
    //   25: ifne +9 -> 34
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	sn
    //   23	13	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	39	finally
  }
}

/* Location:
 * Qualified Name:     sn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */