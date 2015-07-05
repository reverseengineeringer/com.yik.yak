import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ha;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

class gh
  implements gu
{
  private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private final gi b;
  private volatile gS c;
  private final gv d;
  private final Context e;
  private final String f;
  private gg g;
  private long h;
  private final int i;
  private iY j;
  private gP k;
  private volatile boolean l = true;
  
  gh(gv paramgv, Context paramContext, gP paramgP)
  {
    this(paramgv, paramContext, "google_analytics_v4.db", 2000, paramgP);
  }
  
  gh(gv paramgv, Context paramContext, String paramString, int paramInt, gP paramgP)
  {
    e = paramContext.getApplicationContext();
    k = paramgP;
    f = paramString;
    d = paramgv;
    j = iZ.c();
    b = new gi(this, e, f);
    c = new gB(new DefaultHttpClient(), e, k);
    h = 0L;
    i = paramInt;
  }
  
  private SQLiteDatabase a(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      gf.d(paramString);
    }
    return null;
  }
  
  static String a(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList.add(gd.a((String)localEntry.getKey()) + "=" + gd.a((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }
  
  private void a(Map<String, String> paramMap, long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for putHit");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_string", a(paramMap));
    localContentValues.put("hit_time", Long.valueOf(paramLong));
    if (paramMap.containsKey("AppUID")) {}
    for (;;)
    {
      try
      {
        paramLong = Long.parseLong((String)paramMap.get("AppUID"));
        localContentValues.put("hit_app_id", Long.valueOf(paramLong));
        paramMap = paramString;
        if (paramString == null) {
          paramMap = "http://www.google-analytics.com/collect";
        }
        if (paramMap.length() != 0) {
          break;
        }
        gf.d("Empty path: not sending hit");
        return;
      }
      catch (NumberFormatException paramMap) {}
      paramLong = 0L;
    }
    localContentValues.put("hit_url", paramMap);
    try
    {
      localSQLiteDatabase.insert("hits2", null, localContentValues);
      d.a(false);
      return;
    }
    catch (SQLiteException paramMap)
    {
      gf.d("Error storing hit");
    }
  }
  
  private void a(Map<String, String> paramMap, Collection<ha> paramCollection)
  {
    String str = "&_v".substring(1);
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        ha localha = (ha)paramCollection.next();
        if ("appendVersion".equals(localha.a())) {
          paramMap.put(str, localha.b());
        }
      }
    }
  }
  
  private void f()
  {
    int m = b() - i + 1;
    if (m > 0)
    {
      List localList = a(m);
      gf.c("Store full, deleting " + localList.size() + " hits to make room.");
      a((String[])localList.toArray(new String[0]));
    }
  }
  
  int a()
  {
    boolean bool = true;
    long l1 = j.a();
    if (l1 <= h + 86400000L) {}
    do
    {
      return 0;
      h = l1;
      localObject = a("Error opening database for deleteStaleHits.");
    } while (localObject == null);
    int m = ((SQLiteDatabase)localObject).delete("hits2", "HIT_TIME < ?", new String[] { Long.toString(j.a() - 2592000000L) });
    Object localObject = d;
    if (b() == 0) {}
    for (;;)
    {
      ((gv)localObject).a(bool);
      return m;
      bool = false;
    }
  }
  
  /* Error */
  List<String> a(int paramInt)
  {
    // Byte code:
    //   0: new 123	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 325	java/util/ArrayList:<init>	()V
    //   7: astore 6
    //   9: iload_1
    //   10: ifgt +12 -> 22
    //   13: ldc_w 327
    //   16: invokestatic 119	gf:d	(Ljava/lang/String;)V
    //   19: aload 6
    //   21: areturn
    //   22: aload_0
    //   23: ldc_w 329
    //   26: invokespecial 201	gh:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnonnull +6 -> 37
    //   34: aload 6
    //   36: areturn
    //   37: ldc_w 331
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 37
    //   48: aastore
    //   49: invokestatic 51	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore 4
    //   54: iload_1
    //   55: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   58: astore 5
    //   60: aload_3
    //   61: ldc 35
    //   63: iconst_1
    //   64: anewarray 47	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: ldc 37
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: aload 4
    //   78: aload 5
    //   80: invokevirtual 339	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   83: astore 4
    //   85: aload 4
    //   87: astore_3
    //   88: aload 4
    //   90: invokeinterface 344 1 0
    //   95: ifeq +40 -> 135
    //   98: aload 4
    //   100: astore_3
    //   101: aload 6
    //   103: aload 4
    //   105: iconst_0
    //   106: invokeinterface 348 2 0
    //   111: invokestatic 350	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   114: invokeinterface 184 2 0
    //   119: pop
    //   120: aload 4
    //   122: astore_3
    //   123: aload 4
    //   125: invokeinterface 353 1 0
    //   130: istore_2
    //   131: iload_2
    //   132: ifne -34 -> 98
    //   135: aload 4
    //   137: ifnull +10 -> 147
    //   140: aload 4
    //   142: invokeinterface 356 1 0
    //   147: aload 6
    //   149: areturn
    //   150: astore 5
    //   152: aconst_null
    //   153: astore 4
    //   155: aload 4
    //   157: astore_3
    //   158: new 156	java/lang/StringBuilder
    //   161: dup
    //   162: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   165: ldc_w 358
    //   168: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload 5
    //   173: invokevirtual 361	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   176: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 119	gf:d	(Ljava/lang/String;)V
    //   185: aload 4
    //   187: ifnull -40 -> 147
    //   190: aload 4
    //   192: invokeinterface 356 1 0
    //   197: goto -50 -> 147
    //   200: astore 4
    //   202: aconst_null
    //   203: astore_3
    //   204: aload_3
    //   205: ifnull +9 -> 214
    //   208: aload_3
    //   209: invokeinterface 356 1 0
    //   214: aload 4
    //   216: athrow
    //   217: astore 4
    //   219: goto -15 -> 204
    //   222: astore 5
    //   224: goto -69 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	gh
    //   0	227	1	paramInt	int
    //   130	2	2	bool	boolean
    //   29	180	3	localObject1	Object
    //   52	139	4	localObject2	Object
    //   200	15	4	localObject3	Object
    //   217	1	4	localObject4	Object
    //   58	21	5	str	String
    //   150	22	5	localSQLiteException1	SQLiteException
    //   222	1	5	localSQLiteException2	SQLiteException
    //   7	141	6	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   37	85	150	android/database/sqlite/SQLiteException
    //   37	85	200	finally
    //   88	98	217	finally
    //   101	120	217	finally
    //   123	131	217	finally
    //   158	185	217	finally
    //   88	98	222	android/database/sqlite/SQLiteException
    //   101	120	222	android/database/sqlite/SQLiteException
    //   123	131	222	android/database/sqlite/SQLiteException
  }
  
  public void a(long paramLong)
  {
    boolean bool = true;
    Object localObject = a("Error opening database for clearHits");
    if (localObject != null)
    {
      if (paramLong != 0L) {
        break label54;
      }
      ((SQLiteDatabase)localObject).delete("hits2", null, null);
      localObject = d;
      if (b() != 0) {
        break label82;
      }
    }
    for (;;)
    {
      ((gv)localObject).a(bool);
      return;
      label54:
      ((SQLiteDatabase)localObject).delete("hits2", "hit_app_id = ?", new String[] { Long.valueOf(paramLong).toString() });
      break;
      label82:
      bool = false;
    }
  }
  
  @Deprecated
  void a(Collection<gc> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
    {
      gf.d("Empty/Null collection passed to deleteHits.");
      return;
    }
    String[] arrayOfString = new String[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int m = 0;
    while (paramCollection.hasNext())
    {
      arrayOfString[m] = String.valueOf(((gc)paramCollection.next()).b());
      m += 1;
    }
    a(arrayOfString);
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, Collection<ha> paramCollection)
  {
    a();
    f();
    a(paramMap, paramCollection);
    a(paramMap, paramLong, paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    l = paramBoolean;
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  void a(String[] paramArrayOfString)
  {
    boolean bool = true;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      gf.d("Empty hitIds passed to deleteHits.");
    }
    Object localObject;
    do
    {
      return;
      localObject = a("Error opening database for deleteHits.");
    } while (localObject == null);
    String str = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    for (;;)
    {
      try
      {
        ((SQLiteDatabase)localObject).delete("hits2", str, paramArrayOfString);
        localObject = d;
        if (b() == 0)
        {
          ((gv)localObject).a(bool);
          return;
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        gf.d("Error deleting hits " + TextUtils.join(",", paramArrayOfString));
        return;
      }
      bool = false;
    }
  }
  
  int b()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    int m = 0;
    int n = 0;
    Object localObject5 = a("Error opening database for getNumStoredHits.");
    if (localObject5 == null) {}
    for (;;)
    {
      return n;
      try
      {
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from hits2", null);
        localObject1 = localObject5;
        localObject3 = localObject5;
        if (((Cursor)localObject5).moveToFirst())
        {
          localObject1 = localObject5;
          localObject3 = localObject5;
          long l1 = ((Cursor)localObject5).getLong(0);
          m = (int)l1;
        }
        n = m;
        return m;
      }
      catch (SQLiteException localSQLiteException)
      {
        localObject4 = localObject1;
        gf.d("Error getting numStoredHits");
        return 0;
      }
      finally
      {
        Object localObject4;
        if (localObject4 != null) {
          ((Cursor)localObject4).close();
        }
      }
    }
  }
  
  /* Error */
  public List<gc> b(int paramInt)
  {
    // Byte code:
    //   0: new 123	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 325	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: ldc_w 428
    //   13: invokespecial 201	gh:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   16: astore 8
    //   18: aload 8
    //   20: ifnonnull +10 -> 30
    //   23: aload 5
    //   25: astore 6
    //   27: aload 6
    //   29: areturn
    //   30: aconst_null
    //   31: astore 4
    //   33: ldc_w 331
    //   36: iconst_1
    //   37: anewarray 4	java/lang/Object
    //   40: dup
    //   41: iconst_0
    //   42: ldc 37
    //   44: aastore
    //   45: invokestatic 51	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   48: astore 6
    //   50: iload_1
    //   51: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   54: astore 7
    //   56: aload 8
    //   58: ldc 35
    //   60: iconst_2
    //   61: anewarray 47	java/lang/String
    //   64: dup
    //   65: iconst_0
    //   66: ldc 37
    //   68: aastore
    //   69: dup
    //   70: iconst_1
    //   71: ldc 39
    //   73: aastore
    //   74: aconst_null
    //   75: aconst_null
    //   76: aconst_null
    //   77: aconst_null
    //   78: aload 6
    //   80: aload 7
    //   82: invokevirtual 339	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore 6
    //   87: aload 6
    //   89: astore 4
    //   91: new 123	java/util/ArrayList
    //   94: dup
    //   95: invokespecial 325	java/util/ArrayList:<init>	()V
    //   98: astore 7
    //   100: aload 4
    //   102: invokeinterface 344 1 0
    //   107: ifeq +50 -> 157
    //   110: aload 7
    //   112: new 378	gc
    //   115: dup
    //   116: aconst_null
    //   117: aload 4
    //   119: iconst_0
    //   120: invokeinterface 348 2 0
    //   125: aload 4
    //   127: iconst_1
    //   128: invokeinterface 348 2 0
    //   133: ldc_w 430
    //   136: invokespecial 433	gc:<init>	(Ljava/lang/String;JJLjava/lang/String;)V
    //   139: invokeinterface 184 2 0
    //   144: pop
    //   145: aload 4
    //   147: invokeinterface 353 1 0
    //   152: istore_3
    //   153: iload_3
    //   154: ifne -44 -> 110
    //   157: aload 4
    //   159: ifnull +10 -> 169
    //   162: aload 4
    //   164: invokeinterface 356 1 0
    //   169: aload 4
    //   171: astore 5
    //   173: ldc_w 331
    //   176: iconst_1
    //   177: anewarray 4	java/lang/Object
    //   180: dup
    //   181: iconst_0
    //   182: ldc 37
    //   184: aastore
    //   185: invokestatic 51	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   188: astore 6
    //   190: aload 4
    //   192: astore 5
    //   194: iload_1
    //   195: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   198: astore 9
    //   200: aload 4
    //   202: astore 5
    //   204: aload 8
    //   206: ldc 35
    //   208: iconst_3
    //   209: anewarray 47	java/lang/String
    //   212: dup
    //   213: iconst_0
    //   214: ldc 37
    //   216: aastore
    //   217: dup
    //   218: iconst_1
    //   219: ldc 43
    //   221: aastore
    //   222: dup
    //   223: iconst_2
    //   224: ldc 41
    //   226: aastore
    //   227: aconst_null
    //   228: aconst_null
    //   229: aconst_null
    //   230: aconst_null
    //   231: aload 6
    //   233: aload 9
    //   235: invokevirtual 339	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   238: astore 6
    //   240: aload 6
    //   242: invokeinterface 344 1 0
    //   247: ifeq +75 -> 322
    //   250: iconst_0
    //   251: istore_1
    //   252: aload 6
    //   254: checkcast 435	android/database/sqlite/SQLiteCursor
    //   257: invokevirtual 439	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   260: invokevirtual 444	android/database/CursorWindow:getNumRows	()I
    //   263: ifle +158 -> 421
    //   266: aload 7
    //   268: iload_1
    //   269: invokeinterface 447 2 0
    //   274: checkcast 378	gc
    //   277: aload 6
    //   279: iconst_1
    //   280: invokeinterface 450 2 0
    //   285: invokevirtual 452	gc:a	(Ljava/lang/String;)V
    //   288: aload 7
    //   290: iload_1
    //   291: invokeinterface 447 2 0
    //   296: checkcast 378	gc
    //   299: aload 6
    //   301: iconst_2
    //   302: invokeinterface 450 2 0
    //   307: invokevirtual 454	gc:b	(Ljava/lang/String;)V
    //   310: aload 6
    //   312: invokeinterface 353 1 0
    //   317: istore_3
    //   318: iload_3
    //   319: ifne +375 -> 694
    //   322: aload 6
    //   324: ifnull +10 -> 334
    //   327: aload 6
    //   329: invokeinterface 356 1 0
    //   334: aload 7
    //   336: areturn
    //   337: astore 6
    //   339: aconst_null
    //   340: astore 7
    //   342: aload 5
    //   344: astore 4
    //   346: aload 7
    //   348: astore 5
    //   350: new 156	java/lang/StringBuilder
    //   353: dup
    //   354: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   357: ldc_w 358
    //   360: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: aload 6
    //   365: invokevirtual 361	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   368: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokestatic 119	gf:d	(Ljava/lang/String;)V
    //   377: aload 4
    //   379: astore 6
    //   381: aload 5
    //   383: ifnull -356 -> 27
    //   386: aload 5
    //   388: invokeinterface 356 1 0
    //   393: aload 4
    //   395: areturn
    //   396: astore 6
    //   398: aload 4
    //   400: astore 5
    //   402: aload 6
    //   404: astore 4
    //   406: aload 5
    //   408: ifnull +10 -> 418
    //   411: aload 5
    //   413: invokeinterface 356 1 0
    //   418: aload 4
    //   420: athrow
    //   421: ldc_w 456
    //   424: iconst_1
    //   425: anewarray 4	java/lang/Object
    //   428: dup
    //   429: iconst_0
    //   430: aload 7
    //   432: iload_1
    //   433: invokeinterface 447 2 0
    //   438: checkcast 378	gc
    //   441: invokevirtual 380	gc:b	()J
    //   444: invokestatic 216	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   447: aastore
    //   448: invokestatic 51	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   451: invokestatic 119	gf:d	(Ljava/lang/String;)V
    //   454: goto -144 -> 310
    //   457: astore 5
    //   459: aload 6
    //   461: astore 4
    //   463: aload 5
    //   465: astore 6
    //   467: aload 4
    //   469: astore 5
    //   471: new 156	java/lang/StringBuilder
    //   474: dup
    //   475: invokespecial 157	java/lang/StringBuilder:<init>	()V
    //   478: ldc_w 458
    //   481: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: aload 6
    //   486: invokevirtual 361	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   489: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   495: invokestatic 119	gf:d	(Ljava/lang/String;)V
    //   498: aload 4
    //   500: astore 5
    //   502: new 123	java/util/ArrayList
    //   505: dup
    //   506: invokespecial 325	java/util/ArrayList:<init>	()V
    //   509: astore 6
    //   511: iconst_0
    //   512: istore_1
    //   513: aload 4
    //   515: astore 5
    //   517: aload 7
    //   519: invokeinterface 459 1 0
    //   524: astore 7
    //   526: aload 4
    //   528: astore 5
    //   530: aload 7
    //   532: invokeinterface 148 1 0
    //   537: ifeq +42 -> 579
    //   540: aload 4
    //   542: astore 5
    //   544: aload 7
    //   546: invokeinterface 152 1 0
    //   551: checkcast 378	gc
    //   554: astore 8
    //   556: aload 4
    //   558: astore 5
    //   560: aload 8
    //   562: invokevirtual 460	gc:a	()Ljava/lang/String;
    //   565: invokestatic 463	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   568: istore_3
    //   569: iload_1
    //   570: istore_2
    //   571: iload_3
    //   572: ifeq +24 -> 596
    //   575: iload_1
    //   576: ifeq +18 -> 594
    //   579: aload 4
    //   581: ifnull +10 -> 591
    //   584: aload 4
    //   586: invokeinterface 356 1 0
    //   591: aload 6
    //   593: areturn
    //   594: iconst_1
    //   595: istore_2
    //   596: aload 4
    //   598: astore 5
    //   600: aload 6
    //   602: aload 8
    //   604: invokeinterface 184 2 0
    //   609: pop
    //   610: iload_2
    //   611: istore_1
    //   612: goto -86 -> 526
    //   615: astore 4
    //   617: aload 5
    //   619: ifnull +10 -> 629
    //   622: aload 5
    //   624: invokeinterface 356 1 0
    //   629: aload 4
    //   631: athrow
    //   632: astore 4
    //   634: aload 6
    //   636: astore 5
    //   638: goto -21 -> 617
    //   641: astore 6
    //   643: goto -176 -> 467
    //   646: astore 6
    //   648: aload 4
    //   650: astore 5
    //   652: aload 6
    //   654: astore 4
    //   656: goto -250 -> 406
    //   659: astore 4
    //   661: goto -255 -> 406
    //   664: astore 6
    //   666: aload 4
    //   668: astore 7
    //   670: aload 5
    //   672: astore 4
    //   674: aload 7
    //   676: astore 5
    //   678: goto -328 -> 350
    //   681: astore 6
    //   683: aload 4
    //   685: astore 5
    //   687: aload 7
    //   689: astore 4
    //   691: goto -341 -> 350
    //   694: iload_1
    //   695: iconst_1
    //   696: iadd
    //   697: istore_1
    //   698: goto -446 -> 252
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	701	0	this	gh
    //   0	701	1	paramInt	int
    //   570	41	2	m	int
    //   152	420	3	bool	boolean
    //   31	566	4	localObject1	Object
    //   615	15	4	localObject2	Object
    //   632	17	4	localObject3	Object
    //   654	1	4	localObject4	Object
    //   659	8	4	localObject5	Object
    //   672	18	4	localObject6	Object
    //   7	405	5	localObject7	Object
    //   457	7	5	localSQLiteException1	SQLiteException
    //   469	217	5	localObject8	Object
    //   25	303	6	localObject9	Object
    //   337	27	6	localSQLiteException2	SQLiteException
    //   379	1	6	localObject10	Object
    //   396	64	6	localObject11	Object
    //   465	170	6	localObject12	Object
    //   641	1	6	localSQLiteException3	SQLiteException
    //   646	7	6	localObject13	Object
    //   664	1	6	localSQLiteException4	SQLiteException
    //   681	1	6	localSQLiteException5	SQLiteException
    //   54	634	7	localObject14	Object
    //   16	587	8	localObject15	Object
    //   198	36	9	str	String
    // Exception table:
    //   from	to	target	type
    //   33	87	337	android/database/sqlite/SQLiteException
    //   33	87	396	finally
    //   240	250	457	android/database/sqlite/SQLiteException
    //   252	310	457	android/database/sqlite/SQLiteException
    //   310	318	457	android/database/sqlite/SQLiteException
    //   421	454	457	android/database/sqlite/SQLiteException
    //   173	190	615	finally
    //   194	200	615	finally
    //   204	240	615	finally
    //   471	498	615	finally
    //   502	511	615	finally
    //   517	526	615	finally
    //   530	540	615	finally
    //   544	556	615	finally
    //   560	569	615	finally
    //   600	610	615	finally
    //   240	250	632	finally
    //   252	310	632	finally
    //   310	318	632	finally
    //   421	454	632	finally
    //   173	190	641	android/database/sqlite/SQLiteException
    //   194	200	641	android/database/sqlite/SQLiteException
    //   204	240	641	android/database/sqlite/SQLiteException
    //   91	100	646	finally
    //   100	110	646	finally
    //   110	153	646	finally
    //   350	377	659	finally
    //   91	100	664	android/database/sqlite/SQLiteException
    //   100	110	681	android/database/sqlite/SQLiteException
    //   110	153	681	android/database/sqlite/SQLiteException
  }
  
  public void c()
  {
    boolean bool = true;
    gf.c("Dispatch running...");
    if (!c.a()) {
      return;
    }
    List localList = b(20);
    if (localList.isEmpty())
    {
      gf.c("...nothing to dispatch");
      d.a(true);
      return;
    }
    if (g == null) {
      g = new gg("_t=dispatch&_v=ma4.0.4", false);
    }
    if (b() <= localList.size()) {}
    for (;;)
    {
      int m = c.a(localList, g, bool);
      gf.c("sent " + m + " of " + localList.size() + " hits");
      a(localList.subList(0, Math.min(m, localList.size())));
      if ((m != localList.size()) || (b() <= 0)) {
        break;
      }
      fQ.a(e).e();
      return;
      bool = false;
    }
    g = null;
  }
  
  public gS d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */