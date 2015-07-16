import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

class bl
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new bm();
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final aR e;
  private Thread f;
  
  public bl(aR paramaR)
  {
    if (paramaR == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    e = paramaR;
  }
  
  List<bk> a()
  {
    HA.g();
    synchronized (d)
    {
      File[] arrayOfFile = ah.f().u().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        HA.g();
        new StringBuilder().append("Found crash report ").append(localFile.getPath()).toString();
        ((List)???).add(new bp(localFile));
        i += 1;
      }
    }
    if (((List)???).isEmpty()) {
      HA.g();
    }
    return (List<bk>)???;
  }
  
  public void a(float paramFloat)
  {
    try
    {
      if (f == null)
      {
        f = new Thread(new bn(this, paramFloat), "Crashlytics Report Uploader");
        f.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  boolean a(bk parambk)
  {
    boolean bool2 = false;
    synchronized (d)
    {
      try
      {
        localObject1 = ah.f().C();
        localObject1 = new aQ(new Ic().a((Context)localObject1), parambk);
        boolean bool3 = e.a((aQ)localObject1);
        HA.g();
        StringBuilder localStringBuilder = new StringBuilder().append("Crashlytics report upload ");
        if (!bool3) {
          break label122;
        }
        localObject1 = "complete: ";
        localStringBuilder.append((String)localObject1).append(parambk.b()).toString();
        bool1 = bool2;
        if (bool3)
        {
          parambk.a();
          bool1 = true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          label122:
          HA.g();
          new StringBuilder().append("Error occurred sending report ").append(parambk).toString();
          boolean bool1 = bool2;
        }
      }
      return bool1;
      localObject1 = "FAILED: ";
    }
  }
}

/* Location:
 * Qualified Name:     bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */