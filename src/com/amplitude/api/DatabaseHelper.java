package com.amplitude.api;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

class DatabaseHelper
  extends SQLiteOpenHelper
{
  private static final String CREATE_EVENTS_TABLE = "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);";
  private static final String EVENT_FIELD = "event";
  private static final String EVENT_TABLE_NAME = "events";
  private static final String ID_FIELD = "id";
  private static final String TAG = "com.amplitude.api.DatabaseHelper";
  static DatabaseHelper instance;
  private File file;
  
  private DatabaseHelper(Context paramContext)
  {
    super(paramContext, "com.amplitude.api", null, 1);
    file = paramContext.getDatabasePath("com.amplitude.api");
  }
  
  private void delete()
  {
    try
    {
      close();
      file.delete();
      return;
    }
    catch (SecurityException localSecurityException) {}
  }
  
  static DatabaseHelper getDatabaseHelper(Context paramContext)
  {
    try
    {
      if (instance == null) {
        instance = new DatabaseHelper(paramContext.getApplicationContext());
      }
      paramContext = instance;
      return paramContext;
    }
    finally {}
  }
  
  /* Error */
  long addEvent(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc2_w 67
    //   5: lstore_2
    //   6: aload_0
    //   7: invokevirtual 72	com/amplitude/api/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore 6
    //   12: new 74	android/content/ContentValues
    //   15: dup
    //   16: invokespecial 76	android/content/ContentValues:<init>	()V
    //   19: astore 7
    //   21: aload 7
    //   23: ldc 11
    //   25: aload_1
    //   26: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: aload 6
    //   31: ldc 14
    //   33: aconst_null
    //   34: aload 7
    //   36: invokevirtual 86	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   39: lstore 4
    //   41: lload 4
    //   43: lstore_2
    //   44: aload_0
    //   45: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   48: aload_0
    //   49: monitorexit
    //   50: lload_2
    //   51: lreturn
    //   52: astore_1
    //   53: aload_0
    //   54: invokespecial 88	com/amplitude/api/DatabaseHelper:delete	()V
    //   57: aload_0
    //   58: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   61: goto -13 -> 48
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: astore_1
    //   70: aload_0
    //   71: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	DatabaseHelper
    //   0	76	1	paramString	String
    //   5	46	2	l1	long
    //   39	3	4	l2	long
    //   10	20	6	localSQLiteDatabase	SQLiteDatabase
    //   19	16	7	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   6	41	52	android/database/sqlite/SQLiteException
    //   44	48	64	finally
    //   57	61	64	finally
    //   70	76	64	finally
    //   6	41	69	finally
    //   53	57	69	finally
  }
  
  /* Error */
  long getEventCount()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: lconst_0
    //   3: lstore_1
    //   4: aconst_null
    //   5: astore 6
    //   7: aconst_null
    //   8: astore 5
    //   10: aload_0
    //   11: invokevirtual 93	com/amplitude/api/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   14: ldc 95
    //   16: invokevirtual 99	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   19: astore 7
    //   21: aload 7
    //   23: astore 5
    //   25: aload 7
    //   27: astore 6
    //   29: aload 7
    //   31: invokevirtual 104	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   34: lstore_3
    //   35: lload_3
    //   36: lstore_1
    //   37: aload 7
    //   39: ifnull +8 -> 47
    //   42: aload 7
    //   44: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   47: aload_0
    //   48: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   51: aload_0
    //   52: monitorexit
    //   53: lload_1
    //   54: lreturn
    //   55: astore 6
    //   57: aload 5
    //   59: ifnull +8 -> 67
    //   62: aload 5
    //   64: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   67: aload_0
    //   68: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   71: goto -20 -> 51
    //   74: astore 5
    //   76: aload_0
    //   77: monitorexit
    //   78: aload 5
    //   80: athrow
    //   81: astore 5
    //   83: aload 6
    //   85: ifnull +8 -> 93
    //   88: aload 6
    //   90: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   93: aload_0
    //   94: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   97: aload 5
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	DatabaseHelper
    //   3	51	1	l1	long
    //   34	2	3	l2	long
    //   8	55	5	localObject1	Object
    //   74	5	5	localObject2	Object
    //   81	17	5	localObject3	Object
    //   5	23	6	localObject4	Object
    //   55	34	6	localSQLiteException	android.database.sqlite.SQLiteException
    //   19	24	7	localSQLiteStatement	android.database.sqlite.SQLiteStatement
    // Exception table:
    //   from	to	target	type
    //   10	21	55	android/database/sqlite/SQLiteException
    //   29	35	55	android/database/sqlite/SQLiteException
    //   42	47	74	finally
    //   47	51	74	finally
    //   62	67	74	finally
    //   67	71	74	finally
    //   88	93	74	finally
    //   93	100	74	finally
    //   10	21	81	finally
    //   29	35	81	finally
  }
  
  /* Error */
  android.util.Pair<Long, org.json.JSONArray> getEvents(long paramLong, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 109	org/json/JSONArray
    //   5: dup
    //   6: invokespecial 110	org/json/JSONArray:<init>	()V
    //   9: astore 9
    //   11: aconst_null
    //   12: astore 8
    //   14: aload_0
    //   15: invokevirtual 93	com/amplitude/api/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore 10
    //   20: lload_1
    //   21: lconst_0
    //   22: lcmp
    //   23: iflt +146 -> 169
    //   26: new 112	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   33: ldc 115
    //   35: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: lload_1
    //   39: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   42: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: astore 6
    //   47: iload_3
    //   48: iflt +127 -> 175
    //   51: new 112	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   58: ldc -128
    //   60: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: iload_3
    //   64: invokevirtual 131	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   67: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: astore 7
    //   72: aload 10
    //   74: ldc 14
    //   76: iconst_2
    //   77: anewarray 133	java/lang/String
    //   80: dup
    //   81: iconst_0
    //   82: ldc 17
    //   84: aastore
    //   85: dup
    //   86: iconst_1
    //   87: ldc 11
    //   89: aastore
    //   90: aload 6
    //   92: aconst_null
    //   93: aconst_null
    //   94: aconst_null
    //   95: ldc -121
    //   97: aload 7
    //   99: invokevirtual 139	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   102: astore 6
    //   104: ldc2_w 67
    //   107: lstore_1
    //   108: aload 6
    //   110: invokeinterface 144 1 0
    //   115: ifeq +66 -> 181
    //   118: aload 6
    //   120: iconst_0
    //   121: invokeinterface 148 2 0
    //   126: lstore 4
    //   128: new 150	org/json/JSONObject
    //   131: dup
    //   132: aload 6
    //   134: iconst_1
    //   135: invokeinterface 154 2 0
    //   140: invokespecial 157	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   143: astore 7
    //   145: aload 7
    //   147: ldc -97
    //   149: lload 4
    //   151: invokevirtual 162	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   154: pop
    //   155: aload 9
    //   157: aload 7
    //   159: invokevirtual 165	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   162: pop
    //   163: lload 4
    //   165: lstore_1
    //   166: goto -58 -> 108
    //   169: aconst_null
    //   170: astore 6
    //   172: goto -125 -> 47
    //   175: aconst_null
    //   176: astore 7
    //   178: goto -106 -> 72
    //   181: aload 6
    //   183: ifnull +10 -> 193
    //   186: aload 6
    //   188: invokeinterface 166 1 0
    //   193: aload_0
    //   194: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   197: new 168	android/util/Pair
    //   200: dup
    //   201: lload_1
    //   202: invokestatic 174	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   205: aload 9
    //   207: invokespecial 177	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   210: astore 6
    //   212: aload_0
    //   213: monitorexit
    //   214: aload 6
    //   216: areturn
    //   217: astore 6
    //   219: aconst_null
    //   220: astore 6
    //   222: ldc2_w 67
    //   225: lstore_1
    //   226: aload 6
    //   228: ifnull +10 -> 238
    //   231: aload 6
    //   233: invokeinterface 166 1 0
    //   238: aload_0
    //   239: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   242: goto -45 -> 197
    //   245: astore 6
    //   247: aload_0
    //   248: monitorexit
    //   249: aload 6
    //   251: athrow
    //   252: astore 7
    //   254: aload 8
    //   256: astore 6
    //   258: aload 6
    //   260: ifnull +10 -> 270
    //   263: aload 6
    //   265: invokeinterface 166 1 0
    //   270: aload_0
    //   271: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   274: aload 7
    //   276: athrow
    //   277: astore 7
    //   279: goto -21 -> 258
    //   282: astore 7
    //   284: goto -58 -> 226
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	287	0	this	DatabaseHelper
    //   0	287	1	paramLong	long
    //   0	287	3	paramInt	int
    //   126	38	4	l	long
    //   45	170	6	localObject1	Object
    //   217	1	6	localSQLiteException1	android.database.sqlite.SQLiteException
    //   220	12	6	localObject2	Object
    //   245	5	6	localObject3	Object
    //   256	8	6	localObject4	Object
    //   70	107	7	localObject5	Object
    //   252	23	7	localObject6	Object
    //   277	1	7	localObject7	Object
    //   282	1	7	localSQLiteException2	android.database.sqlite.SQLiteException
    //   12	243	8	localObject8	Object
    //   9	197	9	localJSONArray	org.json.JSONArray
    //   18	55	10	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   14	20	217	android/database/sqlite/SQLiteException
    //   26	47	217	android/database/sqlite/SQLiteException
    //   51	72	217	android/database/sqlite/SQLiteException
    //   72	104	217	android/database/sqlite/SQLiteException
    //   2	11	245	finally
    //   186	193	245	finally
    //   193	197	245	finally
    //   197	212	245	finally
    //   231	238	245	finally
    //   238	242	245	finally
    //   263	270	245	finally
    //   270	277	245	finally
    //   14	20	252	finally
    //   26	47	252	finally
    //   51	72	252	finally
    //   72	104	252	finally
    //   108	163	277	finally
    //   108	163	282	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  long getNthEventId(long paramLong)
  {
    // Byte code:
    //   0: ldc2_w 67
    //   3: lstore_3
    //   4: aload_0
    //   5: monitorenter
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 6
    //   12: aload_0
    //   13: invokevirtual 93	com/amplitude/api/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: new 112	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   23: ldc -71
    //   25: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: lload_1
    //   29: lconst_1
    //   30: lsub
    //   31: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   34: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokevirtual 99	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   40: astore 5
    //   42: aload 5
    //   44: astore 6
    //   46: aload 5
    //   48: astore 7
    //   50: aload 5
    //   52: invokevirtual 104	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   55: lstore_1
    //   56: aload 5
    //   58: ifnull +8 -> 66
    //   61: aload 5
    //   63: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   66: aload_0
    //   67: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   70: aload_0
    //   71: monitorexit
    //   72: lload_1
    //   73: lreturn
    //   74: astore 5
    //   76: aload 6
    //   78: ifnull +8 -> 86
    //   81: aload 6
    //   83: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   86: aload_0
    //   87: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   90: lload_3
    //   91: lstore_1
    //   92: goto -22 -> 70
    //   95: astore 5
    //   97: aload_0
    //   98: monitorexit
    //   99: aload 5
    //   101: athrow
    //   102: astore 5
    //   104: aload 7
    //   106: ifnull +8 -> 114
    //   109: aload 7
    //   111: invokevirtual 105	android/database/sqlite/SQLiteStatement:close	()V
    //   114: aload_0
    //   115: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   118: aload 5
    //   120: athrow
    //   121: astore 6
    //   123: lload_3
    //   124: lstore_1
    //   125: goto -69 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	128	0	this	DatabaseHelper
    //   0	128	1	paramLong	long
    //   3	121	3	l	long
    //   40	22	5	localSQLiteStatement	android.database.sqlite.SQLiteStatement
    //   74	1	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   95	5	5	localObject1	Object
    //   102	17	5	localObject2	Object
    //   10	72	6	localObject3	Object
    //   121	1	6	localSQLiteDoneException	android.database.sqlite.SQLiteDoneException
    //   7	103	7	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   12	42	74	android/database/sqlite/SQLiteException
    //   50	56	74	android/database/sqlite/SQLiteException
    //   61	66	95	finally
    //   66	70	95	finally
    //   81	86	95	finally
    //   86	90	95	finally
    //   109	114	95	finally
    //   114	121	95	finally
    //   12	42	102	finally
    //   50	56	102	finally
    //   50	56	121	android/database/sqlite/SQLiteDoneException
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
  }
  
  /* Error */
  void removeEvent(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 72	com/amplitude/api/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 14
    //   8: new 112	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   15: ldc -58
    //   17: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: lload_1
    //   21: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   24: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: aconst_null
    //   28: invokevirtual 201	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   31: pop
    //   32: aload_0
    //   33: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: astore_3
    //   40: aload_0
    //   41: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   44: goto -8 -> 36
    //   47: astore_3
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_3
    //   51: athrow
    //   52: astore_3
    //   53: aload_0
    //   54: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   57: aload_3
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	DatabaseHelper
    //   0	59	1	paramLong	long
    //   39	1	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   47	4	3	localObject1	Object
    //   52	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	32	39	android/database/sqlite/SQLiteException
    //   32	36	47	finally
    //   40	44	47	finally
    //   53	59	47	finally
    //   2	32	52	finally
  }
  
  /* Error */
  void removeEvents(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 72	com/amplitude/api/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 14
    //   8: new 112	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   15: ldc -52
    //   17: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: lload_1
    //   21: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   24: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: aconst_null
    //   28: invokevirtual 201	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   31: pop
    //   32: aload_0
    //   33: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: astore_3
    //   40: aload_0
    //   41: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   44: goto -8 -> 36
    //   47: astore_3
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_3
    //   51: athrow
    //   52: astore_3
    //   53: aload_0
    //   54: invokevirtual 47	com/amplitude/api/DatabaseHelper:close	()V
    //   57: aload_3
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	DatabaseHelper
    //   0	59	1	paramLong	long
    //   39	1	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   47	4	3	localObject1	Object
    //   52	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	32	39	android/database/sqlite/SQLiteException
    //   32	36	47	finally
    //   40	44	47	finally
    //   53	59	47	finally
    //   2	32	52	finally
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.DatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */