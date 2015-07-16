package com.yik.yak.data.db.helper;

import Av;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import com.yik.yak.data.db.table.FavoritedYakTable;
import com.yik.yak.data.models.Yak;

public class FavoritedYakTableHelper
{
  public static Yak[] getAllFavoritedYaks()
  {
    Cursor localCursor = YikYakSQLiteOpenHelper.get().getWritableDatabase().query(FavoritedYakTable.class.getSimpleName(), null, null, null, null, null, null);
    Yak[] arrayOfYak = new Yak[localCursor.getCount()];
    Av localAv = new Av();
    if (localCursor.moveToFirst())
    {
      int i = 0;
      do
      {
        arrayOfYak[i] = localAv.a(localCursor);
        i += 1;
      } while (localCursor.moveToNext());
    }
    return arrayOfYak;
  }
  
  public static void insertNewFavoriteYak(ContentValues paramContentValues)
  {
    YikYakSQLiteOpenHelper.get().getWritableDatabase().insert(FavoritedYakTable.class.getSimpleName(), null, paramContentValues);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.helper.FavoritedYakTableHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */