import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class fg
  extends Thread
  implements eG
{
  private static fg g;
  private final LinkedBlockingQueue<Runnable> a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile List<Command> d;
  private volatile String e;
  private volatile String f;
  private volatile fB h;
  private final Context i;
  
  private fg(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (i = paramContext.getApplicationContext();; i = paramContext)
    {
      start();
      return;
    }
  }
  
  @VisibleForTesting
  static int a(String paramString)
  {
    int m = 1;
    if (!TextUtils.isEmpty(paramString))
    {
      int k = paramString.length();
      int j = 0;
      k -= 1;
      for (;;)
      {
        m = j;
        if (k < 0) {
          break;
        }
        m = paramString.charAt(k);
        m = (j << 6 & 0xFFFFFFF) + m + (m << 14);
        int n = 0xFE00000 & m;
        j = m;
        if (n != 0) {
          j = m ^ n >> 21;
        }
        k -= 1;
      }
    }
    return m;
  }
  
  static fg a(Context paramContext)
  {
    if (g == null) {
      g = new fg(paramContext);
    }
    return g;
  }
  
  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  @VisibleForTesting
  static String b(Context paramContext)
  {
    try
    {
      localObject = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[' '];
      j = ((FileInputStream)localObject).read(arrayOfByte, 0, 8192);
      if (((FileInputStream)localObject).available() > 0)
      {
        fq.a("Too much campaign data, ignoring it.");
        ((FileInputStream)localObject).close();
        paramContext.deleteFile("gaInstallData");
        return null;
      }
      ((FileInputStream)localObject).close();
      paramContext.deleteFile("gaInstallData");
      if (j <= 0)
      {
        fq.d("Campaign file is empty.");
        return null;
      }
    }
    catch (FileNotFoundException paramContext)
    {
      byte[] arrayOfByte;
      int j;
      fq.b("No campaign data found.");
      return null;
      Object localObject = new String(arrayOfByte, 0, j);
      fq.b("Campaign found: " + (String)localObject);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      fq.a("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    return null;
  }
  
  private String b(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (fF.a((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private boolean c(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d1 = fF.a((String)paramMap.get("&sf"), 100.0D);
    if (d1 >= 100.0D) {
      return false;
    }
    if (a((String)paramMap.get("&cid")) % 10000 >= d1 * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        fq.c(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  private void d(Map<String, String> paramMap)
  {
    eH localeH = eH.a();
    fF.a(paramMap, "&an", localeH.b("&an"));
    fF.a(paramMap, "&av", localeH.b("&av"));
    fF.a(paramMap, "&aid", localeH.b("&aid"));
    fF.a(paramMap, "&aiid", localeH.b("&aiid"));
    paramMap.put("&v", "1");
  }
  
  public void a()
  {
    a(new fi(this));
  }
  
  @VisibleForTesting
  void a(Runnable paramRunnable)
  {
    a.add(paramRunnable);
  }
  
  public void a(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(paramMap);
    String str = (String)paramMap.get("&ht");
    paramMap = str;
    if (str != null) {}
    try
    {
      Long.valueOf(str).longValue();
      paramMap = str;
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        paramMap = null;
      }
    }
    if (paramMap == null) {
      localHashMap.put("&ht", Long.toString(System.currentTimeMillis()));
    }
    a(new fh(this, localHashMap));
  }
  
  public void b()
  {
    a(new fj(this));
  }
  
  public void c()
  {
    a(new fk(this));
  }
  
  public LinkedBlockingQueue<Runnable> d()
  {
    return a;
  }
  
  public Thread e()
  {
    return this;
  }
  
  @VisibleForTesting
  protected void f()
  {
    h.f();
    d = new ArrayList();
    d.add(new Command("appendVersion", "&_v".substring(1), "ma3.0.1"));
    d.add(new Command("appendQueueTime", "&qt".substring(1), null));
    d.add(new Command("appendCacheBuster", "&z".substring(1), null));
  }
  
  public void run()
  {
    try
    {
      Thread.sleep(5000L);
      for (;;)
      {
        try
        {
          if (h == null) {
            h = new eX(i, this);
          }
          f();
          f = eI.a().b("&cid");
          e = b(i);
        }
        catch (Throwable localThrowable2)
        {
          fq.a("Error initializing the GAThread: " + a(localThrowable2));
          fq.a("Google Analytics will not start up.");
          b = true;
          continue;
        }
        if (c) {
          return;
        }
        try
        {
          Runnable localRunnable = (Runnable)a.take();
          if (!b) {
            localRunnable.run();
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          fq.b(localInterruptedException1.toString());
        }
        catch (Throwable localThrowable1)
        {
          fq.a("Error on GAThread: " + a(localThrowable1));
          fq.a("Google Analytics is shutting down.");
          b = true;
        }
      }
    }
    catch (InterruptedException localInterruptedException2)
    {
      for (;;)
      {
        fq.d("sleep interrupted in GAThread initialize");
      }
    }
  }
}

/* Location:
 * Qualified Name:     fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */