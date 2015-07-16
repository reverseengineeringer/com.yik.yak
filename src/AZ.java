import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class az
  implements Thread.UncaughtExceptionHandler
{
  static final FilenameFilter a = new aA();
  static final Comparator<File> b = new aG();
  static final Comparator<File> c = new aH();
  static final FilenameFilter d = new aI();
  private static final Pattern e = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
  private static final Map<String, String> f = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final Thread.UncaughtExceptionHandler i;
  private final File j;
  private final AtomicBoolean k;
  private final BroadcastReceiver l;
  private final BroadcastReceiver m;
  private final at n;
  private final Iq o;
  private boolean p;
  private final ah q;
  private final aV r;
  private final bo s;
  
  az(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, aw paramaw, at paramat, Iq paramIq, bo parambo, ah paramah)
  {
    i = paramUncaughtExceptionHandler;
    n = paramat;
    o = paramIq;
    q = paramah;
    s = parambo;
    k = new AtomicBoolean(false);
    j = paramah.u();
    r = new aV(paramah.C(), j);
    a(paramaw);
    m = new aJ(this);
    paramUncaughtExceptionHandler = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    l = new aK(this);
    paramaw = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    paramat = paramah.C();
    paramat.registerReceiver(m, paramUncaughtExceptionHandler);
    paramat.registerReceiver(l, paramaw);
    h.set(true);
  }
  
  private String a(File paramFile)
  {
    return paramFile.getName().substring(0, 35);
  }
  
  private void a(int paramInt)
  {
    int i1 = 0;
    HashSet localHashSet = new HashSet();
    File[] arrayOfFile = e();
    Arrays.sort(arrayOfFile, b);
    int i2 = Math.min(paramInt, arrayOfFile.length);
    paramInt = 0;
    while (paramInt < i2)
    {
      localHashSet.add(a(arrayOfFile[paramInt]));
      paramInt += 1;
    }
    arrayOfFile = a(new aN(null));
    i2 = arrayOfFile.length;
    paramInt = i1;
    while (paramInt < i2)
    {
      File localFile = arrayOfFile[paramInt];
      String str = localFile.getName();
      Matcher localMatcher = e.matcher(str);
      localMatcher.matches();
      if (!localHashSet.contains(localMatcher.group(1)))
      {
        HA.g();
        new StringBuilder().append("Trimming open session file: ").append(str).toString();
        localFile.delete();
      }
      paramInt += 1;
    }
  }
  
  private void a(ad paramad)
  {
    if (paramad != null) {}
    try
    {
      paramad.a();
      return;
    }
    catch (IOException paramad)
    {
      HA.g();
    }
  }
  
  private void a(af paramaf, File paramFile)
  {
    if (paramFile.exists())
    {
      byte[] arrayOfByte = new byte[(int)paramFile.length()];
      try
      {
        paramFile = new FileInputStream(paramFile);
        int i1 = 0;
        int i2;
        Ie.a(paramFile, "Failed to close file input stream.");
      }
      finally
      {
        try
        {
          while (i1 < arrayOfByte.length)
          {
            i2 = paramFile.read(arrayOfByte, i1, arrayOfByte.length - i1);
            if (i2 < 0) {
              break;
            }
            i1 += i2;
          }
          Ie.a(paramFile, "Failed to close file input stream.");
          paramaf.a(arrayOfByte);
          return;
        }
        finally
        {
          for (;;) {}
        }
        paramaf = finally;
        paramFile = null;
      }
      throw paramaf;
    }
    HA.g();
    new StringBuilder().append("Tried to include a file that doesn't exist: ").append(paramFile.getName()).toString();
  }
  
  private void a(af paramaf, String paramString)
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "SessionUser";
    arrayOfString[1] = "SessionApp";
    arrayOfString[2] = "SessionOS";
    arrayOfString[3] = "SessionDevice";
    int i2 = arrayOfString.length;
    int i1 = 0;
    if (i1 < i2)
    {
      String str = arrayOfString[i1];
      File[] arrayOfFile = a(new aO(paramString + str));
      if (arrayOfFile.length == 0)
      {
        HA.g();
        new StringBuilder().append("Can't find ").append(str).append(" data for session ID ").append(paramString).toString();
      }
      for (;;)
      {
        i1 += 1;
        break;
        HA.g();
        new StringBuilder().append("Collecting ").append(str).append(" data for session ID ").append(paramString).toString();
        a(paramaf, arrayOfFile[0]);
      }
    }
  }
  
  private void a(af paramaf, Date paramDate, Thread paramThread, Throwable paramThrowable, String paramString, boolean paramBoolean)
  {
    Context localContext = q.C();
    long l1 = paramDate.getTime() / 1000L;
    float f1 = Ie.c(localContext);
    int i2 = Ie.a(localContext, p);
    boolean bool = Ie.d(localContext);
    int i3 = getResourcesgetConfigurationorientation;
    long l2 = Ie.b();
    long l3 = Ie.b(localContext);
    long l4 = Ie.b(Environment.getDataDirectory().getPath());
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = Ie.a(localContext.getPackageName(), localContext);
    LinkedList localLinkedList = new LinkedList();
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    if (paramBoolean)
    {
      localObject = Thread.getAllStackTraces();
      paramDate = new Thread[((Map)localObject).size()];
      Iterator localIterator = ((Map)localObject).entrySet().iterator();
      int i1 = 0;
      for (;;)
      {
        localObject = paramDate;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
        paramDate[i1] = ((Thread)((Map.Entry)localObject).getKey());
        localLinkedList.add(((Map.Entry)localObject).getValue());
        i1 += 1;
      }
    }
    Object localObject = new Thread[0];
    if (!Ie.a(localContext, "com.crashlytics.CollectCustomKeys", true)) {
      paramDate = new TreeMap();
    }
    for (;;)
    {
      s.a(paramaf, l1, paramThread, paramThrowable, paramString, (Thread[])localObject, f1, i2, bool, i3, l2 - l3, l4, localRunningAppProcessInfo, localLinkedList, arrayOfStackTraceElement, r.a(), paramDate);
      return;
      paramDate = q.g();
      if ((paramDate != null) && (paramDate.size() > 1)) {
        paramDate = new TreeMap(paramDate);
      }
    }
  }
  
  private void a(af paramaf, File[] paramArrayOfFile, String paramString)
  {
    int i1 = 0;
    Arrays.sort(paramArrayOfFile, Ie.a);
    int i2 = paramArrayOfFile.length;
    for (;;)
    {
      if (i1 < i2)
      {
        File localFile = paramArrayOfFile[i1];
        try
        {
          HA.g();
          String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[] { paramString, localFile.getName() });
          a(paramaf, localFile);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            HA.g();
          }
        }
      }
    }
  }
  
  private void a(aw paramaw)
  {
    HA.g();
    paramaw = new File(q.u(), "crash_marker");
    if (paramaw.exists()) {
      paramaw.delete();
    }
  }
  
  /* Error */
  private void a(bS parambS)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokespecial 471	az:j	()Ljava/lang/String;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +60 -> 68
    //   11: new 259	ad
    //   14: dup
    //   15: aload_0
    //   16: getfield 125	az:j	Ljava/io/File;
    //   19: new 241	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   26: aload_2
    //   27: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 473
    //   33: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore_2
    //   43: aload_2
    //   44: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   47: astore_3
    //   48: aload_1
    //   49: aload_3
    //   50: invokestatic 482	aX:a	(LbS;Laf;)V
    //   53: aload_3
    //   54: ldc_w 484
    //   57: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   60: aload_2
    //   61: ldc_w 489
    //   64: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   67: return
    //   68: invokestatic 239	HA:g	()LHM;
    //   71: pop
    //   72: aconst_null
    //   73: astore_2
    //   74: goto -21 -> 53
    //   77: astore_1
    //   78: aconst_null
    //   79: astore_3
    //   80: aconst_null
    //   81: astore_2
    //   82: invokestatic 239	HA:g	()LHM;
    //   85: pop
    //   86: aload_1
    //   87: aload_3
    //   88: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   91: aload_2
    //   92: ldc_w 484
    //   95: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   98: aload_3
    //   99: ldc_w 489
    //   102: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   105: return
    //   106: astore_1
    //   107: aconst_null
    //   108: astore_3
    //   109: aconst_null
    //   110: astore_2
    //   111: aload_2
    //   112: ldc_w 484
    //   115: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   118: aload_3
    //   119: ldc_w 489
    //   122: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   125: aload_1
    //   126: athrow
    //   127: astore_1
    //   128: aload_2
    //   129: astore_3
    //   130: aconst_null
    //   131: astore_2
    //   132: goto -21 -> 111
    //   135: astore_1
    //   136: aload_2
    //   137: astore 4
    //   139: aload_3
    //   140: astore_2
    //   141: aload 4
    //   143: astore_3
    //   144: goto -33 -> 111
    //   147: astore_1
    //   148: goto -37 -> 111
    //   151: astore_1
    //   152: aload_2
    //   153: astore_3
    //   154: aconst_null
    //   155: astore_2
    //   156: goto -74 -> 82
    //   159: astore_1
    //   160: aload_2
    //   161: astore 4
    //   163: aload_3
    //   164: astore_2
    //   165: aload 4
    //   167: astore_3
    //   168: goto -86 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	this	az
    //   0	171	1	parambS	bS
    //   6	159	2	localObject1	Object
    //   1	167	3	localObject2	Object
    //   137	29	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	77	java/lang/Exception
    //   11	43	77	java/lang/Exception
    //   68	72	77	java/lang/Exception
    //   2	7	106	finally
    //   11	43	106	finally
    //   68	72	106	finally
    //   43	48	127	finally
    //   48	53	135	finally
    //   82	91	147	finally
    //   43	48	151	java/lang/Exception
    //   48	53	159	java/lang/Exception
  }
  
  /* Error */
  private void a(File paramFile, String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: invokestatic 239	HA:g	()LHM;
    //   6: pop
    //   7: new 241	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   14: ldc_w 497
    //   17: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: aload_2
    //   21: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: pop
    //   28: aload_0
    //   29: new 303	aO
    //   32: dup
    //   33: new 241	java/lang/StringBuilder
    //   36: dup
    //   37: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   40: aload_2
    //   41: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 473
    //   47: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokespecial 304	aO:<init>	(Ljava/lang/String;)V
    //   56: invokespecial 217	az:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   59: astore 9
    //   61: aload 9
    //   63: ifnull +378 -> 441
    //   66: aload 9
    //   68: arraylength
    //   69: ifle +372 -> 441
    //   72: iconst_1
    //   73: istore 4
    //   75: invokestatic 239	HA:g	()LHM;
    //   78: pop
    //   79: getstatic 450	java/util/Locale:US	Ljava/util/Locale;
    //   82: ldc_w 499
    //   85: iconst_2
    //   86: anewarray 4	java/lang/Object
    //   89: dup
    //   90: iconst_0
    //   91: aload_2
    //   92: aastore
    //   93: dup
    //   94: iconst_1
    //   95: iload 4
    //   97: invokestatic 505	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   100: aastore
    //   101: invokestatic 456	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   104: pop
    //   105: aload_0
    //   106: new 303	aO
    //   109: dup
    //   110: new 241	java/lang/StringBuilder
    //   113: dup
    //   114: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   117: aload_2
    //   118: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc_w 507
    //   124: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokespecial 304	aO:<init>	(Ljava/lang/String;)V
    //   133: invokespecial 217	az:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   136: astore 8
    //   138: aload 8
    //   140: ifnull +307 -> 447
    //   143: aload 8
    //   145: arraylength
    //   146: ifle +301 -> 447
    //   149: iconst_1
    //   150: istore 5
    //   152: invokestatic 239	HA:g	()LHM;
    //   155: pop
    //   156: getstatic 450	java/util/Locale:US	Ljava/util/Locale;
    //   159: ldc_w 509
    //   162: iconst_2
    //   163: anewarray 4	java/lang/Object
    //   166: dup
    //   167: iconst_0
    //   168: aload_2
    //   169: aastore
    //   170: dup
    //   171: iconst_1
    //   172: iload 5
    //   174: invokestatic 505	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   177: aastore
    //   178: invokestatic 456	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   181: pop
    //   182: iload 4
    //   184: ifne +8 -> 192
    //   187: iload 5
    //   189: ifeq +343 -> 532
    //   192: new 259	ad
    //   195: dup
    //   196: aload_0
    //   197: getfield 125	az:j	Ljava/io/File;
    //   200: aload_2
    //   201: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   204: astore 6
    //   206: aload 6
    //   208: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   211: astore 7
    //   213: invokestatic 239	HA:g	()LHM;
    //   216: pop
    //   217: new 241	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   224: ldc_w 511
    //   227: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: aload_2
    //   231: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: pop
    //   238: aload_0
    //   239: aload 7
    //   241: aload_1
    //   242: invokespecial 312	az:a	(Laf;Ljava/io/File;)V
    //   245: aload 7
    //   247: iconst_4
    //   248: new 315	java/util/Date
    //   251: dup
    //   252: invokespecial 512	java/util/Date:<init>	()V
    //   255: invokevirtual 318	java/util/Date:getTime	()J
    //   258: ldc2_w 319
    //   261: ldiv
    //   262: invokevirtual 515	af:a	(IJ)V
    //   265: aload 7
    //   267: iconst_5
    //   268: iload 4
    //   270: invokevirtual 518	af:a	(IZ)V
    //   273: aload_0
    //   274: aload 7
    //   276: aload_2
    //   277: invokespecial 520	az:a	(Laf;Ljava/lang/String;)V
    //   280: iload 5
    //   282: ifeq +81 -> 363
    //   285: aload 8
    //   287: arraylength
    //   288: iload_3
    //   289: if_icmple +303 -> 592
    //   292: invokestatic 239	HA:g	()LHM;
    //   295: pop
    //   296: getstatic 450	java/util/Locale:US	Ljava/util/Locale;
    //   299: ldc_w 522
    //   302: iconst_1
    //   303: anewarray 4	java/lang/Object
    //   306: dup
    //   307: iconst_0
    //   308: iload_3
    //   309: invokestatic 527	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   312: aastore
    //   313: invokestatic 456	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   316: pop
    //   317: aload_0
    //   318: aload_2
    //   319: iload_3
    //   320: invokespecial 530	az:a	(Ljava/lang/String;I)V
    //   323: aload_0
    //   324: new 303	aO
    //   327: dup
    //   328: new 241	java/lang/StringBuilder
    //   331: dup
    //   332: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   335: aload_2
    //   336: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: ldc_w 507
    //   342: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: invokespecial 304	aO:<init>	(Ljava/lang/String;)V
    //   351: invokespecial 217	az:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   354: astore_1
    //   355: aload_0
    //   356: aload 7
    //   358: aload_1
    //   359: aload_2
    //   360: invokespecial 532	az:a	(Laf;[Ljava/io/File;Ljava/lang/String;)V
    //   363: iload 4
    //   365: ifeq +13 -> 378
    //   368: aload_0
    //   369: aload 7
    //   371: aload 9
    //   373: iconst_0
    //   374: aaload
    //   375: invokespecial 312	az:a	(Laf;Ljava/io/File;)V
    //   378: aload 7
    //   380: bipush 11
    //   382: iconst_1
    //   383: invokevirtual 535	af:b	(II)V
    //   386: aload 7
    //   388: bipush 12
    //   390: iconst_3
    //   391: invokevirtual 537	af:c	(II)V
    //   394: aload 7
    //   396: ldc_w 539
    //   399: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   402: aload 6
    //   404: ldc_w 541
    //   407: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   410: invokestatic 239	HA:g	()LHM;
    //   413: pop
    //   414: new 241	java/lang/StringBuilder
    //   417: dup
    //   418: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   421: ldc_w 543
    //   424: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: aload_2
    //   428: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   434: pop
    //   435: aload_0
    //   436: aload_2
    //   437: invokespecial 545	az:a	(Ljava/lang/String;)V
    //   440: return
    //   441: iconst_0
    //   442: istore 4
    //   444: goto -369 -> 75
    //   447: iconst_0
    //   448: istore 5
    //   450: goto -298 -> 152
    //   453: astore 8
    //   455: aconst_null
    //   456: astore_1
    //   457: aload 7
    //   459: astore 6
    //   461: invokestatic 239	HA:g	()LHM;
    //   464: pop
    //   465: new 241	java/lang/StringBuilder
    //   468: dup
    //   469: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   472: ldc_w 547
    //   475: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: aload_2
    //   479: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   485: pop
    //   486: aload 8
    //   488: aload 6
    //   490: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   493: aload_1
    //   494: ldc_w 539
    //   497: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   500: aload_0
    //   501: aload 6
    //   503: invokespecial 549	az:a	(Lad;)V
    //   506: goto -96 -> 410
    //   509: astore_2
    //   510: aconst_null
    //   511: astore_1
    //   512: aconst_null
    //   513: astore 6
    //   515: aload_1
    //   516: ldc_w 539
    //   519: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   522: aload 6
    //   524: ldc_w 541
    //   527: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   530: aload_2
    //   531: athrow
    //   532: invokestatic 239	HA:g	()LHM;
    //   535: pop
    //   536: new 241	java/lang/StringBuilder
    //   539: dup
    //   540: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   543: ldc_w 551
    //   546: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: aload_2
    //   550: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   553: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   556: pop
    //   557: goto -147 -> 410
    //   560: astore_2
    //   561: aconst_null
    //   562: astore_1
    //   563: goto -48 -> 515
    //   566: astore_2
    //   567: aload 7
    //   569: astore_1
    //   570: goto -55 -> 515
    //   573: astore_2
    //   574: goto -59 -> 515
    //   577: astore 8
    //   579: aconst_null
    //   580: astore_1
    //   581: goto -120 -> 461
    //   584: astore 8
    //   586: aload 7
    //   588: astore_1
    //   589: goto -128 -> 461
    //   592: aload 8
    //   594: astore_1
    //   595: goto -240 -> 355
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	598	0	this	az
    //   0	598	1	paramFile	File
    //   0	598	2	paramString	String
    //   0	598	3	paramInt	int
    //   73	370	4	bool1	boolean
    //   150	299	5	bool2	boolean
    //   204	319	6	localObject	Object
    //   1	586	7	localaf	af
    //   136	150	8	arrayOfFile1	File[]
    //   453	34	8	localException1	Exception
    //   577	1	8	localException2	Exception
    //   584	9	8	localException3	Exception
    //   59	313	9	arrayOfFile2	File[]
    // Exception table:
    //   from	to	target	type
    //   192	206	453	java/lang/Exception
    //   192	206	509	finally
    //   206	213	560	finally
    //   213	280	566	finally
    //   285	355	566	finally
    //   355	363	566	finally
    //   368	378	566	finally
    //   378	394	566	finally
    //   461	493	573	finally
    //   206	213	577	java/lang/Exception
    //   213	280	584	java/lang/Exception
    //   285	355	584	java/lang/Exception
    //   355	363	584	java/lang/Exception
    //   368	378	584	java/lang/Exception
    //   378	394	584	java/lang/Exception
  }
  
  private void a(String paramString)
  {
    paramString = b(paramString);
    int i2 = paramString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramString[i1].delete();
      i1 += 1;
    }
  }
  
  private void a(String paramString, int paramInt)
  {
    bq.a(j, new aO(paramString + "SessionEvent"), paramInt, c);
  }
  
  /* Error */
  private void a(String paramString, Date paramDate)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 6
    //   12: new 259	ad
    //   15: dup
    //   16: aload_0
    //   17: getfield 125	az:j	Ljava/io/File;
    //   20: new 241	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   27: aload_1
    //   28: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc_w 562
    //   34: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   43: astore 7
    //   45: aload 9
    //   47: astore 5
    //   49: aload 8
    //   51: astore 6
    //   53: aload 7
    //   55: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   58: astore 8
    //   60: aload 8
    //   62: astore 5
    //   64: aload 8
    //   66: astore 6
    //   68: getstatic 450	java/util/Locale:US	Ljava/util/Locale;
    //   71: ldc_w 564
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_0
    //   81: getfield 113	az:q	Lah;
    //   84: invokevirtual 566	ah:d	()Ljava/lang/String;
    //   87: aastore
    //   88: invokestatic 456	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   91: astore 9
    //   93: aload 8
    //   95: astore 5
    //   97: aload 8
    //   99: astore 6
    //   101: aload_2
    //   102: invokevirtual 318	java/util/Date:getTime	()J
    //   105: ldc2_w 319
    //   108: ldiv
    //   109: lstore_3
    //   110: aload 8
    //   112: astore 5
    //   114: aload 8
    //   116: astore 6
    //   118: aload_0
    //   119: getfield 115	az:s	Lbo;
    //   122: aload 8
    //   124: aload_1
    //   125: aload 9
    //   127: lload_3
    //   128: invokevirtual 569	bo:a	(Laf;Ljava/lang/String;Ljava/lang/String;J)V
    //   131: aload 8
    //   133: ldc_w 484
    //   136: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   139: aload 7
    //   141: ldc_w 571
    //   144: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   147: return
    //   148: astore_2
    //   149: aconst_null
    //   150: astore_1
    //   151: aload_2
    //   152: aload_1
    //   153: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   156: aload_2
    //   157: athrow
    //   158: astore 7
    //   160: aload_1
    //   161: astore_2
    //   162: aload 6
    //   164: astore 5
    //   166: aload 7
    //   168: astore_1
    //   169: aload 5
    //   171: ldc_w 484
    //   174: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   177: aload_2
    //   178: ldc_w 571
    //   181: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   184: aload_1
    //   185: athrow
    //   186: astore_1
    //   187: aconst_null
    //   188: astore_2
    //   189: goto -20 -> 169
    //   192: astore_1
    //   193: aload 7
    //   195: astore_2
    //   196: goto -27 -> 169
    //   199: astore_2
    //   200: aload 7
    //   202: astore_1
    //   203: goto -52 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	az
    //   0	206	1	paramString	String
    //   0	206	2	paramDate	Date
    //   109	19	3	l1	long
    //   1	169	5	localObject1	Object
    //   10	153	6	localaf1	af
    //   43	97	7	localad	ad
    //   158	43	7	localObject2	Object
    //   7	125	8	localaf2	af
    //   4	122	9	str	String
    // Exception table:
    //   from	to	target	type
    //   12	45	148	java/lang/Exception
    //   151	158	158	finally
    //   12	45	186	finally
    //   53	60	192	finally
    //   68	93	192	finally
    //   101	110	192	finally
    //   118	131	192	finally
    //   53	60	199	java/lang/Exception
    //   68	93	199	java/lang/Exception
    //   101	110	199	java/lang/Exception
    //   118	131	199	java/lang/Exception
  }
  
  private void a(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    b(paramDate, paramThread, paramThrowable);
    l();
    k();
    f();
    if (!q.v()) {
      o();
    }
  }
  
  private File[] a(FilenameFilter paramFilenameFilter)
  {
    return b(j.listFiles(paramFilenameFilter));
  }
  
  /* Error */
  private void b(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 6
    //   15: new 172	java/io/File
    //   18: dup
    //   19: aload_0
    //   20: getfield 125	az:j	Ljava/io/File;
    //   23: ldc_w 458
    //   26: invokespecial 461	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   29: invokevirtual 596	java/io/File:createNewFile	()Z
    //   32: pop
    //   33: aload_0
    //   34: invokespecial 471	az:j	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload 5
    //   41: ifnull +103 -> 144
    //   44: aload 5
    //   46: invokestatic 597	ah:a	(Ljava/lang/String;)V
    //   49: new 259	ad
    //   52: dup
    //   53: aload_0
    //   54: getfield 125	az:j	Ljava/io/File;
    //   57: new 241	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   64: aload 5
    //   66: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc_w 473
    //   72: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   81: astore 5
    //   83: aload 9
    //   85: astore 4
    //   87: aload 5
    //   89: astore 6
    //   91: aload 8
    //   93: astore 7
    //   95: aload 5
    //   97: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   100: astore 8
    //   102: aload 8
    //   104: astore 4
    //   106: aload 5
    //   108: astore 6
    //   110: aload 8
    //   112: astore 7
    //   114: aload_0
    //   115: aload 8
    //   117: aload_1
    //   118: aload_2
    //   119: aload_3
    //   120: ldc_w 599
    //   123: iconst_1
    //   124: invokespecial 601	az:a	(Laf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    //   127: aload 8
    //   129: ldc_w 484
    //   132: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   135: aload 5
    //   137: ldc_w 489
    //   140: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   143: return
    //   144: invokestatic 239	HA:g	()LHM;
    //   147: pop
    //   148: aconst_null
    //   149: astore 5
    //   151: aload 6
    //   153: astore 8
    //   155: goto -28 -> 127
    //   158: astore_1
    //   159: aconst_null
    //   160: astore 5
    //   162: aload 7
    //   164: astore 4
    //   166: aload 5
    //   168: astore 6
    //   170: invokestatic 239	HA:g	()LHM;
    //   173: pop
    //   174: aload 7
    //   176: astore 4
    //   178: aload 5
    //   180: astore 6
    //   182: aload_1
    //   183: aload 5
    //   185: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   188: aload 7
    //   190: ldc_w 484
    //   193: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   196: aload 5
    //   198: ldc_w 489
    //   201: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   204: return
    //   205: astore_1
    //   206: aconst_null
    //   207: astore 6
    //   209: aload 4
    //   211: ldc_w 484
    //   214: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   217: aload 6
    //   219: ldc_w 489
    //   222: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   225: aload_1
    //   226: athrow
    //   227: astore_1
    //   228: goto -19 -> 209
    //   231: astore_1
    //   232: goto -70 -> 162
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	235	0	this	az
    //   0	235	1	paramDate	Date
    //   0	235	2	paramThread	Thread
    //   0	235	3	paramThrowable	Throwable
    //   4	206	4	localObject1	Object
    //   37	160	5	localObject2	Object
    //   13	205	6	localObject3	Object
    //   1	188	7	localObject4	Object
    //   10	144	8	localObject5	Object
    //   7	77	9	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   15	39	158	java/lang/Exception
    //   44	83	158	java/lang/Exception
    //   144	148	158	java/lang/Exception
    //   15	39	205	finally
    //   44	83	205	finally
    //   144	148	205	finally
    //   95	102	227	finally
    //   114	127	227	finally
    //   170	174	227	finally
    //   182	188	227	finally
    //   95	102	231	java/lang/Exception
    //   114	127	231	java/lang/Exception
  }
  
  private File[] b(String paramString)
  {
    return a(new aP(paramString));
  }
  
  private File[] b(File[] paramArrayOfFile)
  {
    File[] arrayOfFile = paramArrayOfFile;
    if (paramArrayOfFile == null) {
      arrayOfFile = new File[0];
    }
    return arrayOfFile;
  }
  
  /* Error */
  private void c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore_3
    //   11: new 259	ad
    //   14: dup
    //   15: aload_0
    //   16: getfield 125	az:j	Ljava/io/File;
    //   19: new 241	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 297
    //   33: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore 4
    //   44: aload 7
    //   46: astore_1
    //   47: aload 6
    //   49: astore_3
    //   50: aload 4
    //   52: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   55: astore 5
    //   57: aload 5
    //   59: astore_1
    //   60: aload 5
    //   62: astore_3
    //   63: aload_0
    //   64: getfield 113	az:q	Lah;
    //   67: invokevirtual 606	ah:h	()Ljava/lang/String;
    //   70: astore 6
    //   72: aload 5
    //   74: astore_1
    //   75: aload 5
    //   77: astore_3
    //   78: aload_0
    //   79: getfield 113	az:q	Lah;
    //   82: invokevirtual 608	ah:k	()Ljava/lang/String;
    //   85: astore 7
    //   87: aload 5
    //   89: astore_1
    //   90: aload 5
    //   92: astore_3
    //   93: aload_0
    //   94: getfield 113	az:q	Lah;
    //   97: invokevirtual 609	ah:j	()Ljava/lang/String;
    //   100: astore 8
    //   102: aload 5
    //   104: astore_1
    //   105: aload 5
    //   107: astore_3
    //   108: aload_0
    //   109: getfield 111	az:o	LIq;
    //   112: invokevirtual 613	Iq:b	()Ljava/lang/String;
    //   115: astore 9
    //   117: aload 5
    //   119: astore_1
    //   120: aload 5
    //   122: astore_3
    //   123: aload_0
    //   124: getfield 113	az:q	Lah;
    //   127: invokevirtual 615	ah:i	()Ljava/lang/String;
    //   130: invokestatic 620	Ik:a	(Ljava/lang/String;)LIk;
    //   133: invokevirtual 622	Ik:a	()I
    //   136: istore_2
    //   137: aload 5
    //   139: astore_1
    //   140: aload 5
    //   142: astore_3
    //   143: aload_0
    //   144: getfield 115	az:s	Lbo;
    //   147: aload 5
    //   149: aload 6
    //   151: aload 7
    //   153: aload 8
    //   155: aload 9
    //   157: iload_2
    //   158: invokevirtual 625	bo:a	(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    //   161: aload 5
    //   163: ldc_w 627
    //   166: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   169: aload 4
    //   171: ldc_w 629
    //   174: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   177: return
    //   178: astore 4
    //   180: aconst_null
    //   181: astore_1
    //   182: aload 4
    //   184: aload_1
    //   185: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   188: aload 4
    //   190: athrow
    //   191: astore 5
    //   193: aload_1
    //   194: astore 4
    //   196: aload_3
    //   197: astore_1
    //   198: aload 5
    //   200: astore_3
    //   201: aload_1
    //   202: ldc_w 627
    //   205: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   208: aload 4
    //   210: ldc_w 629
    //   213: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   216: aload_3
    //   217: athrow
    //   218: astore_3
    //   219: aconst_null
    //   220: astore 4
    //   222: aload 5
    //   224: astore_1
    //   225: goto -24 -> 201
    //   228: astore_3
    //   229: goto -28 -> 201
    //   232: astore 5
    //   234: aload 4
    //   236: astore_1
    //   237: aload 5
    //   239: astore 4
    //   241: goto -59 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	this	az
    //   0	244	1	paramString	String
    //   136	22	2	i1	int
    //   10	207	3	localObject1	Object
    //   218	1	3	localObject2	Object
    //   228	1	3	localObject3	Object
    //   42	128	4	localad	ad
    //   178	11	4	localException1	Exception
    //   194	46	4	localObject4	Object
    //   1	161	5	localaf	af
    //   191	32	5	localObject5	Object
    //   232	6	5	localException2	Exception
    //   7	143	6	str1	String
    //   4	148	7	str2	String
    //   100	54	8	str3	String
    //   115	41	9	str4	String
    // Exception table:
    //   from	to	target	type
    //   11	44	178	java/lang/Exception
    //   182	191	191	finally
    //   11	44	218	finally
    //   50	57	228	finally
    //   63	72	228	finally
    //   78	87	228	finally
    //   93	102	228	finally
    //   108	117	228	finally
    //   123	137	228	finally
    //   143	161	228	finally
    //   50	57	232	java/lang/Exception
    //   63	72	232	java/lang/Exception
    //   78	87	232	java/lang/Exception
    //   93	102	232	java/lang/Exception
    //   108	117	232	java/lang/Exception
    //   123	137	232	java/lang/Exception
    //   143	161	232	java/lang/Exception
  }
  
  /* Error */
  private void d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 6
    //   8: aconst_null
    //   9: astore 4
    //   11: new 259	ad
    //   14: dup
    //   15: aload_0
    //   16: getfield 125	az:j	Ljava/io/File;
    //   19: new 241	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 299
    //   33: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore 5
    //   44: aload 7
    //   46: astore_1
    //   47: aload 5
    //   49: astore_3
    //   50: aload 6
    //   52: astore 4
    //   54: aload 5
    //   56: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   59: astore 6
    //   61: aload 6
    //   63: astore_1
    //   64: aload 5
    //   66: astore_3
    //   67: aload 6
    //   69: astore 4
    //   71: aload_0
    //   72: getfield 113	az:q	Lah;
    //   75: invokevirtual 131	ah:C	()Landroid/content/Context;
    //   78: invokestatic 632	Ie:g	(Landroid/content/Context;)Z
    //   81: istore_2
    //   82: aload 6
    //   84: astore_1
    //   85: aload 5
    //   87: astore_3
    //   88: aload 6
    //   90: astore 4
    //   92: aload_0
    //   93: getfield 115	az:s	Lbo;
    //   96: aload 6
    //   98: iload_2
    //   99: invokevirtual 635	bo:a	(Laf;Z)V
    //   102: aload 6
    //   104: ldc_w 637
    //   107: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   110: aload 5
    //   112: ldc_w 639
    //   115: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   118: return
    //   119: astore 6
    //   121: aconst_null
    //   122: astore 5
    //   124: aload 4
    //   126: astore_1
    //   127: aload 5
    //   129: astore_3
    //   130: aload 6
    //   132: aload 5
    //   134: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   137: aload 4
    //   139: astore_1
    //   140: aload 5
    //   142: astore_3
    //   143: aload 6
    //   145: athrow
    //   146: astore 5
    //   148: aload_3
    //   149: astore 4
    //   151: aload_1
    //   152: astore_3
    //   153: aload 5
    //   155: astore_1
    //   156: aload_3
    //   157: ldc_w 637
    //   160: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   163: aload 4
    //   165: ldc_w 639
    //   168: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   171: aload_1
    //   172: athrow
    //   173: astore_1
    //   174: aconst_null
    //   175: astore 4
    //   177: goto -21 -> 156
    //   180: astore 6
    //   182: goto -58 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	az
    //   0	185	1	paramString	String
    //   81	18	2	bool	boolean
    //   4	153	3	localObject1	Object
    //   9	167	4	localObject2	Object
    //   42	99	5	localad	ad
    //   146	8	5	localObject3	Object
    //   6	97	6	localaf	af
    //   119	25	6	localException1	Exception
    //   180	1	6	localException2	Exception
    //   1	44	7	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   11	44	119	java/lang/Exception
    //   54	61	146	finally
    //   71	82	146	finally
    //   92	102	146	finally
    //   130	137	146	finally
    //   143	146	146	finally
    //   11	44	173	finally
    //   54	61	180	java/lang/Exception
    //   71	82	180	java/lang/Exception
    //   92	102	180	java/lang/Exception
  }
  
  /* Error */
  private void e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 15
    //   3: aconst_null
    //   4: astore 14
    //   6: aconst_null
    //   7: astore 17
    //   9: aconst_null
    //   10: astore 16
    //   12: aconst_null
    //   13: astore 12
    //   15: new 259	ad
    //   18: dup
    //   19: aload_0
    //   20: getfield 125	az:j	Ljava/io/File;
    //   23: new 241	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   30: aload_1
    //   31: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc_w 301
    //   37: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   46: astore 13
    //   48: aload 17
    //   50: astore_1
    //   51: aload 16
    //   53: astore 12
    //   55: aload 13
    //   57: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   60: astore 14
    //   62: aload 14
    //   64: astore_1
    //   65: aload 14
    //   67: astore 12
    //   69: aload_0
    //   70: getfield 113	az:q	Lah;
    //   73: invokevirtual 131	ah:C	()Landroid/content/Context;
    //   76: astore 15
    //   78: aload 14
    //   80: astore_1
    //   81: aload 14
    //   83: astore 12
    //   85: new 641	android/os/StatFs
    //   88: dup
    //   89: invokestatic 357	android/os/Environment:getDataDirectory	()Ljava/io/File;
    //   92: invokevirtual 360	java/io/File:getPath	()Ljava/lang/String;
    //   95: invokespecial 642	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   98: astore 17
    //   100: aload 14
    //   102: astore_1
    //   103: aload 14
    //   105: astore 12
    //   107: aload_0
    //   108: getfield 111	az:o	LIq;
    //   111: invokevirtual 644	Iq:f	()Ljava/lang/String;
    //   114: astore 16
    //   116: aload 14
    //   118: astore_1
    //   119: aload 14
    //   121: astore 12
    //   123: invokestatic 645	Ie:a	()I
    //   126: istore_2
    //   127: aload 14
    //   129: astore_1
    //   130: aload 14
    //   132: astore 12
    //   134: invokestatic 651	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   137: invokevirtual 654	java/lang/Runtime:availableProcessors	()I
    //   140: istore_3
    //   141: aload 14
    //   143: astore_1
    //   144: aload 14
    //   146: astore 12
    //   148: invokestatic 349	Ie:b	()J
    //   151: lstore 5
    //   153: aload 14
    //   155: astore_1
    //   156: aload 14
    //   158: astore 12
    //   160: aload 17
    //   162: invokevirtual 657	android/os/StatFs:getBlockCount	()I
    //   165: i2l
    //   166: lstore 7
    //   168: aload 14
    //   170: astore_1
    //   171: aload 14
    //   173: astore 12
    //   175: aload 17
    //   177: invokevirtual 660	android/os/StatFs:getBlockSize	()I
    //   180: i2l
    //   181: lstore 9
    //   183: aload 14
    //   185: astore_1
    //   186: aload 14
    //   188: astore 12
    //   190: aload 15
    //   192: invokestatic 662	Ie:f	(Landroid/content/Context;)Z
    //   195: istore 11
    //   197: aload 14
    //   199: astore_1
    //   200: aload 14
    //   202: astore 12
    //   204: aload_0
    //   205: getfield 111	az:o	LIq;
    //   208: invokevirtual 663	Iq:g	()Ljava/util/Map;
    //   211: astore 17
    //   213: aload 14
    //   215: astore_1
    //   216: aload 14
    //   218: astore 12
    //   220: aload 15
    //   222: invokestatic 666	Ie:h	(Landroid/content/Context;)I
    //   225: istore 4
    //   227: aload 14
    //   229: astore_1
    //   230: aload 14
    //   232: astore 12
    //   234: aload_0
    //   235: getfield 115	az:s	Lbo;
    //   238: aload 14
    //   240: aload 16
    //   242: iload_2
    //   243: getstatic 672	android/os/Build:MODEL	Ljava/lang/String;
    //   246: iload_3
    //   247: lload 5
    //   249: lload 7
    //   251: lload 9
    //   253: lmul
    //   254: iload 11
    //   256: aload 17
    //   258: iload 4
    //   260: getstatic 675	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   263: getstatic 678	android/os/Build:PRODUCT	Ljava/lang/String;
    //   266: invokevirtual 681	bo:a	(Laf;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    //   269: aload 14
    //   271: ldc_w 683
    //   274: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   277: aload 13
    //   279: ldc_w 685
    //   282: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   285: return
    //   286: astore 13
    //   288: aload 15
    //   290: astore_1
    //   291: aload 13
    //   293: aload_1
    //   294: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   297: aload 13
    //   299: athrow
    //   300: astore 14
    //   302: aload_1
    //   303: astore 13
    //   305: aload 12
    //   307: astore_1
    //   308: aload 14
    //   310: astore 12
    //   312: aload_1
    //   313: ldc_w 683
    //   316: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   319: aload 13
    //   321: ldc_w 685
    //   324: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   327: aload 12
    //   329: athrow
    //   330: astore 12
    //   332: aconst_null
    //   333: astore 13
    //   335: aload 14
    //   337: astore_1
    //   338: goto -26 -> 312
    //   341: astore 12
    //   343: goto -31 -> 312
    //   346: astore 14
    //   348: aload 13
    //   350: astore_1
    //   351: aload 14
    //   353: astore 13
    //   355: goto -64 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	358	0	this	az
    //   0	358	1	paramString	String
    //   126	117	2	i1	int
    //   140	107	3	i2	int
    //   225	34	4	i3	int
    //   151	97	5	l1	long
    //   166	84	7	l2	long
    //   181	71	9	l3	long
    //   195	60	11	bool	boolean
    //   13	315	12	localObject1	Object
    //   330	1	12	localObject2	Object
    //   341	1	12	localObject3	Object
    //   46	232	13	localad	ad
    //   286	12	13	localException1	Exception
    //   303	51	13	localObject4	Object
    //   4	266	14	localaf	af
    //   300	36	14	localObject5	Object
    //   346	6	14	localException2	Exception
    //   1	288	15	localContext	Context
    //   10	231	16	str	String
    //   7	250	17	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   15	48	286	java/lang/Exception
    //   291	300	300	finally
    //   15	48	330	finally
    //   55	62	341	finally
    //   69	78	341	finally
    //   85	100	341	finally
    //   107	116	341	finally
    //   123	127	341	finally
    //   134	141	341	finally
    //   148	153	341	finally
    //   160	168	341	finally
    //   175	183	341	finally
    //   190	197	341	finally
    //   204	213	341	finally
    //   220	227	341	finally
    //   234	269	341	finally
    //   55	62	346	java/lang/Exception
    //   69	78	346	java/lang/Exception
    //   85	100	346	java/lang/Exception
    //   107	116	346	java/lang/Exception
    //   123	127	346	java/lang/Exception
    //   134	141	346	java/lang/Exception
    //   148	153	346	java/lang/Exception
    //   160	168	346	java/lang/Exception
    //   175	183	346	java/lang/Exception
    //   190	197	346	java/lang/Exception
    //   204	213	346	java/lang/Exception
    //   220	227	346	java/lang/Exception
    //   234	269	346	java/lang/Exception
  }
  
  /* Error */
  private void f(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore_2
    //   5: aconst_null
    //   6: astore 5
    //   8: aconst_null
    //   9: astore_3
    //   10: new 259	ad
    //   13: dup
    //   14: aload_0
    //   15: getfield 125	az:j	Ljava/io/File;
    //   18: new 241	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   25: aload_1
    //   26: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc_w 295
    //   32: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokespecial 474	ad:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   41: astore 4
    //   43: aload 6
    //   45: astore_1
    //   46: aload 4
    //   48: astore_2
    //   49: aload 5
    //   51: astore_3
    //   52: aload 4
    //   54: invokestatic 477	af:a	(Ljava/io/OutputStream;)Laf;
    //   57: astore 5
    //   59: aload 5
    //   61: astore_1
    //   62: aload 4
    //   64: astore_2
    //   65: aload 5
    //   67: astore_3
    //   68: aload_0
    //   69: getfield 113	az:q	Lah;
    //   72: invokevirtual 687	ah:n	()Ljava/lang/String;
    //   75: astore 6
    //   77: aload 5
    //   79: astore_1
    //   80: aload 4
    //   82: astore_2
    //   83: aload 5
    //   85: astore_3
    //   86: aload_0
    //   87: getfield 113	az:q	Lah;
    //   90: invokevirtual 689	ah:p	()Ljava/lang/String;
    //   93: astore 7
    //   95: aload 5
    //   97: astore_1
    //   98: aload 4
    //   100: astore_2
    //   101: aload 5
    //   103: astore_3
    //   104: aload_0
    //   105: getfield 113	az:q	Lah;
    //   108: invokevirtual 691	ah:o	()Ljava/lang/String;
    //   111: astore 8
    //   113: aload 6
    //   115: ifnonnull +30 -> 145
    //   118: aload 7
    //   120: ifnonnull +25 -> 145
    //   123: aload 8
    //   125: ifnonnull +20 -> 145
    //   128: aload 5
    //   130: ldc_w 693
    //   133: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   136: aload 4
    //   138: ldc_w 695
    //   141: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   144: return
    //   145: aload 5
    //   147: astore_1
    //   148: aload 4
    //   150: astore_2
    //   151: aload 5
    //   153: astore_3
    //   154: aload_0
    //   155: getfield 115	az:s	Lbo;
    //   158: aload 5
    //   160: aload 6
    //   162: aload 7
    //   164: aload 8
    //   166: invokevirtual 698	bo:a	(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   169: aload 5
    //   171: ldc_w 693
    //   174: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   177: aload 4
    //   179: ldc_w 695
    //   182: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   185: return
    //   186: astore 5
    //   188: aconst_null
    //   189: astore 4
    //   191: aload_3
    //   192: astore_1
    //   193: aload 4
    //   195: astore_2
    //   196: aload 5
    //   198: aload 4
    //   200: invokestatic 494	aU:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   203: aload_3
    //   204: astore_1
    //   205: aload 4
    //   207: astore_2
    //   208: aload 5
    //   210: athrow
    //   211: astore 4
    //   213: aload_2
    //   214: astore_3
    //   215: aload_1
    //   216: astore_2
    //   217: aload 4
    //   219: astore_1
    //   220: aload_2
    //   221: ldc_w 693
    //   224: invokestatic 487	Ie:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   227: aload_3
    //   228: ldc_w 695
    //   231: invokestatic 285	Ie:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   234: aload_1
    //   235: athrow
    //   236: astore_1
    //   237: aconst_null
    //   238: astore_3
    //   239: goto -19 -> 220
    //   242: astore 5
    //   244: goto -53 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	247	0	this	az
    //   0	247	1	paramString	String
    //   4	217	2	localObject1	Object
    //   9	230	3	localObject2	Object
    //   41	165	4	localad	ad
    //   211	7	4	localObject3	Object
    //   6	164	5	localaf	af
    //   186	23	5	localException1	Exception
    //   242	1	5	localException2	Exception
    //   1	160	6	str1	String
    //   93	70	7	str2	String
    //   111	54	8	str3	String
    // Exception table:
    //   from	to	target	type
    //   10	43	186	java/lang/Exception
    //   52	59	211	finally
    //   68	77	211	finally
    //   86	95	211	finally
    //   104	113	211	finally
    //   154	169	211	finally
    //   196	203	211	finally
    //   208	211	211	finally
    //   10	43	236	finally
    //   52	59	242	java/lang/Exception
    //   68	77	242	java/lang/Exception
    //   86	95	242	java/lang/Exception
    //   104	113	242	java/lang/Exception
    //   154	169	242	java/lang/Exception
  }
  
  private String j()
  {
    File[] arrayOfFile = a(new aO("BeginSession"));
    Arrays.sort(arrayOfFile, b);
    if (arrayOfFile.length > 0) {
      return a(arrayOfFile[0]);
    }
    return null;
  }
  
  private void k()
  {
    Date localDate = new Date();
    String str = new ac(o).toString();
    HA.g();
    new StringBuilder().append("Opening an new session with ID ").append(str).toString();
    a(str, localDate);
    c(str);
    d(str);
    e(str);
  }
  
  private void l()
  {
    a(8);
    Object localObject = j();
    if (localObject != null)
    {
      f((String)localObject);
      localObject = q.y();
      if (localObject != null)
      {
        int i2 = c;
        HA.g();
        localObject = e();
        if ((localObject != null) && (localObject.length > 0))
        {
          int i3 = localObject.length;
          int i1 = 0;
          while (i1 < i3)
          {
            File localFile = localObject[i1];
            String str = a(localFile);
            HA.g();
            new StringBuilder().append("Closing session: ").append(str).toString();
            a(localFile, str, i2);
            i1 += 1;
          }
        }
      }
      else
      {
        HA.g();
      }
      return;
    }
    HA.g();
  }
  
  private File[] m()
  {
    return a(a);
  }
  
  private void n()
  {
    File localFile = new File(q.u(), "invalidClsFiles");
    if (localFile.exists())
    {
      if (localFile.isDirectory())
      {
        File[] arrayOfFile = localFile.listFiles();
        int i2 = arrayOfFile.length;
        int i1 = 0;
        while (i1 < i2)
        {
          arrayOfFile[i1].delete();
          i1 += 1;
        }
      }
      localFile.delete();
    }
  }
  
  private void o()
  {
    File[] arrayOfFile = m();
    int i2 = arrayOfFile.length;
    int i1 = 0;
    while (i1 < i2)
    {
      File localFile = arrayOfFile[i1];
      n.a(new aF(this, localFile));
      i1 += 1;
    }
  }
  
  void a(long paramLong, String paramString)
  {
    n.b(new aM(this, paramLong, paramString));
  }
  
  void a(File[] paramArrayOfFile)
  {
    n();
    int i3 = paramArrayOfFile.length;
    int i1 = 0;
    while (i1 < i3)
    {
      Object localObject = paramArrayOfFile[i1];
      HA.g();
      new StringBuilder().append("Found invalid session part file: ").append(localObject).toString();
      localObject = a((File)localObject);
      aE localaE = new aE(this, (String)localObject);
      HA.g();
      new StringBuilder().append("Deleting all part files for invalid session: ").append((String)localObject).toString();
      localObject = a(localaE);
      int i4 = localObject.length;
      int i2 = 0;
      while (i2 < i4)
      {
        localaE = localObject[i2];
        HA.g();
        new StringBuilder().append("Deleting session file: ").append(localaE).toString();
        localaE.delete();
        i2 += 1;
      }
      i1 += 1;
    }
  }
  
  boolean a()
  {
    return k.get();
  }
  
  void b()
  {
    n.b(new aB(this));
  }
  
  boolean c()
  {
    return e().length > 0;
  }
  
  boolean d()
  {
    return ((Boolean)n.a(new aC(this))).booleanValue();
  }
  
  File[] e()
  {
    return a(new aO("BeginSession"));
  }
  
  void f()
  {
    bq.a(j, a, 4, c);
  }
  
  void g()
  {
    n.a(new aD(this));
  }
  
  /* Error */
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 117	az:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: iconst_1
    //   7: invokevirtual 169	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   10: invokestatic 239	HA:g	()LHM;
    //   13: pop
    //   14: new 241	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   21: ldc_w 798
    //   24: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: aload_2
    //   28: invokevirtual 767	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   31: ldc_w 800
    //   34: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_1
    //   38: invokevirtual 801	java/lang/Thread:getName	()Ljava/lang/String;
    //   41: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: pop
    //   48: aload_0
    //   49: getfield 105	az:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   52: iconst_1
    //   53: invokevirtual 805	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   56: ifne +31 -> 87
    //   59: invokestatic 239	HA:g	()LHM;
    //   62: pop
    //   63: aload_0
    //   64: getfield 113	az:q	Lah;
    //   67: invokevirtual 131	ah:C	()Landroid/content/Context;
    //   70: astore_3
    //   71: aload_3
    //   72: aload_0
    //   73: getfield 146	az:m	Landroid/content/BroadcastReceiver;
    //   76: invokevirtual 809	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   79: aload_3
    //   80: aload_0
    //   81: getfield 158	az:l	Landroid/content/BroadcastReceiver;
    //   84: invokevirtual 809	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   87: new 315	java/util/Date
    //   90: dup
    //   91: invokespecial 512	java/util/Date:<init>	()V
    //   94: astore_3
    //   95: aload_0
    //   96: getfield 109	az:n	Lat;
    //   99: new 811	aL
    //   102: dup
    //   103: aload_0
    //   104: aload_3
    //   105: aload_1
    //   106: aload_2
    //   107: invokespecial 813	aL:<init>	(Laz;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    //   110: invokevirtual 788	at:a	(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   113: pop
    //   114: invokestatic 239	HA:g	()LHM;
    //   117: pop
    //   118: aload_0
    //   119: getfield 107	az:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   122: aload_1
    //   123: aload_2
    //   124: invokeinterface 815 3 0
    //   129: aload_0
    //   130: getfield 117	az:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   133: iconst_0
    //   134: invokevirtual 169	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   137: aload_0
    //   138: monitorexit
    //   139: return
    //   140: astore_3
    //   141: invokestatic 239	HA:g	()LHM;
    //   144: pop
    //   145: invokestatic 239	HA:g	()LHM;
    //   148: pop
    //   149: aload_0
    //   150: getfield 107	az:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   153: aload_1
    //   154: aload_2
    //   155: invokeinterface 815 3 0
    //   160: aload_0
    //   161: getfield 117	az:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   164: iconst_0
    //   165: invokevirtual 169	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   168: goto -31 -> 137
    //   171: astore_1
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_1
    //   175: athrow
    //   176: astore_3
    //   177: invokestatic 239	HA:g	()LHM;
    //   180: pop
    //   181: aload_0
    //   182: getfield 107	az:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   185: aload_1
    //   186: aload_2
    //   187: invokeinterface 815 3 0
    //   192: aload_0
    //   193: getfield 117	az:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   196: iconst_0
    //   197: invokevirtual 169	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   200: aload_3
    //   201: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	202	0	this	az
    //   0	202	1	paramThread	Thread
    //   0	202	2	paramThrowable	Throwable
    //   70	35	3	localObject1	Object
    //   140	1	3	localException	Exception
    //   176	25	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	87	140	java/lang/Exception
    //   87	114	140	java/lang/Exception
    //   2	10	171	finally
    //   114	137	171	finally
    //   145	168	171	finally
    //   177	202	171	finally
    //   10	87	176	finally
    //   87	114	176	finally
    //   141	145	176	finally
  }
}

/* Location:
 * Qualified Name:     az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */