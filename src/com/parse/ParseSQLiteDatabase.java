package com.parse;

import N;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class ParseSQLiteDatabase
{
  private static final ExecutorService dbExecutor = ;
  private static final TaskQueue taskQueue = new TaskQueue();
  private N<Void> current = null;
  private final Object currentLock = new Object();
  private SQLiteDatabase db;
  private final N<Void>.Z tcs = N.a();
  private boolean writable;
  
  ParseSQLiteDatabase(boolean paramBoolean)
  {
    writable = paramBoolean;
    taskQueue.enqueue(new ParseSQLiteDatabase.1(this));
  }
  
  public N<Void> beginTransactionAsync()
  {
    synchronized (currentLock)
    {
      current = current.b(new ParseSQLiteDatabase.4(this), dbExecutor);
      N localN = current.b(new ParseSQLiteDatabase.5(this), N.a);
      return localN;
    }
  }
  
  public N<Void> close()
  {
    synchronized (currentLock)
    {
      current = current.b(new ParseSQLiteDatabase.10(this), dbExecutor);
      N localN = current.b(new ParseSQLiteDatabase.11(this), N.a);
      return localN;
    }
  }
  
  public N<Void> deleteAsync(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    synchronized (currentLock)
    {
      paramString1 = current.d(new ParseSQLiteDatabase.21(this, paramString1, paramString2, paramArrayOfString), dbExecutor);
      current = paramString1.j();
      paramString1 = paramString1.b(new ParseSQLiteDatabase.22(this), N.a).j();
      return paramString1;
    }
  }
  
  public N<Void> endTransactionAsync()
  {
    synchronized (currentLock)
    {
      current = current.b(new ParseSQLiteDatabase.8(this), dbExecutor);
      N localN = current.b(new ParseSQLiteDatabase.9(this), N.a);
      return localN;
    }
  }
  
  public boolean inTransaction()
  {
    return db.inTransaction();
  }
  
  public N<Void> insertOrThrowAsync(String paramString, ContentValues paramContentValues)
  {
    synchronized (currentLock)
    {
      paramString = current.d(new ParseSQLiteDatabase.17(this, paramString, paramContentValues), dbExecutor);
      current = paramString.j();
      paramString = paramString.b(new ParseSQLiteDatabase.18(this), N.a).j();
      return paramString;
    }
  }
  
  public N<Void> insertWithOnConflict(String paramString, ContentValues paramContentValues, int paramInt)
  {
    synchronized (currentLock)
    {
      paramString = current.d(new ParseSQLiteDatabase.15(this, paramString, paramContentValues, paramInt), dbExecutor);
      current = paramString.j();
      paramString = paramString.b(new ParseSQLiteDatabase.16(this), N.a).j();
      return paramString;
    }
  }
  
  public boolean isOpen()
  {
    return db.isOpen();
  }
  
  public boolean isWritable()
  {
    return writable;
  }
  
  N<Void> open(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    synchronized (currentLock)
    {
      current = current.b(new ParseSQLiteDatabase.3(this, paramSQLiteOpenHelper), dbExecutor).b(new ParseSQLiteDatabase.2(this), N.a);
      paramSQLiteOpenHelper = current;
      return paramSQLiteOpenHelper;
    }
  }
  
  public N<Cursor> queryAsync(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2)
  {
    synchronized (currentLock)
    {
      paramString1 = current.d(new ParseSQLiteDatabase.13(this, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2), dbExecutor).d(new ParseSQLiteDatabase.12(this), dbExecutor);
      current = paramString1.j();
      paramString1 = paramString1.b(new ParseSQLiteDatabase.14(this), N.a);
      return paramString1;
    }
  }
  
  public N<Cursor> rawQueryAsync(String paramString, String[] paramArrayOfString)
  {
    synchronized (currentLock)
    {
      paramString = current.d(new ParseSQLiteDatabase.24(this, paramString, paramArrayOfString), dbExecutor).d(new ParseSQLiteDatabase.23(this), dbExecutor);
      current = paramString.j();
      paramString = paramString.b(new ParseSQLiteDatabase.25(this), N.a);
      return paramString;
    }
  }
  
  public N<Void> setTransactionSuccessfulAsync()
  {
    synchronized (currentLock)
    {
      current = current.d(new ParseSQLiteDatabase.6(this), dbExecutor);
      N localN = current.b(new ParseSQLiteDatabase.7(this), N.a);
      return localN;
    }
  }
  
  public N<Integer> updateAsync(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    synchronized (currentLock)
    {
      paramString1 = current.d(new ParseSQLiteDatabase.19(this, paramString1, paramContentValues, paramString2, paramArrayOfString), dbExecutor);
      current = paramString1.j();
      paramString1 = paramString1.b(new ParseSQLiteDatabase.20(this), N.a);
      return paramString1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseSQLiteDatabase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */