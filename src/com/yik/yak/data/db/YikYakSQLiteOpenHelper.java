package com.yik.yak.data.db;

import Hm;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import com.yik.yak.data.db.helper.EnvironmentTableHelper;
import com.yik.yak.data.db.table.BlockedYakTable;
import com.yik.yak.data.db.table.EnvironmentTable;
import com.yik.yak.data.db.table.FavoritedYakTable;
import com.yik.yak.data.db.table.WhiteListedWebsiteTable;

public class YikYakSQLiteOpenHelper
  extends SQLiteOpenHelper
{
  public static final String DATABASE_NAME = "YikYakDatabase";
  private static final int DATABASE_VERSION = 6;
  private static YikYakSQLiteOpenHelper instance;
  
  private YikYakSQLiteOpenHelper(Context paramContext)
  {
    super(paramContext, "YikYakDatabase", null, 6);
  }
  
  private void dropAllTables(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT * FROM sqlite_master WHERE type='table'", null);
    if (localCursor.moveToFirst()) {
      do
      {
        String str = localCursor.getString(1);
        if ((!str.equalsIgnoreCase("android_metadata")) && (!str.equalsIgnoreCase("sqlite_sequence"))) {
          dropTable(paramSQLiteDatabase, str);
        }
      } while (localCursor.moveToNext());
    }
    localCursor.close();
  }
  
  public static YikYakSQLiteOpenHelper get()
  {
    try
    {
      if (instance == null) {
        Hm.b(YikYakSQLiteOpenHelper.class, new Object[] { "YikYakSQLiteOpenHelper.init() has not been called! The application context needs to be passed!" });
      }
      YikYakSQLiteOpenHelper localYikYakSQLiteOpenHelper = instance;
      return localYikYakSQLiteOpenHelper;
    }
    finally {}
  }
  
  /* Error */
  public static void init(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 64	com/yik/yak/data/db/YikYakSQLiteOpenHelper:instance	Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
    //   6: ifnonnull +25 -> 31
    //   9: new 2	com/yik/yak/data/db/YikYakSQLiteOpenHelper
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 77	com/yik/yak/data/db/YikYakSQLiteOpenHelper:<init>	(Landroid/content/Context;)V
    //   17: putstatic 64	com/yik/yak/data/db/YikYakSQLiteOpenHelper:instance	Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
    //   20: getstatic 64	com/yik/yak/data/db/YikYakSQLiteOpenHelper:instance	Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
    //   23: invokevirtual 81	com/yik/yak/data/db/YikYakSQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   26: pop
    //   27: ldc 2
    //   29: monitorexit
    //   30: return
    //   31: ldc 2
    //   33: iconst_1
    //   34: anewarray 66	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: ldc 83
    //   41: aastore
    //   42: invokestatic 86	Hm:c	(Ljava/lang/Object;[Ljava/lang/Object;)V
    //   45: goto -18 -> 27
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	27	48	finally
    //   31	45	48	finally
  }
  
  public void deleteAllData()
  {
    deleteAllData(getWritableDatabase());
    EnvironmentTableHelper.insertDefaultEnvironments();
  }
  
  public void deleteAllData(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT * FROM sqlite_master WHERE type='table'", null);
    if (localCursor.moveToFirst()) {
      do
      {
        String str = localCursor.getString(1);
        if ((!str.equalsIgnoreCase("android_metadata")) && (!str.equalsIgnoreCase("sqlite_sequence"))) {
          deleteTable(paramSQLiteDatabase, str);
        }
      } while (localCursor.moveToNext());
    }
    localCursor.close();
  }
  
  public void deleteTable(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase.execSQL("DELETE FROM " + paramString + ";");
  }
  
  public void deleteTable(String paramString)
  {
    deleteTable(getWritableDatabase(), paramString);
  }
  
  public void dropAllTables()
  {
    dropAllTables(getWritableDatabase());
  }
  
  public void dropTable(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + paramString);
  }
  
  public void dropThenCreateDB(SQLiteDatabase paramSQLiteDatabase)
  {
    dropAllTables(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(new BlockedYakTable().generateSQL());
    paramSQLiteDatabase.execSQL(new WhiteListedWebsiteTable().generateSQL());
    paramSQLiteDatabase.execSQL(new EnvironmentTable().generateSQL());
    paramSQLiteDatabase.execSQL(new FavoritedYakTable().generateSQL());
    new Handler().post(new YikYakSQLiteOpenHelper.1(this));
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    dropThenCreateDB(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.YikYakSQLiteOpenHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */