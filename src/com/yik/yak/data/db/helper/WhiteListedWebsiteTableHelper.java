package com.yik.yak.data.db.helper;

import Au;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import com.yik.yak.data.db.table.WhiteListedWebsiteTable;
import com.yik.yak.data.models.Website;

public class WhiteListedWebsiteTableHelper
{
  public static Website[] getAllWhiteListedWebsites()
  {
    Cursor localCursor = YikYakSQLiteOpenHelper.get().getWritableDatabase().query(WhiteListedWebsiteTable.class.getSimpleName(), null, null, null, null, null, "name ASC");
    Website[] arrayOfWebsite = new Website[localCursor.getCount()];
    Au localAu = new Au();
    if (localCursor.moveToFirst())
    {
      int i = 0;
      do
      {
        arrayOfWebsite[i] = localAu.a(localCursor);
        i += 1;
      } while (localCursor.moveToNext());
    }
    localCursor.close();
    return arrayOfWebsite;
  }
  
  public static void insertWebsites(Website[] paramArrayOfWebsite)
  {
    SQLiteDatabase localSQLiteDatabase = YikYakSQLiteOpenHelper.get().getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    try
    {
      Au localAu = new Au();
      int j = paramArrayOfWebsite.length;
      int i = 0;
      while (i < j)
      {
        Website localWebsite = paramArrayOfWebsite[i];
        localSQLiteDatabase.insert(WhiteListedWebsiteTable.class.getSimpleName(), null, localAu.a(localWebsite));
        i += 1;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception paramArrayOfWebsite)
    {
      paramArrayOfWebsite.printStackTrace();
      return;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.helper.WhiteListedWebsiteTableHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */