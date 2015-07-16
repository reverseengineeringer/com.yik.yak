package com.yik.yak.data.db.table;

import zP;
import zQ;
import zR;
import zS;

public class WhiteListedWebsiteTable
  extends zS
{
  public static final String COLUMN_CATEGORY = "category";
  public static final String COLUMN_DISPLAY = "display";
  public static final String COLUMN_NAME = "name";
  public static final String COLUMN_URL = "url";
  
  protected void onCreateColumns()
  {
    addColumn(new zP("display", zR.a, new zQ[0]));
    addColumn(new zP("category", zR.e, new zQ[0]));
    addColumn(new zP("name", zR.e, new zQ[0]));
    addColumn(new zP("url", zR.e, new zQ[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.WhiteListedWebsiteTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */