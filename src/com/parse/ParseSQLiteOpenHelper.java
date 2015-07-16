package com.parse;

import N;
import android.annotation.TargetApi;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

abstract class ParseSQLiteOpenHelper
{
  private final SQLiteOpenHelper helper;
  
  public ParseSQLiteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt, null);
  }
  
  public ParseSQLiteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    helper = new ParseSQLiteOpenHelper.1(this, paramContext, paramString, paramCursorFactory, paramInt);
  }
  
  private N<ParseSQLiteDatabase> getDatabaseAsync(boolean paramBoolean)
  {
    ParseSQLiteDatabase localParseSQLiteDatabase = new ParseSQLiteDatabase(paramBoolean);
    return N.a(null).b(new ParseSQLiteOpenHelper.3(this, localParseSQLiteDatabase)).b(new ParseSQLiteOpenHelper.2(this, localParseSQLiteDatabase));
  }
  
  @TargetApi(14)
  public String getDatabaseName()
  {
    return helper.getDatabaseName();
  }
  
  public N<ParseSQLiteDatabase> getReadableDatabaseAsync()
  {
    return getDatabaseAsync(false);
  }
  
  public N<ParseSQLiteDatabase> getWritableDatabaseAsync()
  {
    return getDatabaseAsync(true);
  }
  
  public void onConfigure(SQLiteDatabase paramSQLiteDatabase) {}
  
  public abstract void onCreate(SQLiteDatabase paramSQLiteDatabase);
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase) {}
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase) {}
  
  public abstract void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteOpenHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */