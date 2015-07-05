package com.yik.yak.data.db.table;

import zF;
import zG;
import zH;
import zI;

public class WhiteListedWebsiteTable
  extends zI
{
  public static final String COLUMN_CATEGORY = "category";
  public static final String COLUMN_DISPLAY = "display";
  public static final String COLUMN_NAME = "name";
  public static final String COLUMN_URL = "url";
  
  protected void onCreateColumns()
  {
    addColumn(new zF("display", zH.a, new zG[0]));
    addColumn(new zF("category", zH.e, new zG[0]));
    addColumn(new zF("name", zH.e, new zG[0]));
    addColumn(new zF("url", zH.e, new zG[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.WhiteListedWebsiteTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */