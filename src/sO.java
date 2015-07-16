import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import com.mixpanel.android.mpmetrics.InAppNotification;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;

class so
{
  private static final JSONArray d = new JSONArray();
  private final sG a;
  private final Context b;
  private final List<sr> c;
  
  public so(Context paramContext, sG paramsG)
  {
    b = paramContext;
    a = paramsG;
    c = new LinkedList();
  }
  
  @SuppressLint({"NewApi"})
  private static int a(Display paramDisplay)
  {
    if (Build.VERSION.SDK_INT < 13) {
      return paramDisplay.getWidth();
    }
    Point localPoint = new Point();
    paramDisplay.getSize(localPoint);
    return x;
  }
  
  private static Bitmap a(InAppNotification paramInAppNotification, Context paramContext, tU paramtU)
  {
    Object localObject = paramInAppNotification.h();
    String str = paramInAppNotification.g();
    int i = a(((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay());
    if ((paramInAppNotification.d() == sC.c) && (i >= 720))
    {
      localObject = new String[3];
      localObject[0] = paramInAppNotification.i();
      localObject[1] = paramInAppNotification.h();
      localObject[2] = paramInAppNotification.g();
    }
    for (paramInAppNotification = (InAppNotification)localObject;; paramInAppNotification = new String[] { localObject, str })
    {
      paramContext = a(paramtU, paramContext, paramInAppNotification);
      if (paramContext != null) {
        return BitmapFactory.decodeByteArray(paramContext, 0, paramContext.length);
      }
      new StringBuilder().append("Failed to download images from ").append(Arrays.toString(paramInAppNotification)).toString();
      return null;
    }
  }
  
  /* Error */
  static sp a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: new 136	sp
    //   5: dup
    //   6: invokespecial 137	sp:<init>	()V
    //   9: astore 4
    //   11: new 139	org/json/JSONObject
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 142	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   19: astore 5
    //   21: aload 5
    //   23: ldc -112
    //   25: invokevirtual 148	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   28: ifeq +112 -> 140
    //   31: aload 5
    //   33: ldc -112
    //   35: invokevirtual 152	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   38: astore_0
    //   39: aload_0
    //   40: ifnull +161 -> 201
    //   43: iconst_0
    //   44: istore_1
    //   45: iload_1
    //   46: aload_0
    //   47: invokevirtual 155	org/json/JSONArray:length	()I
    //   50: if_icmpge +151 -> 201
    //   53: new 157	com/mixpanel/android/mpmetrics/Survey
    //   56: dup
    //   57: aload_0
    //   58: iload_1
    //   59: invokevirtual 161	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   62: invokespecial 164	com/mixpanel/android/mpmetrics/Survey:<init>	(Lorg/json/JSONObject;)V
    //   65: astore 6
    //   67: aload 4
    //   69: getfield 166	sp:a	Ljava/util/List;
    //   72: aload 6
    //   74: invokeinterface 172 2 0
    //   79: pop
    //   80: iload_1
    //   81: iconst_1
    //   82: iadd
    //   83: istore_1
    //   84: goto -39 -> 45
    //   87: astore 4
    //   89: new 174	sq
    //   92: dup
    //   93: new 111	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   100: ldc -80
    //   102: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload_0
    //   106: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: aload 4
    //   114: invokespecial 179	sq:<init>	(Ljava/lang/String;Lorg/json/JSONException;)V
    //   117: athrow
    //   118: astore_0
    //   119: new 111	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   126: ldc -75
    //   128: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload 5
    //   133: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: pop
    //   140: aconst_null
    //   141: astore_0
    //   142: goto -103 -> 39
    //   145: astore 6
    //   147: new 111	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   154: ldc -70
    //   156: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload_0
    //   160: invokevirtual 187	org/json/JSONArray:toString	()Ljava/lang/String;
    //   163: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: pop
    //   170: goto -90 -> 80
    //   173: astore 6
    //   175: new 111	java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   182: ldc -70
    //   184: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload_0
    //   188: invokevirtual 187	org/json/JSONArray:toString	()Ljava/lang/String;
    //   191: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: pop
    //   198: goto -118 -> 80
    //   201: aload 5
    //   203: ldc -67
    //   205: invokevirtual 148	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   208: ifeq +87 -> 295
    //   211: aload 5
    //   213: ldc -67
    //   215: invokevirtual 152	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   218: astore_0
    //   219: aload_0
    //   220: ifnull +164 -> 384
    //   223: aload_0
    //   224: invokevirtual 155	org/json/JSONArray:length	()I
    //   227: iconst_2
    //   228: invokestatic 195	java/lang/Math:min	(II)I
    //   231: istore_3
    //   232: iload_2
    //   233: istore_1
    //   234: iload_1
    //   235: iload_3
    //   236: if_icmpge +148 -> 384
    //   239: new 64	com/mixpanel/android/mpmetrics/InAppNotification
    //   242: dup
    //   243: aload_0
    //   244: iload_1
    //   245: invokevirtual 161	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   248: invokespecial 196	com/mixpanel/android/mpmetrics/InAppNotification:<init>	(Lorg/json/JSONObject;)V
    //   251: astore 6
    //   253: aload 4
    //   255: getfield 198	sp:b	Ljava/util/List;
    //   258: aload 6
    //   260: invokeinterface 172 2 0
    //   265: pop
    //   266: iload_1
    //   267: iconst_1
    //   268: iadd
    //   269: istore_1
    //   270: goto -36 -> 234
    //   273: astore_0
    //   274: new 111	java/lang/StringBuilder
    //   277: dup
    //   278: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   281: ldc -56
    //   283: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: aload 5
    //   288: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: pop
    //   295: aconst_null
    //   296: astore_0
    //   297: goto -78 -> 219
    //   300: astore 6
    //   302: new 111	java/lang/StringBuilder
    //   305: dup
    //   306: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   309: ldc -54
    //   311: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: aload_0
    //   315: invokevirtual 187	org/json/JSONArray:toString	()Ljava/lang/String;
    //   318: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: pop
    //   325: goto -59 -> 266
    //   328: astore 6
    //   330: new 111	java/lang/StringBuilder
    //   333: dup
    //   334: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   337: ldc -54
    //   339: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload_0
    //   343: invokevirtual 187	org/json/JSONArray:toString	()Ljava/lang/String;
    //   346: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: pop
    //   353: goto -87 -> 266
    //   356: astore 6
    //   358: new 111	java/lang/StringBuilder
    //   361: dup
    //   362: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   365: ldc -52
    //   367: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: aload_0
    //   371: invokevirtual 187	org/json/JSONArray:toString	()Ljava/lang/String;
    //   374: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   380: pop
    //   381: goto -115 -> 266
    //   384: aload 5
    //   386: ldc -50
    //   388: invokevirtual 148	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   391: ifeq +15 -> 406
    //   394: aload 4
    //   396: aload 5
    //   398: ldc -50
    //   400: invokevirtual 152	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   403: putfield 208	sp:c	Lorg/json/JSONArray;
    //   406: aload 5
    //   408: ldc -46
    //   410: invokevirtual 148	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   413: ifeq +15 -> 428
    //   416: aload 4
    //   418: aload 5
    //   420: ldc -46
    //   422: invokevirtual 152	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   425: putfield 211	sp:d	Lorg/json/JSONArray;
    //   428: aload 4
    //   430: areturn
    //   431: astore_0
    //   432: new 111	java/lang/StringBuilder
    //   435: dup
    //   436: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   439: ldc -43
    //   441: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   444: aload 5
    //   446: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   449: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: pop
    //   453: goto -47 -> 406
    //   456: astore_0
    //   457: new 111	java/lang/StringBuilder
    //   460: dup
    //   461: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   464: ldc -41
    //   466: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: aload 5
    //   471: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: pop
    //   478: aload 4
    //   480: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	481	0	paramString	String
    //   44	226	1	i	int
    //   1	232	2	j	int
    //   231	6	3	k	int
    //   9	59	4	localsp	sp
    //   87	392	4	localJSONException1	org.json.JSONException
    //   19	451	5	localJSONObject	org.json.JSONObject
    //   65	8	6	localSurvey	com.mixpanel.android.mpmetrics.Survey
    //   145	1	6	localJSONException2	org.json.JSONException
    //   173	1	6	localsm1	sm
    //   251	8	6	localInAppNotification	InAppNotification
    //   300	1	6	localJSONException3	org.json.JSONException
    //   328	1	6	localsm2	sm
    //   356	1	6	localOutOfMemoryError	OutOfMemoryError
    // Exception table:
    //   from	to	target	type
    //   11	21	87	org/json/JSONException
    //   31	39	118	org/json/JSONException
    //   53	80	145	org/json/JSONException
    //   53	80	173	sm
    //   211	219	273	org/json/JSONException
    //   239	266	300	org/json/JSONException
    //   239	266	328	sm
    //   239	266	356	java/lang/OutOfMemoryError
    //   394	406	431	org/json/JSONException
    //   416	428	456	org/json/JSONException
  }
  
  private sp a(String paramString1, String paramString2, tU paramtU)
  {
    paramString2 = b(paramString1, paramString2, paramtU);
    if (sG.a) {
      new StringBuilder().append("Mixpanel decide server response was:\n").append(paramString2).toString();
    }
    paramString1 = new sp();
    if (paramString2 != null) {
      paramString1 = a(paramString2);
    }
    for (;;)
    {
      paramString2 = b.iterator();
      while (paramString2.hasNext())
      {
        InAppNotification localInAppNotification = (InAppNotification)paramString2.next();
        Bitmap localBitmap = a(localInAppNotification, b, paramtU);
        if (localBitmap == null)
        {
          new StringBuilder().append("Could not retrieve image for notification ").append(localInAppNotification.b()).append(", will not show the notification.").toString();
          paramString2.remove();
        }
        else
        {
          localInAppNotification.a(localBitmap);
        }
      }
      return paramString1;
    }
  }
  
  private static byte[] a(tU paramtU, Context paramContext, String[] paramArrayOfString)
  {
    if (!paramtU.a(paramContext)) {
      return null;
    }
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramContext = paramArrayOfString[i];
      try
      {
        byte[] arrayOfByte = paramtU.a(paramContext, null);
        return arrayOfByte;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        new StringBuilder().append("Cannot interpret ").append(paramContext).append(" as a URL.").toString();
        i += 1;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        for (;;)
        {
          if (sG.a) {
            new StringBuilder().append("Cannot get ").append(paramContext).append(", file not found.").toString();
          }
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          if (sG.a) {
            new StringBuilder().append("Cannot get ").append(paramContext).append(".").toString();
          }
        }
      }
      catch (OutOfMemoryError paramtU)
      {
        new StringBuilder().append("Out of memory when getting to ").append(paramContext).append(".").toString();
      }
    }
    return null;
  }
  
  private String b(String paramString1, String paramString2, tU paramtU)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        String str = URLEncoder.encode(paramString1, "utf-8");
        if (paramString2 != null)
        {
          paramString1 = URLEncoder.encode(paramString2, "utf-8");
          paramString2 = new StringBuilder().append("?version=1&lib=android&token=").append(str);
          if (paramString1 != null) {
            paramString2.append("&distinct_id=").append(paramString1);
          }
          paramString2 = paramString2.toString();
          if (a.d())
          {
            paramString1 = new String[1];
            paramString1[0] = (a.k() + paramString2);
            if (!sG.a) {
              break;
            }
            if (i >= paramString1.length) {
              break;
            }
            new StringBuilder().append("    >> ").append(paramString1[i]).toString();
            i += 1;
            continue;
          }
        }
        else
        {
          paramString1 = null;
          continue;
        }
        paramString1 = new String[2];
      }
      catch (UnsupportedEncodingException paramString1)
      {
        throw new RuntimeException("Mixpanel library requires utf-8 string encoding to be available", paramString1);
      }
      paramString1[0] = (a.k() + paramString2);
      paramString1[1] = (a.n() + paramString2);
    }
    paramString1 = a(paramtU, b, paramString1);
    if (paramString1 == null) {
      return null;
    }
    try
    {
      paramString1 = new String(paramString1, "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new RuntimeException("UTF not supported on this platform?", paramString1);
    }
  }
  
  public void a(sr paramsr)
  {
    c.add(paramsr);
  }
  
  public void a(tU paramtU)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      sr localsr = (sr)localIterator.next();
      Object localObject = localsr.b();
      try
      {
        localObject = a(localsr.a(), (String)localObject, paramtU);
        localsr.a(a, b, c, d);
      }
      catch (sq localsq)
      {
        localsq.getMessage();
      }
    }
  }
}

/* Location:
 * Qualified Name:     so
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */