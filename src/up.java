import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class uP
{
  private static volatile uP s = null;
  protected uO a;
  protected boolean b;
  protected boolean c;
  public boolean d;
  public boolean e;
  protected boolean f;
  public boolean g;
  protected BroadcastReceiver h;
  protected uQ i;
  protected Context j;
  public ExecutorService k;
  protected ExecutorService l;
  protected uL m;
  private final String n = "heF9BATUfWuISyO8";
  private uV o;
  private uK p;
  private boolean q;
  private boolean r;
  
  public static uP a()
  {
    try
    {
      uP localuP = s;
      return localuP;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    uP localuP = new uP();
    s = localuP;
    j = paramContext.getApplicationContext();
    sl = Executors.newSingleThreadExecutor();
    sl.execute(new uW(paramString1, paramString2));
  }
  
  private void a(Object paramObject, JSONArray paramJSONArray, double paramDouble, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    for (;;)
    {
      try
      {
        boolean bool = c;
        if (!bool) {
          return;
        }
        b();
        i.a("conversion");
        Date localDate = new Date();
        if (!(paramObject instanceof String)) {
          break label230;
        }
        if (paramObject.equals("close")) {
          continue;
        }
        if ((paramObject.equals("open")) || (paramObject.equals("install")) || (paramObject.equals("update")) || (paramObject.equals("session")))
        {
          i.a("session");
          new Date(localDate.getTime() + 60000L);
          i.R(Double.toString(paramDouble));
          if (paramDouble > 0.0D) {
            i.F(Integer.toString(1));
          }
          i.h(paramString1);
          i.Q(paramString2);
          a(uS.a(q, r), uS.a(), uS.a(paramJSONArray, paramString3, paramString4), f);
          f = false;
          b();
          i.b();
          continue;
        }
        i.x((String)paramObject);
      }
      finally {}
      continue;
      label230:
      if ((paramObject instanceof Integer)) {
        i.v(Integer.toString(((Integer)paramObject).intValue()));
      }
    }
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  private void h()
  {
    Object localObject2 = null;
    for (;;)
    {
      if (i != null) {}
      Object localObject1;
      do
      {
        return;
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new Date(new Date().getTime() + 1000L);
        }
      } while (((Date)localObject1).before(new Date()));
      try
      {
        Thread.sleep(50L);
        localObject2 = localObject1;
      }
      catch (InterruptedException localInterruptedException)
      {
        Object localObject3 = localObject1;
      }
    }
  }
  
  public void a(Activity paramActivity)
  {
    l.execute(new uT(this, paramActivity));
  }
  
  public void a(String paramString)
  {
    l.execute(new uX(this, paramString));
  }
  
  protected void a(String paramString1, String paramString2)
  {
    uQ.a(j, paramString1, paramString2);
    i = uQ.a();
    k = Executors.newSingleThreadExecutor();
    o = new uV();
    p = new uK(paramString2.trim(), "heF9BATUfWuISyO8");
    f = true;
    c = false;
    b = false;
    q = false;
    r = false;
    m = new uL(j, this);
    b();
    h = new uY(this);
    if (b) {}
    try
    {
      j.unregisterReceiver(h);
      b = false;
      paramString1 = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      j.registerReceiver(h, paramString1);
      b = true;
      c = true;
      return;
    }
    catch (IllegalArgumentException paramString1)
    {
      for (;;) {}
    }
  }
  
  protected void a(String paramString1, String paramString2, JSONObject paramJSONObject, boolean paramBoolean)
  {
    ExecutorService localExecutorService = k;
    uL localuL = m;
    localuL.getClass();
    localExecutorService.execute(new uM(localuL, paramString1, paramString2, paramJSONObject, paramBoolean));
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      l.execute(new uR(this, paramString, i1));
      return;
    }
  }
  
  protected boolean a(String paramString1, String paramString2, JSONObject paramJSONObject)
  {
    paramString2 = uS.a(paramString2, p);
    paramString1 = paramString1 + "&data=" + paramString2;
    paramString1 = o.a(paramString1, paramJSONObject, q);
    if (paramString1 == null) {}
    do
    {
      do
      {
        for (;;)
        {
          return true;
          if (!paramString1.has("success")) {
            return false;
          }
          if (a != null) {}
          for (;;)
          {
            try
            {
              boolean bool = paramString1.getString("success").equals("true");
              if (!bool) {}
            }
            catch (JSONException paramString1)
            {
              paramString1.printStackTrace();
              return false;
            }
            try
            {
              if (paramString1.getString("site_event_type").equals("open"))
              {
                paramString2 = paramString1.getString("log_id");
                if (e().equals("")) {
                  i.L(paramString2);
                }
                i.H(paramString2);
              }
            }
            catch (JSONException paramString2) {}
          }
          if (q)
          {
            new StringBuilder("Server response: ").append(paramString1.toString()).toString();
            if (paramString1.length() > 0) {
              try
              {
                if ((paramString1.has("log_action")) && (!paramString1.getString("log_action").equals("null")))
                {
                  paramString1 = paramString1.getJSONObject("log_action");
                  if (!paramString1.has("conversion")) {
                    continue;
                  }
                  paramString1 = paramString1.getJSONObject("conversion");
                  if ((!paramString1.has("status")) || (!paramString1.getString("status").equals("rejected"))) {
                    continue;
                  }
                  paramString1 = paramString1.getString("status_code");
                  new StringBuilder("Event was rejected by server: status code ").append(paramString1).toString();
                  return true;
                }
              }
              catch (JSONException paramString1)
              {
                paramString1.printStackTrace();
                return true;
              }
            }
          }
        }
      } while (!paramString1.has("options"));
      paramString1 = paramString1.getJSONObject("options");
    } while (!paramString1.has("conversion_status"));
    paramString1 = paramString1.getString("conversion_status");
    new StringBuilder("Event was ").append(paramString1).append(" by server").toString();
    return true;
  }
  
  protected void b()
  {
    if (!a(j)) {
      return;
    }
    ExecutorService localExecutorService = k;
    uL localuL = m;
    localuL.getClass();
    localExecutorService.execute(new uN(localuL));
  }
  
  public void c()
  {
    l.execute(new uZ(this));
  }
  
  public String d()
  {
    h();
    return i.n();
  }
  
  public String e()
  {
    h();
    return i.ac();
  }
  
  public String f()
  {
    h();
    return i.aj();
  }
}

/* Location:
 * Qualified Name:     uP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */