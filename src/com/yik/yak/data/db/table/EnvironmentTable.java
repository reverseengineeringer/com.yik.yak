package com.yik.yak.data.db.table;

import zF;
import zG;
import zH;
import zI;

public class EnvironmentTable
  extends zI
{
  public static final String COLUMN_BASECAMP_URL = "basecampUrl";
  public static final String COLUMN_IMAGE_UPLOAD_ENDPOINT = "imageUploadUrl";
  public static final String COLUMN_IS_CURRENT_ENVIRONMENT = "isCurrentEnvironment";
  public static final String COLUMN_MAIN_API_ENDPOINT = "mainApiEndpoint";
  public static final String COLUMN_NAME = "name";
  public static final String COLUMN_NOTIFICATION_API_ENDPOINT = "notificationApiEndpoint";
  public static final String COLUMN_SHORT_NAME = "shortName";
  
  protected void onCreateColumns()
  {
    addColumn(new zF("name", zH.e, new zG[0]));
    addColumn(new zF("isCurrentEnvironment", zH.a, new zG[0]));
    addColumn(new zF("shortName", zH.e, new zG[0]));
    addColumn(new zF("mainApiEndpoint", zH.e, new zG[0]));
    addColumn(new zF("notificationApiEndpoint", zH.e, new zG[0]));
    addColumn(new zF("imageUploadUrl", zH.e, new zG[0]));
    addColumn(new zF("basecampUrl", zH.e, new zG[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.EnvironmentTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */