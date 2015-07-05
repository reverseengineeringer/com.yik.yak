package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import iE;
import jU;
import jV;
import java.io.IOException;

public class AdvertisingIdClient
{
  a ln;
  jU lo;
  boolean lp;
  Object lq = new Object();
  AdvertisingIdClient.a lr;
  final long ls;
  private final Context mContext;
  
  public AdvertisingIdClient(Context paramContext)
  {
    this(paramContext, 30000L);
  }
  
  public AdvertisingIdClient(Context paramContext, long paramLong)
  {
    iE.a(paramContext);
    mContext = paramContext;
    lp = false;
    ls = paramLong;
  }
  
  private void Z()
  {
    synchronized (lq)
    {
      if (lr != null) {
        lr.cancel();
      }
    }
    try
    {
      lr.join();
      if (ls > 0L) {
        lr = new AdvertisingIdClient.a(this, ls);
      }
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  static jU a(Context paramContext, a parama)
  {
    try
    {
      paramContext = jV.a(parama.gs());
      return paramContext;
    }
    catch (InterruptedException paramContext)
    {
      throw new IOException("Interrupted exception");
    }
  }
  
  public static AdvertisingIdClient.Info getAdvertisingIdInfo(Context paramContext)
  {
    paramContext = new AdvertisingIdClient(paramContext, -1L);
    try
    {
      paramContext.b(false);
      AdvertisingIdClient.Info localInfo = paramContext.getInfo();
      return localInfo;
    }
    finally
    {
      paramContext.finish();
    }
  }
  
  static a h(Context paramContext)
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      a locala;
      Intent localIntent;
      throw new IOException("Connection failure");
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        GooglePlayServicesUtil.C(paramContext);
        locala = new a();
        localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
        localIntent.setPackage("com.google.android.gms");
        if (!paramContext.bindService(localIntent, locala, 1)) {
          break label73;
        }
        return locala;
      }
      catch (GooglePlayServicesNotAvailableException paramContext)
      {
        throw new IOException(paramContext);
      }
      paramContext = paramContext;
      throw new GooglePlayServicesNotAvailableException(9);
    }
  }
  
  protected void b(boolean paramBoolean)
  {
    iE.c("Calling this from your main thread can lead to deadlock");
    try
    {
      if (lp) {
        finish();
      }
      ln = h(mContext);
      lo = a(mContext, ln);
      lp = true;
      if (paramBoolean) {
        Z();
      }
      return;
    }
    finally {}
  }
  
  protected void finalize()
  {
    finish();
    super.finalize();
  }
  
  /* Error */
  public void finish()
  {
    // Byte code:
    //   0: ldc -113
    //   2: invokestatic 146	iE:c	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 39	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 150	com/google/android/gms/ads/identifier/AdvertisingIdClient:ln	Lcom/google/android/gms/common/a;
    //   18: ifnonnull +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:lp	Z
    //   28: ifeq +14 -> 42
    //   31: aload_0
    //   32: getfield 39	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   35: aload_0
    //   36: getfield 150	com/google/android/gms/ads/identifier/AdvertisingIdClient:ln	Lcom/google/android/gms/common/a;
    //   39: invokevirtual 165	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   42: aload_0
    //   43: iconst_0
    //   44: putfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:lp	Z
    //   47: aload_0
    //   48: aconst_null
    //   49: putfield 154	com/google/android/gms/ads/identifier/AdvertisingIdClient:lo	LjU;
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 150	com/google/android/gms/ads/identifier/AdvertisingIdClient:ln	Lcom/google/android/gms/common/a;
    //   57: aload_0
    //   58: monitorexit
    //   59: return
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    //   65: astore_1
    //   66: goto -24 -> 42
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	AdvertisingIdClient
    //   60	4	1	localObject	Object
    //   65	1	1	localIllegalArgumentException	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   7	21	60	finally
    //   21	23	60	finally
    //   24	42	60	finally
    //   42	59	60	finally
    //   61	63	60	finally
    //   24	42	65	java/lang/IllegalArgumentException
  }
  
  /* Error */
  public AdvertisingIdClient.Info getInfo()
  {
    // Byte code:
    //   0: ldc -113
    //   2: invokestatic 146	iE:c	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:lp	Z
    //   11: ifne +83 -> 94
    //   14: aload_0
    //   15: getfield 31	com/google/android/gms/ads/identifier/AdvertisingIdClient:lq	Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:lr	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$a;
    //   25: ifnull +13 -> 38
    //   28: aload_0
    //   29: getfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:lr	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$a;
    //   32: invokevirtual 173	com/google/android/gms/ads/identifier/AdvertisingIdClient$a:aa	()Z
    //   35: ifne +23 -> 58
    //   38: new 72	java/io/IOException
    //   41: dup
    //   42: ldc -81
    //   44: invokespecial 77	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: astore_2
    //   49: aload_1
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_1
    //   59: monitorexit
    //   60: aload_0
    //   61: iconst_0
    //   62: invokevirtual 85	com/google/android/gms/ads/identifier/AdvertisingIdClient:b	(Z)V
    //   65: aload_0
    //   66: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:lp	Z
    //   69: ifne +25 -> 94
    //   72: new 72	java/io/IOException
    //   75: dup
    //   76: ldc -79
    //   78: invokespecial 77	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   81: athrow
    //   82: astore_1
    //   83: new 72	java/io/IOException
    //   86: dup
    //   87: ldc -79
    //   89: aload_1
    //   90: invokespecial 180	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: athrow
    //   94: aload_0
    //   95: getfield 150	com/google/android/gms/ads/identifier/AdvertisingIdClient:ln	Lcom/google/android/gms/common/a;
    //   98: invokestatic 37	iE:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: aload_0
    //   103: getfield 154	com/google/android/gms/ads/identifier/AdvertisingIdClient:lo	LjU;
    //   106: invokestatic 37	iE:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   109: pop
    //   110: new 182	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   113: dup
    //   114: aload_0
    //   115: getfield 154	com/google/android/gms/ads/identifier/AdvertisingIdClient:lo	LjU;
    //   118: invokeinterface 187 1 0
    //   123: aload_0
    //   124: getfield 154	com/google/android/gms/ads/identifier/AdvertisingIdClient:lo	LjU;
    //   127: iconst_1
    //   128: invokeinterface 190 2 0
    //   133: invokespecial 193	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info:<init>	(Ljava/lang/String;Z)V
    //   136: astore_1
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: invokespecial 156	com/google/android/gms/ads/identifier/AdvertisingIdClient:Z	()V
    //   143: aload_1
    //   144: areturn
    //   145: astore_1
    //   146: new 72	java/io/IOException
    //   149: dup
    //   150: ldc -61
    //   152: invokespecial 77	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   155: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	AdvertisingIdClient
    //   53	6	1	localObject2	Object
    //   82	8	1	localException	Exception
    //   136	8	1	localInfo	AdvertisingIdClient.Info
    //   145	1	1	localRemoteException	android.os.RemoteException
    //   48	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   21	38	48	finally
    //   38	48	48	finally
    //   49	51	48	finally
    //   58	60	48	finally
    //   7	21	53	finally
    //   51	53	53	finally
    //   54	56	53	finally
    //   60	65	53	finally
    //   65	82	53	finally
    //   83	94	53	finally
    //   94	110	53	finally
    //   110	137	53	finally
    //   137	139	53	finally
    //   146	156	53	finally
    //   60	65	82	java/lang/Exception
    //   110	137	145	android/os/RemoteException
  }
  
  public void start()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */