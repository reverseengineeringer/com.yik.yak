import android.content.Context;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class sd
{
  private static final Map<Context, sd> d = new HashMap();
  private final sf a;
  private final Context b;
  private final sG c;
  
  sd(Context paramContext)
  {
    b = paramContext;
    c = c(paramContext);
    a = new sf(this);
  }
  
  public static sd a(Context paramContext)
  {
    synchronized (d)
    {
      Context localContext = paramContext.getApplicationContext();
      if (!d.containsKey(localContext))
      {
        paramContext = new sd(localContext);
        d.put(localContext, paramContext);
        return paramContext;
      }
      paramContext = (sd)d.get(localContext);
    }
  }
  
  private void a(String paramString)
  {
    if (sG.a) {
      new StringBuilder().append(paramString).append(" (Thread ").append(Thread.currentThread().getId()).append(")").toString();
    }
  }
  
  private void a(String paramString, Throwable paramThrowable)
  {
    if (sG.a) {
      new StringBuilder().append(paramString).append(" (Thread ").append(Thread.currentThread().getId()).append(")").toString();
    }
  }
  
  public void a()
  {
    Message localMessage = Message.obtain();
    what = 2;
    a.a(localMessage);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    Message localMessage = Message.obtain();
    what = 0;
    obj = paramJSONObject;
    a.a(localMessage);
  }
  
  public void a(se paramse)
  {
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramse;
    a.a(localMessage);
  }
  
  public void a(sr paramsr)
  {
    Message localMessage = Message.obtain();
    what = 12;
    obj = paramsr;
    a.a(localMessage);
  }
  
  protected sH b(Context paramContext)
  {
    return new sH(paramContext);
  }
  
  protected tU b()
  {
    return new tS();
  }
  
  protected sG c(Context paramContext)
  {
    return sG.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     sd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */