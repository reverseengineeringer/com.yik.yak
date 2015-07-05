import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.JsonWriter;
import android.util.Pair;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class uv
  extends Handler
{
  private ua b;
  private uw c;
  private final Context d;
  private final String e;
  
  public uv(uq paramuq, Context paramContext, String paramString, Looper paramLooper)
  {
    super(paramLooper);
    d = paramContext;
    e = paramString;
    c = null;
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokespecial 35	uv:f	()Landroid/content/SharedPreferences;
    //   6: astore_3
    //   7: aload_3
    //   8: ldc 37
    //   10: aconst_null
    //   11: invokeinterface 43 3 0
    //   16: astore 5
    //   18: aload_3
    //   19: ldc 45
    //   21: aconst_null
    //   22: invokeinterface 43 3 0
    //   27: astore 4
    //   29: aload 5
    //   31: ifnull +109 -> 140
    //   34: new 47	org/json/JSONArray
    //   37: dup
    //   38: aload 5
    //   40: invokespecial 50	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   43: astore 6
    //   45: aload_0
    //   46: getfield 18	uv:a	Luq;
    //   49: invokestatic 55	uq:d	(Luq;)Ljava/util/List;
    //   52: astore 5
    //   54: aload 5
    //   56: monitorenter
    //   57: aload_0
    //   58: getfield 18	uv:a	Luq;
    //   61: invokestatic 55	uq:d	(Luq;)Ljava/util/List;
    //   64: invokeinterface 60 1 0
    //   69: iconst_0
    //   70: istore_1
    //   71: iload_1
    //   72: aload 6
    //   74: invokevirtual 64	org/json/JSONArray:length	()I
    //   77: if_icmpge +60 -> 137
    //   80: aload 6
    //   82: iload_1
    //   83: invokevirtual 68	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   86: astore 8
    //   88: aload 8
    //   90: ldc 70
    //   92: invokestatic 75	tM:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   95: astore 7
    //   97: aload 8
    //   99: ldc 77
    //   101: invokevirtual 82	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   104: astore 8
    //   106: aload_0
    //   107: getfield 18	uv:a	Luq;
    //   110: invokestatic 55	uq:d	(Luq;)Ljava/util/List;
    //   113: new 84	android/util/Pair
    //   116: dup
    //   117: aload 7
    //   119: aload 8
    //   121: invokespecial 87	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   124: invokeinterface 91 2 0
    //   129: pop
    //   130: iload_1
    //   131: iconst_1
    //   132: iadd
    //   133: istore_1
    //   134: goto -63 -> 71
    //   137: aload 5
    //   139: monitorexit
    //   140: aload 4
    //   142: ifnull +138 -> 280
    //   145: new 47	org/json/JSONArray
    //   148: dup
    //   149: aload 4
    //   151: invokespecial 50	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   154: astore 5
    //   156: aload_0
    //   157: getfield 18	uv:a	Luq;
    //   160: invokestatic 93	uq:e	(Luq;)Ljava/util/List;
    //   163: astore 4
    //   165: aload 4
    //   167: monitorenter
    //   168: aload_0
    //   169: getfield 18	uv:a	Luq;
    //   172: invokestatic 93	uq:e	(Luq;)Ljava/util/List;
    //   175: invokeinterface 60 1 0
    //   180: iload_2
    //   181: istore_1
    //   182: iload_1
    //   183: aload 5
    //   185: invokevirtual 64	org/json/JSONArray:length	()I
    //   188: if_icmpge +97 -> 285
    //   191: aload 5
    //   193: iload_1
    //   194: invokevirtual 68	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   197: astore 6
    //   199: aload 6
    //   201: ldc 95
    //   203: invokestatic 75	tM:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   206: astore 7
    //   208: aload_0
    //   209: getfield 18	uv:a	Luq;
    //   212: invokestatic 93	uq:e	(Luq;)Ljava/util/List;
    //   215: new 84	android/util/Pair
    //   218: dup
    //   219: aload 7
    //   221: aload 6
    //   223: invokespecial 87	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   226: invokeinterface 91 2 0
    //   231: pop
    //   232: iload_1
    //   233: iconst_1
    //   234: iadd
    //   235: istore_1
    //   236: goto -54 -> 182
    //   239: astore 4
    //   241: aload 5
    //   243: monitorexit
    //   244: aload 4
    //   246: athrow
    //   247: astore 4
    //   249: aload_3
    //   250: invokeinterface 99 1 0
    //   255: astore_3
    //   256: aload_3
    //   257: ldc 37
    //   259: invokeinterface 105 2 0
    //   264: pop
    //   265: aload_3
    //   266: ldc 45
    //   268: invokeinterface 105 2 0
    //   273: pop
    //   274: aload_3
    //   275: invokeinterface 108 1 0
    //   280: aload_0
    //   281: invokespecial 110	uv:e	()V
    //   284: return
    //   285: aload 4
    //   287: monitorexit
    //   288: goto -8 -> 280
    //   291: astore 5
    //   293: aload 4
    //   295: monitorexit
    //   296: aload 5
    //   298: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	this	uv
    //   70	166	1	i	int
    //   1	180	2	j	int
    //   6	269	3	localObject1	Object
    //   27	139	4	localObject2	Object
    //   239	6	4	localObject3	Object
    //   247	47	4	localJSONException	JSONException
    //   291	6	5	localObject5	Object
    //   43	179	6	localObject6	Object
    //   95	125	7	str	String
    //   86	34	8	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   57	69	239	finally
    //   71	130	239	finally
    //   137	140	239	finally
    //   241	244	239	finally
    //   34	57	247	org/json/JSONException
    //   145	168	247	org/json/JSONException
    //   244	247	247	org/json/JSONException
    //   296	299	247	org/json/JSONException
    //   168	180	291	finally
    //   182	232	291	finally
    //   285	288	291	finally
    //   293	296	291	finally
  }
  
  /* Error */
  private void a(String paramString)
  {
    // Byte code:
    //   0: new 79	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 114	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: ldc 116
    //   11: aload_1
    //   12: invokevirtual 120	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   15: pop
    //   16: new 122	java/io/OutputStreamWriter
    //   19: dup
    //   20: aload_0
    //   21: getfield 124	uv:b	Lua;
    //   24: invokevirtual 129	ua:b	()Ljava/io/BufferedOutputStream;
    //   27: invokespecial 132	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   30: astore_1
    //   31: aload_1
    //   32: ldc -122
    //   34: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   37: aload_1
    //   38: ldc -117
    //   40: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: aload_2
    //   45: invokevirtual 143	org/json/JSONObject:toString	()Ljava/lang/String;
    //   48: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   51: aload_1
    //   52: ldc -111
    //   54: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   57: aload_1
    //   58: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   61: return
    //   62: astore_2
    //   63: aload_1
    //   64: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   67: return
    //   68: astore_1
    //   69: return
    //   70: astore_2
    //   71: aload_1
    //   72: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   75: aload_2
    //   76: athrow
    //   77: astore_1
    //   78: return
    //   79: astore_1
    //   80: goto -5 -> 75
    //   83: astore_1
    //   84: goto -68 -> 16
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	uv
    //   0	87	1	paramString	String
    //   7	38	2	localJSONObject	JSONObject
    //   62	1	2	localIOException	IOException
    //   70	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   31	57	62	java/io/IOException
    //   63	67	68	java/io/IOException
    //   31	57	70	finally
    //   57	61	77	java/io/IOException
    //   71	75	79	java/io/IOException
    //   8	16	83	org/json/JSONException
  }
  
  private void a(JSONArray paramJSONArray)
  {
    SharedPreferences.Editor localEditor = f().edit();
    localEditor.putString("mixpanel.viewcrawler.bindings", paramJSONArray.toString());
    localEditor.apply();
    a();
  }
  
  private void a(JSONObject paramJSONObject)
  {
    long l1 = System.currentTimeMillis();
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("payload");
      if (paramJSONObject.has("config")) {
        c = uq.i(a).b(paramJSONObject);
      }
      if (c == null)
      {
        a("No snapshot configuration (or a malformed snapshot configuration) was sent.");
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      a("Payload with snapshot config required with snapshot request");
      return;
    }
    catch (tV paramJSONObject)
    {
      a(paramJSONObject.getMessage());
      return;
    }
    BufferedOutputStream localBufferedOutputStream = b.b();
    paramJSONObject = new OutputStreamWriter(localBufferedOutputStream);
    try
    {
      paramJSONObject.write("{");
      paramJSONObject.write("\"type\": \"snapshot_response\",");
      paramJSONObject.write("\"payload\": {");
      paramJSONObject.write("\"activities\":");
      paramJSONObject.flush();
      c.a(uq.b(a), localBufferedOutputStream);
      long l2 = System.currentTimeMillis();
      paramJSONObject.write(",\"snapshot_time_millis\": ");
      paramJSONObject.write(Long.toString(l2 - l1));
      paramJSONObject.write("}");
      paramJSONObject.write("}");
      try
      {
        paramJSONObject.close();
        return;
      }
      catch (IOException paramJSONObject)
      {
        return;
      }
      try
      {
        paramJSONObject.close();
        throw ((Throwable)localObject);
      }
      catch (IOException paramJSONObject)
      {
        for (;;) {}
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      try
      {
        paramJSONObject.close();
        return;
      }
      catch (IOException paramJSONObject) {}
    }
    finally
    {
      localObject = finally;
    }
  }
  
  private void b()
  {
    boolean bool = sD.a;
    if ((b != null) && (b.a()))
    {
      bool = sD.a;
      return;
    }
    if (uq.f(a) == null)
    {
      bool = sD.a;
      return;
    }
    String str = sD.a(d).p() + e;
    try
    {
      Socket localSocket = uq.f(a).createSocket();
      b = new ua(new URI(str), new us(a, null), localSocket);
      return;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      new StringBuilder().append("Error parsing URI ").append(str).append(" for editor websocket").toString();
      return;
    }
    catch (ue localue)
    {
      new StringBuilder().append("Error connecting to URI ").append(str).toString();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  private void b(String paramString)
  {
    if ((b == null) || (!b.a())) {
      return;
    }
    localJsonWriter = new JsonWriter(new OutputStreamWriter(b.b()));
    try
    {
      localJsonWriter.beginObject();
      localJsonWriter.name("type").value("track_message");
      localJsonWriter.name("payload");
      localJsonWriter.beginObject();
      localJsonWriter.name("event_name").value(paramString);
      localJsonWriter.endObject();
      localJsonWriter.endObject();
      localJsonWriter.flush();
      try
      {
        localJsonWriter.close();
        return;
      }
      catch (IOException paramString)
      {
        return;
      }
      try
      {
        localJsonWriter.close();
        throw paramString;
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
    catch (IOException paramString)
    {
      paramString = paramString;
      try
      {
        localJsonWriter.close();
        return;
      }
      catch (IOException paramString) {}
    }
    finally
    {
      paramString = finally;
    }
  }
  
  private void b(JSONObject arg1)
  {
    try
    {
      String str = tM.a(???, "target");
      JSONObject localJSONObject = ???.getJSONObject("change");
      synchronized (uq.j(a))
      {
        uq.j(a).add(new Pair(str, localJSONObject));
        e();
        return;
      }
      return;
    }
    catch (JSONException ???) {}
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: new 122	java/io/OutputStreamWriter
    //   3: dup
    //   4: aload_0
    //   5: getfield 124	uv:b	Lua;
    //   8: invokevirtual 129	ua:b	()Ljava/io/BufferedOutputStream;
    //   11: invokespecial 132	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   14: astore_1
    //   15: aload_1
    //   16: ldc_w 301
    //   19: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   22: aload_1
    //   23: ldc -59
    //   25: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   28: aload_1
    //   29: ldc_w 303
    //   32: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   35: aload_1
    //   36: ldc_w 305
    //   39: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   42: aload_1
    //   43: new 234	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   50: getstatic 310	android/os/Build:BRAND	Ljava/lang/String;
    //   53: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc_w 312
    //   59: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: getstatic 315	android/os/Build:MODEL	Ljava/lang/String;
    //   65: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 246	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 319	org/json/JSONObject:quote	(Ljava/lang/String;)Ljava/lang/String;
    //   74: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   77: aload_1
    //   78: ldc_w 321
    //   81: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   84: aload_1
    //   85: ldc_w 323
    //   88: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   91: aload_1
    //   92: new 79	org/json/JSONObject
    //   95: dup
    //   96: aload_0
    //   97: getfield 18	uv:a	Luq;
    //   100: invokestatic 327	uq:g	(Luq;)Ltm;
    //   103: invokevirtual 332	tm:a	()Ljava/util/Map;
    //   106: invokespecial 335	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   109: invokevirtual 143	org/json/JSONObject:toString	()Ljava/lang/String;
    //   112: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   115: aload_0
    //   116: getfield 18	uv:a	Luq;
    //   119: invokestatic 339	uq:h	(Luq;)Ljava/util/Map;
    //   122: invokeinterface 345 1 0
    //   127: invokeinterface 351 1 0
    //   132: astore_2
    //   133: aload_2
    //   134: invokeinterface 356 1 0
    //   139: ifeq +68 -> 207
    //   142: aload_2
    //   143: invokeinterface 360 1 0
    //   148: checkcast 362	java/util/Map$Entry
    //   151: astore_3
    //   152: aload_1
    //   153: ldc_w 321
    //   156: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   159: aload_1
    //   160: aload_3
    //   161: invokeinterface 365 1 0
    //   166: checkcast 367	java/lang/String
    //   169: invokestatic 319	org/json/JSONObject:quote	(Ljava/lang/String;)Ljava/lang/String;
    //   172: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   175: aload_1
    //   176: ldc_w 369
    //   179: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   182: aload_1
    //   183: aload_3
    //   184: invokeinterface 372 1 0
    //   189: checkcast 367	java/lang/String
    //   192: invokestatic 319	org/json/JSONObject:quote	(Ljava/lang/String;)Ljava/lang/String;
    //   195: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   198: goto -65 -> 133
    //   201: astore_2
    //   202: aload_1
    //   203: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   206: return
    //   207: aload_1
    //   208: ldc -111
    //   210: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   213: aload_1
    //   214: ldc -111
    //   216: invokevirtual 137	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   219: aload_1
    //   220: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   223: return
    //   224: astore_1
    //   225: return
    //   226: astore_2
    //   227: aload_1
    //   228: invokevirtual 148	java/io/OutputStreamWriter:close	()V
    //   231: aload_2
    //   232: athrow
    //   233: astore_1
    //   234: return
    //   235: astore_1
    //   236: goto -5 -> 231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	this	uv
    //   14	206	1	localOutputStreamWriter	OutputStreamWriter
    //   224	4	1	localIOException1	IOException
    //   233	1	1	localIOException2	IOException
    //   235	1	1	localIOException3	IOException
    //   132	11	2	localIterator	java.util.Iterator
    //   201	1	2	localIOException4	IOException
    //   226	6	2	localObject	Object
    //   151	33	3	localEntry	java.util.Map.Entry
    // Exception table:
    //   from	to	target	type
    //   15	133	201	java/io/IOException
    //   133	198	201	java/io/IOException
    //   207	219	201	java/io/IOException
    //   219	223	224	java/io/IOException
    //   15	133	226	finally
    //   133	198	226	finally
    //   207	219	226	finally
    //   202	206	233	java/io/IOException
    //   227	231	235	java/io/IOException
  }
  
  private void c(JSONObject arg1)
  {
    try
    {
      JSONArray localJSONArray = ???.getJSONObject("payload").getJSONArray("events");
      int j = localJSONArray.length();
      synchronized (uq.k(a))
      {
        uq.k(a).clear();
        int i = 0;
        for (;;)
        {
          if (i < j) {
            try
            {
              JSONObject localJSONObject = localJSONArray.getJSONObject(i);
              String str = tM.a(localJSONObject, "target_activity");
              uq.k(a).add(new Pair(str, localJSONObject));
              i += 1;
            }
            catch (JSONException localJSONException)
            {
              for (;;)
              {
                new StringBuilder().append("Bad event binding received from editor in ").append(localJSONArray.toString()).toString();
              }
            }
          }
        }
      }
      e();
      return;
    }
    catch (JSONException ???) {}
  }
  
  private void d()
  {
    synchronized (uq.j(a))
    {
      uq.j(a).clear();
    }
    synchronized (uq.k(a))
    {
      uq.k(a).clear();
      c = null;
      e();
      return;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
  }
  
  private void e()
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int k;
      int i;
      Pair localPair1;
      synchronized (uq.d(a))
      {
        k = uq.d(a).size();
        i = 0;
        if (i < k) {
          localPair1 = (Pair)uq.d(a).get(i);
        }
      }
      try
      {
        localObject6 = uq.i(a).a((JSONObject)second);
        localArrayList.add(new Pair(first, localObject6));
        i += 1;
      }
      catch (tW localtW1)
      {
        Object localObject6;
        for (;;)
        {
          localtW1.getMessage();
        }
        localObject2 = finally;
        throw ((Throwable)localObject2);
        for (;;)
        {
          Pair localPair2;
          synchronized (uq.j(a))
          {
            k = uq.j(a).size();
            i = 0;
            if (i < k) {
              localPair2 = (Pair)uq.j(a).get(i);
            }
          }
          try
          {
            localObject6 = uq.i(a).a((JSONObject)second);
            ((List)localObject2).add(new Pair(first, localObject6));
            i += 1;
          }
          catch (tW localtW2)
          {
            for (;;)
            {
              localtW2.getMessage();
            }
            localObject3 = finally;
            throw ((Throwable)localObject3);
            for (;;)
            {
              Pair localPair3;
              synchronized (uq.e(a))
              {
                k = uq.e(a).size();
                i = 0;
                if (i < k) {
                  localPair3 = (Pair)uq.e(a).get(i);
                }
              }
              try
              {
                localObject6 = uq.i(a).a((JSONObject)second, uq.l(a));
                ((List)localObject3).add(new Pair(first, localObject6));
                i += 1;
              }
              catch (tW localtW3)
              {
                for (;;)
                {
                  localtW3.getMessage();
                }
                localObject4 = finally;
                throw ((Throwable)localObject4);
                for (;;)
                {
                  Pair localPair4;
                  synchronized (uq.k(a))
                  {
                    k = uq.k(a).size();
                    i = 0;
                    if (i < k) {
                      localPair4 = (Pair)uq.k(a).get(i);
                    }
                  }
                  try
                  {
                    localObject6 = uq.i(a).a((JSONObject)second, uq.l(a));
                    ((List)localObject4).add(new Pair(first, localObject6));
                    i += 1;
                  }
                  catch (tW localtW4)
                  {
                    for (;;)
                    {
                      localtW4.getMessage();
                    }
                    localObject5 = finally;
                    throw ((Throwable)localObject5);
                    HashMap localHashMap = new HashMap();
                    k = ((List)localObject5).size();
                    i = j;
                    if (i < k)
                    {
                      localObject6 = (Pair)((List)localObject5).get(i);
                      if (localHashMap.containsKey(first)) {
                        ??? = (List)localHashMap.get(first);
                      }
                      for (;;)
                      {
                        ((List)???).add(second);
                        i += 1;
                        break;
                        ??? = new ArrayList();
                        localHashMap.put(first, ???);
                      }
                    }
                    uq.b(a).a(localHashMap);
                    return;
                  }
                  catch (tV localtV1)
                  {
                    for (;;) {}
                  }
                }
              }
              catch (tV localtV2)
              {
                for (;;) {}
              }
            }
          }
          catch (tV localtV3)
          {
            for (;;) {}
          }
        }
      }
      catch (tV localtV4)
      {
        for (;;) {}
      }
    }
  }
  
  private SharedPreferences f()
  {
    String str = "mixpanel.viewcrawler.changes" + e;
    return d.getSharedPreferences(str, 0);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    case 5: 
    case 7: 
    default: 
      return;
    case 0: 
      a();
      return;
    case 1: 
      b();
      return;
    case 4: 
      c();
      return;
    case 2: 
      a((JSONObject)obj);
      return;
    case 9: 
      b((String)obj);
      return;
    case 3: 
      b((JSONObject)obj);
      return;
    case 6: 
      a((JSONArray)obj);
      return;
    case 8: 
      c((JSONObject)obj);
      return;
    }
    d();
  }
}

/* Location:
 * Qualified Name:     uv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */