package com.yik.yak.data.db.helper;

import As;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yik.yak.YikYak;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import com.yik.yak.data.db.table.EnvironmentTable;
import com.yik.yak.data.models.Environment;

public class EnvironmentTableHelper
{
  public static Environment[] getAllEnvironments()
  {
    Cursor localCursor = YikYakSQLiteOpenHelper.get().getWritableDatabase().query(EnvironmentTable.class.getSimpleName(), null, null, null, null, null, "name ASC");
    Environment[] arrayOfEnvironment = new Environment[localCursor.getCount()];
    As localAs = new As();
    if (localCursor.moveToFirst())
    {
      int i = 0;
      do
      {
        arrayOfEnvironment[i] = localAs.a(localCursor);
        i += 1;
      } while (localCursor.moveToNext());
    }
    localCursor.close();
    return arrayOfEnvironment;
  }
  
  public static Environment getCurrentEnvironment()
  {
    Environment localEnvironment = null;
    Cursor localCursor = YikYakSQLiteOpenHelper.get().getWritableDatabase().query(EnvironmentTable.class.getSimpleName(), null, "isCurrentEnvironment = ?", new String[] { "1" }, null, null, null);
    if (localCursor.moveToFirst()) {
      localEnvironment = new As().a(localCursor);
    }
    return localEnvironment;
  }
  
  public static Environment getEnvironment(int paramInt)
  {
    Environment localEnvironment = null;
    Cursor localCursor = YikYakSQLiteOpenHelper.get().getWritableDatabase().query(EnvironmentTable.class.getSimpleName(), null, "_id = ?", new String[] { String.valueOf(paramInt) }, null, null, null);
    if (localCursor.moveToFirst()) {
      localEnvironment = new As().a(localCursor);
    }
    return localEnvironment;
  }
  
  public static void insertDefaultEnvironments()
  {
    Environment localEnvironment1 = new Environment();
    localEnvironment1.setName("Production");
    localEnvironment1.setShortName("PROD");
    localEnvironment1.setMainApiEndpoint("[Use Default Server]");
    localEnvironment1.setNotificationEndpoint("https://notify.yikyakapi.net/api");
    localEnvironment1.setImageUploadEndpoint("http://signedup.yikyakapi.net/upload");
    localEnvironment1.setIsCurrentEnvironment(true);
    localEnvironment1.setBasecampEndpoint("https://bc.yikyakapi.net/api");
    localEnvironment1.setLinkEndpoint("http://lv.yikyakapi.net");
    localEnvironment1.setConfigurationEndpoint(YikYak.d().getResources().getString(2131230950));
    Environment localEnvironment2 = new Environment();
    localEnvironment2.setName("QA");
    localEnvironment2.setShortName("QA");
    localEnvironment2.setMainApiEndpoint("http://qa.yikyakapi.net/api");
    localEnvironment2.setNotificationEndpoint("http://notify-dev.yikyak.io/api");
    localEnvironment2.setImageUploadEndpoint("http://upload.qa.yikyakapi.net/upload");
    localEnvironment2.setBasecampEndpoint("http://bcqa.yikyak.io/api");
    localEnvironment2.setLinkEndpoint("http://lv.qa.yikyakapi.net");
    localEnvironment2.setConfigurationEndpoint("http://peeks-test-46705659.us-east-1.elb.amazonaws.com/configurations/locate");
    Environment localEnvironment3 = new Environment();
    localEnvironment3.setName("Staging");
    localEnvironment3.setShortName("STAGE");
    localEnvironment3.setMainApiEndpoint("https://staging.yikyakapi.net/api");
    localEnvironment3.setNotificationEndpoint("https://notify.yikyak.net/api");
    localEnvironment3.setImageUploadEndpoint("http://signedup.yikyakapi.net/upload");
    localEnvironment3.setBasecampEndpoint("https://bc.yikyakapi.net/api");
    localEnvironment3.setLinkEndpoint("http://lv.yikyakapi.net");
    localEnvironment3.setConfigurationEndpoint(YikYak.d().getResources().getString(2131230950));
    insertEnvironments(new Environment[] { localEnvironment1, localEnvironment2, localEnvironment3 });
  }
  
  public static void insertEnvironments(Environment... paramVarArgs)
  {
    SQLiteDatabase localSQLiteDatabase = YikYakSQLiteOpenHelper.get().getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    As localAs = new As();
    try
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        Environment localEnvironment = paramVarArgs[i];
        localSQLiteDatabase.insert(EnvironmentTable.class.getSimpleName(), null, localAs.a(localEnvironment));
        i += 1;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception paramVarArgs)
    {
      paramVarArgs.printStackTrace();
      return;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }
  
  public static void resetCurrentEnvironment()
  {
    SQLiteDatabase localSQLiteDatabase = YikYakSQLiteOpenHelper.get().getWritableDatabase();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("isCurrentEnvironment", Integer.valueOf(0));
    localSQLiteDatabase.update(EnvironmentTable.class.getSimpleName(), localContentValues, null, null);
  }
  
  public static void setCurrentEnvironment(int paramInt)
  {
    resetCurrentEnvironment();
    SQLiteDatabase localSQLiteDatabase = YikYakSQLiteOpenHelper.get().getWritableDatabase();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("isCurrentEnvironment", Integer.valueOf(1));
    localSQLiteDatabase.update(EnvironmentTable.class.getSimpleName(), localContentValues, "_id = ?", new String[] { "" + paramInt });
  }
  
  public static void setCurrentEnvironment(Environment paramEnvironment)
  {
    setCurrentEnvironment(paramEnvironment.getId().intValue());
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.helper.EnvironmentTableHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */