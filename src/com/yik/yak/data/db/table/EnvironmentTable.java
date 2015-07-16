package com.yik.yak.data.db.table;

import zP;
import zQ;
import zR;
import zS;

public class EnvironmentTable
  extends zS
{
  public static final String COLUMN_BASECAMP_URL = "basecampUrl";
  public static final String COLUMN_CONFIGURATION_ENDPOINT = "configurationEndpoint";
  public static final String COLUMN_IMAGE_UPLOAD_ENDPOINT = "imageUploadUrl";
  public static final String COLUMN_IS_CURRENT_ENVIRONMENT = "isCurrentEnvironment";
  public static final String COLUMN_LINK_ENDPOINT = "linkEndpoint";
  public static final String COLUMN_MAIN_API_ENDPOINT = "mainApiEndpoint";
  public static final String COLUMN_NAME = "name";
  public static final String COLUMN_NOTIFICATION_API_ENDPOINT = "notificationApiEndpoint";
  public static final String COLUMN_SHORT_NAME = "shortName";
  
  protected void onCreateColumns()
  {
    addColumn(new zP("name", zR.e, new zQ[0]));
    addColumn(new zP("isCurrentEnvironment", zR.a, new zQ[0]));
    addColumn(new zP("shortName", zR.e, new zQ[0]));
    addColumn(new zP("mainApiEndpoint", zR.e, new zQ[0]));
    addColumn(new zP("notificationApiEndpoint", zR.e, new zQ[0]));
    addColumn(new zP("imageUploadUrl", zR.e, new zQ[0]));
    addColumn(new zP("basecampUrl", zR.e, new zQ[0]));
    addColumn(new zP("configurationEndpoint", zR.e, new zQ[0]));
    addColumn(new zP("linkEndpoint", zR.e, new zQ[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.EnvironmentTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */