import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

class sg
  extends Handler
{
  private sH b = null;
  private final so c;
  private final long d;
  private final boolean e;
  private long f;
  
  public sg(sf paramsf, Looper paramLooper)
  {
    super(paramLooper);
    c = new so(sd.a(a), sd.b(a));
    e = sd.b(a).d();
    d = sd.b(a).b(sd.a(a));
    sf.a(paramsf, new tp(sd.a(a)));
    f = -1L;
  }
  
  private JSONObject a()
  {
    localJSONObject = new JSONObject();
    localJSONObject.put("mp_lib", "android");
    localJSONObject.put("$lib_version", "4.6.0");
    localJSONObject.put("$os", "Android");
    Object localObject;
    if (Build.VERSION.RELEASE == null)
    {
      localObject = "UNKNOWN";
      localJSONObject.put("$os_version", localObject);
      if (Build.MANUFACTURER != null) {
        break label401;
      }
      localObject = "UNKNOWN";
      label61:
      localJSONObject.put("$manufacturer", localObject);
      if (Build.BRAND != null) {
        break label408;
      }
      localObject = "UNKNOWN";
      label78:
      localJSONObject.put("$brand", localObject);
      if (Build.MODEL != null) {
        break label415;
      }
      localObject = "UNKNOWN";
      label95:
      localJSONObject.put("$model", localObject);
    }
    for (;;)
    {
      try
      {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(sd.a(a.a));
        switch (i)
        {
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        localJSONObject.put("$google_play_services", "not configured");
        continue;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError)
      {
        label401:
        label408:
        label415:
        localJSONObject.put("$google_play_services", "not included");
        continue;
        localJSONObject.put("$google_play_services", "missing");
        continue;
        localJSONObject.put("$google_play_services", "out of date");
        continue;
        localJSONObject.put("$google_play_services", "disabled");
        continue;
        localJSONObject.put("$google_play_services", "invalid");
        continue;
      }
      localObject = sf.c(a).d();
      localJSONObject.put("$screen_dpi", densityDpi);
      localJSONObject.put("$screen_height", heightPixels);
      localJSONObject.put("$screen_width", widthPixels);
      localObject = sf.c(a).a();
      if (localObject != null) {
        localJSONObject.put("$app_version", localObject);
      }
      localObject = Boolean.valueOf(sf.c(a).b());
      if (localObject != null) {
        localJSONObject.put("$has_nfc", ((Boolean)localObject).booleanValue());
      }
      localObject = Boolean.valueOf(sf.c(a).c());
      if (localObject != null) {
        localJSONObject.put("$has_telephone", ((Boolean)localObject).booleanValue());
      }
      localObject = sf.c(a).e();
      if (localObject != null) {
        localJSONObject.put("$carrier", localObject);
      }
      localObject = sf.c(a).f();
      if (localObject != null) {
        localJSONObject.put("$wifi", ((Boolean)localObject).booleanValue());
      }
      localObject = sf.c(a).g();
      if (localObject != null) {
        localJSONObject.put("$bluetooth_enabled", localObject);
      }
      localObject = sf.c(a).h();
      if (localObject != null) {
        localJSONObject.put("$bluetooth_version", localObject);
      }
      return localJSONObject;
      localObject = Build.VERSION.RELEASE;
      break;
      localObject = Build.MANUFACTURER;
      break label61;
      localObject = Build.BRAND;
      break label78;
      localObject = Build.MODEL;
      break label95;
      localJSONObject.put("$google_play_services", "available");
    }
  }
  
  private JSONObject a(se paramse)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = paramse.b();
    JSONObject localJSONObject3 = a();
    localJSONObject3.put("token", paramse.c());
    if (localJSONObject2 != null)
    {
      Iterator localIterator = localJSONObject2.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject3.put(str, localJSONObject2.get(str));
      }
    }
    localJSONObject1.put("event", paramse.a());
    localJSONObject1.put("properties", localJSONObject3);
    return localJSONObject1;
  }
  
  private void a(String paramString)
  {
    try
    {
      int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(sd.a(a.a));
      if (i != 0) {
        return;
      }
      paramString = hD.a(sd.a(a.a)).a(new String[] { paramString });
      sK.a(new sh(this, paramString));
      return;
    }
    catch (NoClassDefFoundError paramString) {}catch (IOException paramString) {}catch (RuntimeException paramString) {}
  }
  
  private void a(sH paramsH)
  {
    if (!a.a.b().a(sd.a(a.a)))
    {
      sd.a(a.a, "Not flushing data to Mixpanel because the device is not connected to the internet.");
      return;
    }
    sd.a(a.a, "Sending records to Mixpanel");
    if (e)
    {
      a(paramsH, sJ.a, new String[] { sd.b(a.a).i() });
      a(paramsH, sJ.b, new String[] { sd.b(a.a).j() });
      return;
    }
    a(paramsH, sJ.a, new String[] { sd.b(a.a).i(), sd.b(a.a).l() });
    a(paramsH, sJ.b, new String[] { sd.b(a.a).j(), sd.b(a.a).m() });
  }
  
  private void a(sH paramsH, sJ paramsJ, String[] paramArrayOfString)
  {
    tU localtU = a.a.b();
    Object localObject1 = paramsH.a(paramsJ);
    String str1;
    String str2;
    ArrayList localArrayList;
    int j;
    int i;
    if (localObject1 != null)
    {
      str1 = localObject1[0];
      str2 = localObject1[1];
      localObject1 = tR.a(str2);
      localArrayList = new ArrayList(1);
      localArrayList.add(new BasicNameValuePair("data", (String)localObject1));
      if (sG.a) {
        localArrayList.add(new BasicNameValuePair("verbose", "1"));
      }
      int m = paramArrayOfString.length;
      j = 0;
      i = 1;
      if (j >= m) {
        break label479;
      }
      localObject1 = paramArrayOfString[j];
    }
    label479:
    for (;;)
    {
      try
      {
        Object localObject2 = localtU.a((String)localObject1, localArrayList);
        int k = 1;
        i = 1;
        if (localObject2 == null) {}
        try
        {
          sd.a(a.a, "Response was null, unexpected failure posting to " + (String)localObject1 + ".");
          if (i != 0)
          {
            sd.a(a.a, "Not retrying this batch of events, deleting them from DB.");
            paramsH.a(str1, paramsJ);
            return;
          }
        }
        catch (OutOfMemoryError paramArrayOfString)
        {
          try
          {
            localObject2 = new String((byte[])localObject2, "UTF-8");
            sd.a(a.a, "Successfully posted to " + (String)localObject1 + ": \n" + str2);
            sd.a(a.a, "Response was " + (String)localObject2);
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            throw new RuntimeException("UTF not supported on this platform?", localUnsupportedEncodingException);
          }
          paramArrayOfString = paramArrayOfString;
          i = 1;
          new StringBuilder().append("Out of memory when posting to ").append((String)localObject1).append(".").toString();
        }
        catch (MalformedURLException paramArrayOfString)
        {
          i = k;
          new StringBuilder().append("Cannot interpret ").append((String)localObject1).append(" as a URL.").toString();
        }
      }
      catch (IOException localIOException)
      {
        sd.a(a.a, "Cannot post message to " + (String)localObject1 + ".", localIOException);
        j += 1;
        i = 0;
        break;
        sd.a(a.a, "Retrying this batch of events.");
        if (!hasMessages(2))
        {
          sendEmptyMessageDelayed(2, d);
          return;
        }
      }
      catch (MalformedURLException paramArrayOfString) {}catch (OutOfMemoryError paramArrayOfString) {}
    }
  }
  
  /* Error */
  public void handleMessage(android.os.Message arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 24	sg:b	LsH;
    //   4: ifnonnull +83 -> 87
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 19	sg:a	Lsf;
    //   12: getfield 31	sf:a	Lsd;
    //   15: aload_0
    //   16: getfield 19	sg:a	Lsf;
    //   19: getfield 31	sf:a	Lsd;
    //   22: invokestatic 36	sd:a	(Lsd;)Landroid/content/Context;
    //   25: invokevirtual 418	sd:b	(Landroid/content/Context;)LsH;
    //   28: putfield 24	sg:b	LsH;
    //   31: aload_0
    //   32: getfield 24	sg:b	LsH;
    //   35: invokestatic 424	java/lang/System:currentTimeMillis	()J
    //   38: aload_0
    //   39: getfield 19	sg:a	Lsf;
    //   42: getfield 31	sf:a	Lsd;
    //   45: invokestatic 39	sd:b	(Lsd;)LsG;
    //   48: invokevirtual 427	sG:b	()I
    //   51: i2l
    //   52: lsub
    //   53: getstatic 291	sJ:a	LsJ;
    //   56: invokevirtual 430	sH:a	(JLsJ;)V
    //   59: aload_0
    //   60: getfield 24	sg:b	LsH;
    //   63: invokestatic 424	java/lang/System:currentTimeMillis	()J
    //   66: aload_0
    //   67: getfield 19	sg:a	Lsf;
    //   70: getfield 31	sf:a	Lsd;
    //   73: invokestatic 39	sd:b	(Lsd;)LsG;
    //   76: invokevirtual 427	sG:b	()I
    //   79: i2l
    //   80: lsub
    //   81: getstatic 299	sJ:b	LsJ;
    //   84: invokevirtual 430	sH:a	(JLsJ;)V
    //   87: bipush -3
    //   89: istore_3
    //   90: aload_1
    //   91: getfield 435	android/os/Message:what	I
    //   94: ifne +149 -> 243
    //   97: aload_1
    //   98: getfield 439	android/os/Message:obj	Ljava/lang/Object;
    //   101: checkcast 76	org/json/JSONObject
    //   104: astore_1
    //   105: aload_0
    //   106: getfield 19	sg:a	Lsf;
    //   109: getfield 31	sf:a	Lsd;
    //   112: ldc_w 441
    //   115: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   118: aload_0
    //   119: getfield 19	sg:a	Lsf;
    //   122: getfield 31	sf:a	Lsd;
    //   125: new 353	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   132: ldc_w 443
    //   135: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_1
    //   139: invokevirtual 444	org/json/JSONObject:toString	()Ljava/lang/String;
    //   142: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   151: aload_0
    //   152: getfield 24	sg:b	LsH;
    //   155: aload_1
    //   156: getstatic 299	sJ:b	LsJ;
    //   159: invokevirtual 447	sH:a	(Lorg/json/JSONObject;LsJ;)I
    //   162: istore_2
    //   163: iload_2
    //   164: aload_0
    //   165: getfield 19	sg:a	Lsf;
    //   168: getfield 31	sf:a	Lsd;
    //   171: invokestatic 39	sd:b	(Lsd;)LsG;
    //   174: invokevirtual 449	sG:a	()I
    //   177: if_icmpge +9 -> 186
    //   180: iload_2
    //   181: bipush -2
    //   183: if_icmpne +574 -> 757
    //   186: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   189: aload_0
    //   190: getfield 68	sg:f	J
    //   193: lcmp
    //   194: iflt +563 -> 757
    //   197: aload_0
    //   198: getfield 19	sg:a	Lsf;
    //   201: getfield 31	sf:a	Lsd;
    //   204: ldc_w 456
    //   207: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   210: aload_0
    //   211: getfield 19	sg:a	Lsf;
    //   214: invokestatic 459	sf:a	(Lsf;)V
    //   217: aload_0
    //   218: aload_0
    //   219: getfield 24	sg:b	LsH;
    //   222: invokespecial 461	sg:a	(LsH;)V
    //   225: aload_0
    //   226: getfield 44	sg:c	Lso;
    //   229: aload_0
    //   230: getfield 19	sg:a	Lsf;
    //   233: getfield 31	sf:a	Lsd;
    //   236: invokevirtual 274	sd:b	()LtU;
    //   239: invokevirtual 464	so:a	(LtU;)V
    //   242: return
    //   243: aload_1
    //   244: getfield 435	android/os/Message:what	I
    //   247: iconst_1
    //   248: if_icmpne +113 -> 361
    //   251: aload_1
    //   252: getfield 439	android/os/Message:obj	Ljava/lang/Object;
    //   255: checkcast 217	se
    //   258: astore_1
    //   259: aload_0
    //   260: aload_1
    //   261: invokespecial 466	sg:a	(Lse;)Lorg/json/JSONObject;
    //   264: astore 8
    //   266: aload_0
    //   267: getfield 19	sg:a	Lsf;
    //   270: getfield 31	sf:a	Lsd;
    //   273: ldc_w 468
    //   276: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   279: aload_0
    //   280: getfield 19	sg:a	Lsf;
    //   283: getfield 31	sf:a	Lsd;
    //   286: new 353	java/lang/StringBuilder
    //   289: dup
    //   290: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   293: ldc_w 443
    //   296: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: aload 8
    //   301: invokevirtual 444	org/json/JSONObject:toString	()Ljava/lang/String;
    //   304: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   313: aload_0
    //   314: getfield 24	sg:b	LsH;
    //   317: aload 8
    //   319: getstatic 291	sJ:a	LsJ;
    //   322: invokevirtual 447	sH:a	(Lorg/json/JSONObject;LsJ;)I
    //   325: istore_2
    //   326: goto -163 -> 163
    //   329: astore 8
    //   331: new 353	java/lang/StringBuilder
    //   334: dup
    //   335: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   338: ldc_w 470
    //   341: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: aload_1
    //   345: invokevirtual 247	se:a	()Ljava/lang/String;
    //   348: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   354: pop
    //   355: bipush -3
    //   357: istore_2
    //   358: goto -32 -> 326
    //   361: aload_1
    //   362: getfield 435	android/os/Message:what	I
    //   365: iconst_2
    //   366: if_icmpne +133 -> 499
    //   369: aload_0
    //   370: getfield 19	sg:a	Lsf;
    //   373: getfield 31	sf:a	Lsd;
    //   376: ldc_w 472
    //   379: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   382: aload_0
    //   383: getfield 19	sg:a	Lsf;
    //   386: invokestatic 459	sf:a	(Lsf;)V
    //   389: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   392: lstore 4
    //   394: aload_0
    //   395: getfield 68	sg:f	J
    //   398: lstore 6
    //   400: iload_3
    //   401: istore_2
    //   402: lload 4
    //   404: lload 6
    //   406: lcmp
    //   407: iflt -244 -> 163
    //   410: aload_0
    //   411: aload_0
    //   412: getfield 24	sg:b	LsH;
    //   415: invokespecial 461	sg:a	(LsH;)V
    //   418: aload_0
    //   419: getfield 44	sg:c	Lso;
    //   422: aload_0
    //   423: getfield 19	sg:a	Lsf;
    //   426: getfield 31	sf:a	Lsd;
    //   429: invokevirtual 274	sd:b	()LtU;
    //   432: invokevirtual 464	so:a	(LtU;)V
    //   435: iload_3
    //   436: istore_2
    //   437: goto -274 -> 163
    //   440: astore_1
    //   441: aload_0
    //   442: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   445: aload_1
    //   446: invokevirtual 473	tV:a	()I
    //   449: sipush 1000
    //   452: imul
    //   453: i2l
    //   454: ladd
    //   455: putfield 68	sg:f	J
    //   458: iload_3
    //   459: istore_2
    //   460: goto -297 -> 163
    //   463: astore_1
    //   464: aload_0
    //   465: getfield 19	sg:a	Lsf;
    //   468: invokestatic 476	sf:b	(Lsf;)Ljava/lang/Object;
    //   471: astore_1
    //   472: aload_1
    //   473: monitorenter
    //   474: aload_0
    //   475: getfield 19	sg:a	Lsf;
    //   478: aconst_null
    //   479: invokestatic 479	sf:a	(Lsf;Landroid/os/Handler;)Landroid/os/Handler;
    //   482: pop
    //   483: invokestatic 485	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   486: invokevirtual 488	android/os/Looper:quit	()V
    //   489: aload_1
    //   490: monitorexit
    //   491: return
    //   492: astore 8
    //   494: aload_1
    //   495: monitorexit
    //   496: aload 8
    //   498: athrow
    //   499: aload_1
    //   500: getfield 435	android/os/Message:what	I
    //   503: bipush 12
    //   505: if_icmpne +98 -> 603
    //   508: aload_0
    //   509: getfield 19	sg:a	Lsf;
    //   512: getfield 31	sf:a	Lsd;
    //   515: ldc_w 490
    //   518: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   521: aload_1
    //   522: getfield 439	android/os/Message:obj	Ljava/lang/Object;
    //   525: checkcast 492	sr
    //   528: astore_1
    //   529: aload_0
    //   530: getfield 44	sg:c	Lso;
    //   533: aload_1
    //   534: invokevirtual 495	so:a	(Lsr;)V
    //   537: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   540: lstore 4
    //   542: aload_0
    //   543: getfield 68	sg:f	J
    //   546: lstore 6
    //   548: iload_3
    //   549: istore_2
    //   550: lload 4
    //   552: lload 6
    //   554: lcmp
    //   555: iflt -392 -> 163
    //   558: aload_0
    //   559: getfield 44	sg:c	Lso;
    //   562: aload_0
    //   563: getfield 19	sg:a	Lsf;
    //   566: getfield 31	sf:a	Lsd;
    //   569: invokevirtual 274	sd:b	()LtU;
    //   572: invokevirtual 464	so:a	(LtU;)V
    //   575: iload_3
    //   576: istore_2
    //   577: goto -414 -> 163
    //   580: astore_1
    //   581: aload_0
    //   582: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   585: aload_1
    //   586: invokevirtual 473	tV:a	()I
    //   589: sipush 1000
    //   592: imul
    //   593: i2l
    //   594: ladd
    //   595: putfield 68	sg:f	J
    //   598: iload_3
    //   599: istore_2
    //   600: goto -437 -> 163
    //   603: aload_1
    //   604: getfield 435	android/os/Message:what	I
    //   607: bipush 13
    //   609: if_icmpne +19 -> 628
    //   612: aload_0
    //   613: aload_1
    //   614: getfield 439	android/os/Message:obj	Ljava/lang/Object;
    //   617: checkcast 240	java/lang/String
    //   620: invokespecial 497	sg:a	(Ljava/lang/String;)V
    //   623: iload_3
    //   624: istore_2
    //   625: goto -462 -> 163
    //   628: aload_1
    //   629: getfield 435	android/os/Message:what	I
    //   632: iconst_5
    //   633: if_icmpne +75 -> 708
    //   636: new 353	java/lang/StringBuilder
    //   639: dup
    //   640: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   643: ldc_w 499
    //   646: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   649: invokestatic 505	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   652: invokevirtual 508	java/lang/Thread:getId	()J
    //   655: invokevirtual 511	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   658: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: pop
    //   662: aload_0
    //   663: getfield 19	sg:a	Lsf;
    //   666: invokestatic 476	sf:b	(Lsf;)Ljava/lang/Object;
    //   669: astore_1
    //   670: aload_1
    //   671: monitorenter
    //   672: aload_0
    //   673: getfield 24	sg:b	LsH;
    //   676: invokevirtual 513	sH:a	()V
    //   679: aload_0
    //   680: getfield 19	sg:a	Lsf;
    //   683: aconst_null
    //   684: invokestatic 479	sf:a	(Lsf;Landroid/os/Handler;)Landroid/os/Handler;
    //   687: pop
    //   688: invokestatic 485	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   691: invokevirtual 488	android/os/Looper:quit	()V
    //   694: aload_1
    //   695: monitorexit
    //   696: iload_3
    //   697: istore_2
    //   698: goto -535 -> 163
    //   701: astore 8
    //   703: aload_1
    //   704: monitorexit
    //   705: aload 8
    //   707: athrow
    //   708: new 353	java/lang/StringBuilder
    //   711: dup
    //   712: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   715: ldc_w 515
    //   718: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   721: aload_1
    //   722: invokevirtual 518	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   725: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   728: pop
    //   729: iload_3
    //   730: istore_2
    //   731: goto -568 -> 163
    //   734: astore_1
    //   735: invokestatic 454	android/os/SystemClock:elapsedRealtime	()J
    //   738: lstore 4
    //   740: aload_0
    //   741: aload_1
    //   742: invokevirtual 473	tV:a	()I
    //   745: sipush 1000
    //   748: imul
    //   749: i2l
    //   750: lload 4
    //   752: ladd
    //   753: putfield 68	sg:f	J
    //   756: return
    //   757: iload_2
    //   758: ifle -516 -> 242
    //   761: aload_0
    //   762: iconst_2
    //   763: invokevirtual 403	sg:hasMessages	(I)Z
    //   766: ifne -524 -> 242
    //   769: aload_0
    //   770: getfield 19	sg:a	Lsf;
    //   773: getfield 31	sf:a	Lsd;
    //   776: new 353	java/lang/StringBuilder
    //   779: dup
    //   780: invokespecial 354	java/lang/StringBuilder:<init>	()V
    //   783: ldc_w 520
    //   786: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   789: iload_2
    //   790: invokevirtual 523	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   793: ldc_w 525
    //   796: invokevirtual 360	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   799: aload_0
    //   800: getfield 56	sg:d	J
    //   803: invokevirtual 511	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   806: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   809: invokestatic 284	sd:a	(Lsd;Ljava/lang/String;)V
    //   812: aload_0
    //   813: getfield 56	sg:d	J
    //   816: lconst_0
    //   817: lcmp
    //   818: iflt -576 -> 242
    //   821: aload_0
    //   822: iconst_2
    //   823: aload_0
    //   824: getfield 56	sg:d	J
    //   827: invokevirtual 407	sg:sendEmptyMessageDelayed	(IJ)Z
    //   830: pop
    //   831: return
    //   832: astore 8
    //   834: goto -345 -> 489
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	837	0	this	sg
    //   162	628	2	i	int
    //   89	641	3	j	int
    //   392	359	4	l1	long
    //   398	155	6	l2	long
    //   264	54	8	localJSONObject	JSONObject
    //   329	1	8	localJSONException	org.json.JSONException
    //   492	5	8	localObject1	Object
    //   701	5	8	localObject2	Object
    //   832	1	8	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   259	326	329	org/json/JSONException
    //   410	435	440	tV
    //   90	163	463	java/lang/RuntimeException
    //   163	180	463	java/lang/RuntimeException
    //   186	217	463	java/lang/RuntimeException
    //   217	242	463	java/lang/RuntimeException
    //   243	259	463	java/lang/RuntimeException
    //   259	326	463	java/lang/RuntimeException
    //   331	355	463	java/lang/RuntimeException
    //   361	400	463	java/lang/RuntimeException
    //   410	435	463	java/lang/RuntimeException
    //   441	458	463	java/lang/RuntimeException
    //   499	548	463	java/lang/RuntimeException
    //   558	575	463	java/lang/RuntimeException
    //   581	598	463	java/lang/RuntimeException
    //   603	623	463	java/lang/RuntimeException
    //   628	672	463	java/lang/RuntimeException
    //   705	708	463	java/lang/RuntimeException
    //   708	729	463	java/lang/RuntimeException
    //   735	756	463	java/lang/RuntimeException
    //   761	831	463	java/lang/RuntimeException
    //   474	483	492	finally
    //   483	489	492	finally
    //   489	491	492	finally
    //   494	496	492	finally
    //   558	575	580	tV
    //   672	696	701	finally
    //   703	705	701	finally
    //   217	242	734	tV
    //   483	489	832	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     sg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */