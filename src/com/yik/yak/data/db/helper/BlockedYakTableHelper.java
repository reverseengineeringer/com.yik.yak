package com.yik.yak.data.db.helper;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import com.yik.yak.data.db.table.BlockedYakTable;

public class BlockedYakTableHelper
{
  public static void insertNewBlockedYak(ContentValues paramContentValues)
  {
    YikYakSQLiteOpenHelper.get().getWritableDatabase().insert(BlockedYakTable.class.getSimpleName(), null, paramContentValues);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.helper.BlockedYakTableHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */