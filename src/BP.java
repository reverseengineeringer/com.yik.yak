import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

class bp
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new bq();
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final aV e;
  private Thread f;
  
  public bp(aV paramaV)
  {
    if (paramaV == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    e = paramaV;
  }
  
  List<bo> a()
  {
    GS.g();
    synchronized (d)
    {
      File[] arrayOfFile = al.f().u().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        GS.g();
        new StringBuilder().append("Found crash report ").append(localFile.getPath()).toString();
        ((List)???).add(new bt(localFile));
        i += 1;
      }
    }
    if (((List)???).isEmpty()) {
      GS.g();
    }
    return (List<bo>)???;
  }
  
  public void a(float paramFloat)
  {
    try
    {
      if (f == null)
      {
        f = new Thread(new br(this, paramFloat), "Crashlytics Report Uploader");
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
  
  boolean a(bo parambo)
  {
    boolean bool2 = false;
    synchronized (d)
    {
      try
      {
        localObject1 = al.f().C();
        localObject1 = new aU(new Hu().a((Context)localObject1), parambo);
        boolean bool3 = e.a((aU)localObject1);
        GS.g();
        StringBuilder localStringBuilder = new StringBuilder().append("Crashlytics report upload ");
        if (!bool3) {
          break label122;
        }
        localObject1 = "complete: ";
        localStringBuilder.append((String)localObject1).append(parambo.b()).toString();
        bool1 = bool2;
        if (bool3)
        {
          parambo.a();
          bool1 = true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          label122:
          GS.g();
          new StringBuilder().append("Error occurred sending report ").append(parambo).toString();
          boolean bool1 = bool2;
        }
      }
      return bool1;
      localObject1 = "FAILED: ";
    }
  }
}

/* Location:
 * Qualified Name:     bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */