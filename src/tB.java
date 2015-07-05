import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;

class tb
{
  private byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    localByteArrayOutputStream.flush();
    return localByteArrayOutputStream.toByteArray();
  }
  
  public boolean a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((paramContext != null) && (paramContext.isConnectedOrConnecting()))
        {
          bool1 = true;
          boolean bool2 = bool1;
          if (sD.a)
          {
            StringBuilder localStringBuilder = new StringBuilder().append("ConnectivityManager says we ");
            if (bool1)
            {
              paramContext = "are";
              localStringBuilder.append(paramContext).append(" online").toString();
              return bool1;
            }
            paramContext = "are not";
            continue;
          }
          return bool2;
        }
      }
      catch (SecurityException paramContext)
      {
        bool1 = sD.a;
        bool2 = true;
      }
      boolean bool1 = false;
    }
  }
  
  public byte[] a(Context paramContext, String[] paramArrayOfString)
  {
    if (!a(paramContext)) {
      return null;
    }
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramContext = paramArrayOfString[i];
      try
      {
        byte[] arrayOfByte = a(paramContext, null);
        return arrayOfByte;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        new StringBuilder().append("Cannot interpret ").append(paramContext).append(" as a URL.").toString();
        i += 1;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          if (sD.a) {
            new StringBuilder().append("Cannot get ").append(paramContext).append(".").toString();
          }
        }
      }
      catch (OutOfMemoryError paramArrayOfString)
      {
        new StringBuilder().append("Out of memory when getting to ").append(paramContext).append(".").toString();
      }
    }
    return null;
  }
  
  /* Error */
  public byte[] a(String paramString, java.util.List<org.apache.http.NameValuePair> paramList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aconst_null
    //   4: astore 12
    //   6: getstatic 59	sD:a	Z
    //   9: ifeq +23 -> 32
    //   12: new 61	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   19: ldc 104
    //   21: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_1
    //   25: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: pop
    //   32: iconst_0
    //   33: istore_3
    //   34: aconst_null
    //   35: astore 8
    //   37: iload_3
    //   38: iconst_3
    //   39: if_icmpge +351 -> 390
    //   42: iload 4
    //   44: ifne +346 -> 390
    //   47: new 106	java/net/URL
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 109	java/net/URL:<init>	(Ljava/lang/String;)V
    //   55: invokevirtual 113	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   58: checkcast 115	java/net/HttpURLConnection
    //   61: astore 7
    //   63: aload 7
    //   65: sipush 2000
    //   68: invokevirtual 119	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   71: aload 7
    //   73: sipush 10000
    //   76: invokevirtual 122	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   79: aload_2
    //   80: ifnull +587 -> 667
    //   83: aload 7
    //   85: iconst_1
    //   86: invokevirtual 126	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   89: new 128	org/apache/http/client/entity/UrlEncodedFormEntity
    //   92: dup
    //   93: aload_2
    //   94: ldc -126
    //   96: invokespecial 133	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   99: astore 11
    //   101: aload 7
    //   103: ldc -121
    //   105: invokevirtual 138	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   108: aload 7
    //   110: aload 11
    //   112: invokevirtual 142	org/apache/http/client/entity/UrlEncodedFormEntity:getContentLength	()J
    //   115: l2i
    //   116: invokevirtual 145	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   119: aload 7
    //   121: invokevirtual 149	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   124: astore 9
    //   126: new 151	java/io/BufferedOutputStream
    //   129: dup
    //   130: aload 9
    //   132: invokespecial 154	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   135: astore 10
    //   137: aload 11
    //   139: aload 10
    //   141: invokevirtual 157	org/apache/http/client/entity/UrlEncodedFormEntity:writeTo	(Ljava/io/OutputStream;)V
    //   144: aload 10
    //   146: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   149: aload 9
    //   151: invokevirtual 163	java/io/OutputStream:close	()V
    //   154: aload 7
    //   156: invokevirtual 167	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   159: astore 9
    //   161: aload_0
    //   162: aload 9
    //   164: invokespecial 169	tb:a	(Ljava/io/InputStream;)[B
    //   167: astore 10
    //   169: aload 10
    //   171: astore 8
    //   173: aload 9
    //   175: invokevirtual 170	java/io/InputStream:close	()V
    //   178: iconst_0
    //   179: ifeq +11 -> 190
    //   182: new 172	java/lang/NullPointerException
    //   185: dup
    //   186: invokespecial 173	java/lang/NullPointerException:<init>	()V
    //   189: athrow
    //   190: iconst_0
    //   191: ifeq +11 -> 202
    //   194: new 172	java/lang/NullPointerException
    //   197: dup
    //   198: invokespecial 173	java/lang/NullPointerException:<init>	()V
    //   201: athrow
    //   202: iconst_0
    //   203: ifeq +11 -> 214
    //   206: new 172	java/lang/NullPointerException
    //   209: dup
    //   210: invokespecial 173	java/lang/NullPointerException:<init>	()V
    //   213: athrow
    //   214: aload 7
    //   216: ifnull +467 -> 683
    //   219: aload 7
    //   221: invokevirtual 176	java/net/HttpURLConnection:disconnect	()V
    //   224: iconst_1
    //   225: istore 5
    //   227: aload 8
    //   229: astore 7
    //   231: iload_3
    //   232: istore 4
    //   234: iload 5
    //   236: istore_3
    //   237: iload 4
    //   239: istore 5
    //   241: iload_3
    //   242: istore 4
    //   244: iload 5
    //   246: istore_3
    //   247: aload 7
    //   249: astore 8
    //   251: goto -214 -> 37
    //   254: astore 7
    //   256: aconst_null
    //   257: astore 13
    //   259: aconst_null
    //   260: astore 10
    //   262: aconst_null
    //   263: astore 11
    //   265: aload 8
    //   267: astore 7
    //   269: aconst_null
    //   270: astore 9
    //   272: aload 13
    //   274: astore 8
    //   276: getstatic 59	sD:a	Z
    //   279: istore 6
    //   281: iload_3
    //   282: iconst_1
    //   283: iadd
    //   284: istore_3
    //   285: aload 9
    //   287: ifnull +8 -> 295
    //   290: aload 9
    //   292: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   295: aload 10
    //   297: ifnull +8 -> 305
    //   300: aload 10
    //   302: invokevirtual 163	java/io/OutputStream:close	()V
    //   305: aload 11
    //   307: ifnull +8 -> 315
    //   310: aload 11
    //   312: invokevirtual 170	java/io/InputStream:close	()V
    //   315: aload 8
    //   317: ifnull +353 -> 670
    //   320: aload 8
    //   322: invokevirtual 176	java/net/HttpURLConnection:disconnect	()V
    //   325: iload 4
    //   327: istore 5
    //   329: iload_3
    //   330: istore 4
    //   332: iload 5
    //   334: istore_3
    //   335: goto -98 -> 237
    //   338: astore_1
    //   339: aload 8
    //   341: astore 7
    //   343: aload 9
    //   345: astore_2
    //   346: aload 10
    //   348: astore 8
    //   350: aload_2
    //   351: ifnull +7 -> 358
    //   354: aload_2
    //   355: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   358: aload 8
    //   360: ifnull +8 -> 368
    //   363: aload 8
    //   365: invokevirtual 163	java/io/OutputStream:close	()V
    //   368: aload 11
    //   370: ifnull +8 -> 378
    //   373: aload 11
    //   375: invokevirtual 170	java/io/InputStream:close	()V
    //   378: aload 7
    //   380: ifnull +8 -> 388
    //   383: aload 7
    //   385: invokevirtual 176	java/net/HttpURLConnection:disconnect	()V
    //   388: aload_1
    //   389: athrow
    //   390: getstatic 59	sD:a	Z
    //   393: istore 6
    //   395: aload 8
    //   397: areturn
    //   398: astore 9
    //   400: goto -210 -> 190
    //   403: astore 9
    //   405: goto -203 -> 202
    //   408: astore 9
    //   410: goto -196 -> 214
    //   413: astore 9
    //   415: goto -120 -> 295
    //   418: astore 9
    //   420: goto -115 -> 305
    //   423: astore 9
    //   425: goto -110 -> 315
    //   428: astore_2
    //   429: goto -71 -> 358
    //   432: astore_2
    //   433: goto -65 -> 368
    //   436: astore_2
    //   437: goto -59 -> 378
    //   440: astore_1
    //   441: aconst_null
    //   442: astore_2
    //   443: aconst_null
    //   444: astore 8
    //   446: aconst_null
    //   447: astore 11
    //   449: aload 12
    //   451: astore 7
    //   453: goto -103 -> 350
    //   456: astore_1
    //   457: aconst_null
    //   458: astore_2
    //   459: aconst_null
    //   460: astore 8
    //   462: aconst_null
    //   463: astore 11
    //   465: goto -115 -> 350
    //   468: astore_1
    //   469: aconst_null
    //   470: astore_2
    //   471: aconst_null
    //   472: astore 11
    //   474: aload 9
    //   476: astore 8
    //   478: goto -128 -> 350
    //   481: astore_1
    //   482: aconst_null
    //   483: astore 11
    //   485: aload 10
    //   487: astore_2
    //   488: aload 9
    //   490: astore 8
    //   492: goto -142 -> 350
    //   495: astore_1
    //   496: aconst_null
    //   497: astore_2
    //   498: aconst_null
    //   499: astore 8
    //   501: aload 9
    //   503: astore 11
    //   505: goto -155 -> 350
    //   508: astore 9
    //   510: aload 7
    //   512: astore 9
    //   514: aconst_null
    //   515: astore 10
    //   517: aconst_null
    //   518: astore 11
    //   520: aload 8
    //   522: astore 7
    //   524: aconst_null
    //   525: astore 13
    //   527: aload 9
    //   529: astore 8
    //   531: aload 13
    //   533: astore 9
    //   535: goto -259 -> 276
    //   538: astore 10
    //   540: aload 9
    //   542: astore 10
    //   544: aconst_null
    //   545: astore 11
    //   547: aload 8
    //   549: astore 9
    //   551: aconst_null
    //   552: astore 13
    //   554: aload 7
    //   556: astore 8
    //   558: aload 9
    //   560: astore 7
    //   562: aload 13
    //   564: astore 9
    //   566: goto -290 -> 276
    //   569: astore 11
    //   571: aload 9
    //   573: astore 11
    //   575: aconst_null
    //   576: astore 13
    //   578: aload 7
    //   580: astore 9
    //   582: aload 8
    //   584: astore 7
    //   586: aload 9
    //   588: astore 8
    //   590: aload 10
    //   592: astore 9
    //   594: aload 11
    //   596: astore 10
    //   598: aload 13
    //   600: astore 11
    //   602: goto -326 -> 276
    //   605: astore 10
    //   607: aconst_null
    //   608: astore 10
    //   610: aload 9
    //   612: astore 11
    //   614: aconst_null
    //   615: astore 13
    //   617: aload 7
    //   619: astore 9
    //   621: aload 8
    //   623: astore 7
    //   625: aload 9
    //   627: astore 8
    //   629: aload 13
    //   631: astore 9
    //   633: goto -357 -> 276
    //   636: astore 10
    //   638: aconst_null
    //   639: astore 13
    //   641: aconst_null
    //   642: astore 10
    //   644: aload 9
    //   646: astore 11
    //   648: aload 7
    //   650: astore 9
    //   652: aload 8
    //   654: astore 7
    //   656: aload 9
    //   658: astore 8
    //   660: aload 13
    //   662: astore 9
    //   664: goto -388 -> 276
    //   667: goto -513 -> 154
    //   670: iload 4
    //   672: istore 5
    //   674: iload_3
    //   675: istore 4
    //   677: iload 5
    //   679: istore_3
    //   680: goto -443 -> 237
    //   683: iconst_1
    //   684: istore 5
    //   686: iload_3
    //   687: istore 4
    //   689: aload 8
    //   691: astore 7
    //   693: iload 5
    //   695: istore_3
    //   696: goto -459 -> 237
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	699	0	this	tb
    //   0	699	1	paramString	String
    //   0	699	2	paramList	java.util.List<org.apache.http.NameValuePair>
    //   33	663	3	i	int
    //   1	687	4	j	int
    //   225	469	5	k	int
    //   279	115	6	bool	boolean
    //   61	187	7	localObject1	Object
    //   254	1	7	localEOFException1	java.io.EOFException
    //   267	425	7	localObject2	Object
    //   35	655	8	localObject3	Object
    //   124	220	9	localObject4	Object
    //   398	1	9	localIOException1	IOException
    //   403	1	9	localIOException2	IOException
    //   408	1	9	localIOException3	IOException
    //   413	1	9	localIOException4	IOException
    //   418	1	9	localIOException5	IOException
    //   423	79	9	localIOException6	IOException
    //   508	1	9	localEOFException2	java.io.EOFException
    //   512	151	9	localObject5	Object
    //   135	381	10	localObject6	Object
    //   538	1	10	localEOFException3	java.io.EOFException
    //   542	55	10	localObject7	Object
    //   605	1	10	localEOFException4	java.io.EOFException
    //   608	1	10	localObject8	Object
    //   636	1	10	localEOFException5	java.io.EOFException
    //   642	1	10	localObject9	Object
    //   99	447	11	localObject10	Object
    //   569	1	11	localEOFException6	java.io.EOFException
    //   573	74	11	localObject11	Object
    //   4	446	12	localObject12	Object
    //   257	404	13	localObject13	Object
    // Exception table:
    //   from	to	target	type
    //   47	63	254	java/io/EOFException
    //   276	281	338	finally
    //   182	190	398	java/io/IOException
    //   194	202	403	java/io/IOException
    //   206	214	408	java/io/IOException
    //   290	295	413	java/io/IOException
    //   300	305	418	java/io/IOException
    //   310	315	423	java/io/IOException
    //   354	358	428	java/io/IOException
    //   363	368	432	java/io/IOException
    //   373	378	436	java/io/IOException
    //   47	63	440	finally
    //   63	79	456	finally
    //   83	126	456	finally
    //   154	161	456	finally
    //   126	137	468	finally
    //   149	154	468	finally
    //   137	149	481	finally
    //   161	169	495	finally
    //   173	178	495	finally
    //   63	79	508	java/io/EOFException
    //   83	126	508	java/io/EOFException
    //   154	161	508	java/io/EOFException
    //   126	137	538	java/io/EOFException
    //   149	154	538	java/io/EOFException
    //   137	149	569	java/io/EOFException
    //   161	169	605	java/io/EOFException
    //   173	178	636	java/io/EOFException
  }
}

/* Location:
 * Qualified Name:     tb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */