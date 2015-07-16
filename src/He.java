import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ha;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class he
  extends Thread
  implements gw
{
  private static he e;
  private final LinkedBlockingQueue<Runnable> a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile String d;
  private volatile gj f;
  private final Context g;
  private final Lock h;
  private final List<ha> i = new ArrayList();
  
  private he(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (g = paramContext.getApplicationContext();; g = paramContext)
    {
      i.add(new ha("appendVersion", "&_v".substring(1), "ma4.0.4"));
      h = new ReentrantLock();
      start();
      return;
    }
  }
  
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
  
  static he a(Context paramContext)
  {
    if (e == null) {
      e = new he(paramContext);
    }
    return e;
  }
  
  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  private void a(Runnable paramRunnable)
  {
    a.add(paramRunnable);
  }
  
  static String b(Context paramContext)
  {
    try
    {
      localObject = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[' '];
      j = ((FileInputStream)localObject).read(arrayOfByte, 0, 8192);
      if (((FileInputStream)localObject).available() > 0)
      {
        gc.a("Too much campaign data, ignoring it.");
        ((FileInputStream)localObject).close();
        paramContext.deleteFile("gaInstallData");
        return null;
      }
      ((FileInputStream)localObject).close();
      paramContext.deleteFile("gaInstallData");
      if (j <= 0)
      {
        gc.d("Campaign file is empty.");
        return null;
      }
    }
    catch (FileNotFoundException paramContext)
    {
      byte[] arrayOfByte;
      int j;
      gc.b("No campaign data found.");
      return null;
      Object localObject = new String(arrayOfByte, 0, j);
      gc.b("Campaign found: " + (String)localObject);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      gc.a("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    return null;
  }
  
  public void a()
  {
    a(new hg(this, null));
  }
  
  public void a(Map<String, String> paramMap)
  {
    a(new hi(this, paramMap));
  }
  
  public void b()
  {
    a(new hh(this, null));
  }
  
  public LinkedBlockingQueue<Runnable> c()
  {
    return a;
  }
  
  public Thread d()
  {
    return this;
  }
  
  public void e()
  {
    f();
    Object localObject1 = new ArrayList();
    a.drainTo((Collection)localObject1);
    h.lock();
    try
    {
      b = true;
      localObject1 = ((List)localObject1).iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          Runnable localRunnable = (Runnable)((Iterator)localObject1).next();
          try
          {
            localRunnable.run();
          }
          catch (Throwable localThrowable)
          {
            gc.a("Error dispatching all events on exit, giving up: " + a(localThrowable));
          }
        }
      }
      return;
    }
    finally
    {
      h.unlock();
    }
  }
  
  /* Error */
  protected void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 205	he:f	Lgj;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: new 265	gW
    //   18: dup
    //   19: aload_0
    //   20: getfield 56	he:g	Landroid/content/Context;
    //   23: aload_0
    //   24: invokespecial 268	gW:<init>	(Landroid/content/Context;Lgw;)V
    //   27: putfield 205	he:f	Lgj;
    //   30: aload_0
    //   31: getfield 205	he:f	Lgj;
    //   34: invokeinterface 272 1 0
    //   39: goto -28 -> 11
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	he
    //   6	2	1	localgj	gj
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	42	finally
    //   14	39	42	finally
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 280	android/os/Process:setThreadPriority	(I)V
    //   5: ldc2_w 281
    //   8: invokestatic 286	java/lang/Thread:sleep	(J)V
    //   11: aload_0
    //   12: invokevirtual 228	he:f	()V
    //   15: aload_0
    //   16: aload_0
    //   17: getfield 56	he:g	Landroid/content/Context;
    //   20: invokestatic 288	he:b	(Landroid/content/Context;)Ljava/lang/String;
    //   23: putfield 114	he:d	Ljava/lang/String;
    //   26: ldc_w 290
    //   29: invokestatic 292	gc:c	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 43	he:c	Z
    //   36: ifne +165 -> 201
    //   39: aload_0
    //   40: getfield 39	he:a	Ljava/util/concurrent/LinkedBlockingQueue;
    //   43: invokevirtual 295	java/util/concurrent/LinkedBlockingQueue:take	()Ljava/lang/Object;
    //   46: checkcast 253	java/lang/Runnable
    //   49: astore_1
    //   50: aload_0
    //   51: getfield 84	he:h	Ljava/util/concurrent/locks/Lock;
    //   54: invokeinterface 237 1 0
    //   59: aload_0
    //   60: getfield 41	he:b	Z
    //   63: ifne +9 -> 72
    //   66: aload_1
    //   67: invokeinterface 256 1 0
    //   72: aload_0
    //   73: getfield 84	he:h	Ljava/util/concurrent/locks/Lock;
    //   76: invokeinterface 263 1 0
    //   81: goto -49 -> 32
    //   84: astore_1
    //   85: aload_1
    //   86: invokevirtual 296	java/lang/InterruptedException:toString	()Ljava/lang/String;
    //   89: invokestatic 182	gc:b	(Ljava/lang/String;)V
    //   92: goto -60 -> 32
    //   95: astore_1
    //   96: new 187	java/lang/StringBuilder
    //   99: dup
    //   100: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   103: ldc_w 298
    //   106: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: aload_0
    //   110: aload_1
    //   111: invokespecial 260	he:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   114: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 198	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 167	gc:a	(Ljava/lang/String;)V
    //   123: ldc_w 300
    //   126: invokestatic 167	gc:a	(Ljava/lang/String;)V
    //   129: aload_0
    //   130: iconst_1
    //   131: putfield 41	he:b	Z
    //   134: goto -102 -> 32
    //   137: astore_1
    //   138: ldc_w 302
    //   141: invokestatic 178	gc:d	(Ljava/lang/String;)V
    //   144: goto -133 -> 11
    //   147: astore_1
    //   148: new 187	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   155: ldc_w 304
    //   158: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: aload_1
    //   163: invokespecial 260	he:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   166: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 198	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokestatic 167	gc:a	(Ljava/lang/String;)V
    //   175: ldc_w 306
    //   178: invokestatic 167	gc:a	(Ljava/lang/String;)V
    //   181: aload_0
    //   182: iconst_1
    //   183: putfield 41	he:b	Z
    //   186: goto -154 -> 32
    //   189: astore_1
    //   190: aload_0
    //   191: getfield 84	he:h	Ljava/util/concurrent/locks/Lock;
    //   194: invokeinterface 263 1 0
    //   199: aload_1
    //   200: athrow
    //   201: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	202	0	this	he
    //   49	18	1	localRunnable	Runnable
    //   84	2	1	localInterruptedException1	InterruptedException
    //   95	16	1	localThrowable1	Throwable
    //   137	1	1	localInterruptedException2	InterruptedException
    //   147	16	1	localThrowable2	Throwable
    //   189	11	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   39	59	84	java/lang/InterruptedException
    //   72	81	84	java/lang/InterruptedException
    //   190	201	84	java/lang/InterruptedException
    //   39	59	95	java/lang/Throwable
    //   72	81	95	java/lang/Throwable
    //   85	92	95	java/lang/Throwable
    //   190	201	95	java/lang/Throwable
    //   5	11	137	java/lang/InterruptedException
    //   11	32	147	java/lang/Throwable
    //   59	72	189	finally
  }
}

/* Location:
 * Qualified Name:     he
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */