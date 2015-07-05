package com.yik.yak.data.db.table;

import zF;
import zG;
import zH;

public class BlockedYakTable
  extends YakTable
{
  protected void onCreateColumns()
  {
    addColumn(new zF("comment", zH.e, new zG[0]));
    addColumn(new zF("commentId", zH.e, new zG[0]));
    addColumn(new zF("content", zH.e, new zG[0]));
    addColumn(new zF("deliveryId", zH.e, new zG[0]));
    addColumn(new zF("hidePin", zH.a, new zG[0]));
    addColumn(new zF("isComment", zH.a, new zG[0]));
    addColumn(new zF("latitude", zH.e, new zG[0]));
    addColumn(new zF("liked", zH.c, new zG[0]));
    addColumn(new zF("linkProvider", zH.e, new zG[0]));
    addColumn(new zF("linkSummary", zH.e, new zG[0]));
    addColumn(new zF("linkTitle", zH.e, new zG[0]));
    addColumn(new zF("linkThumbnailUrl", zH.e, new zG[0]));
    addColumn(new zF("linkUrl", zH.e, new zG[0]));
    addColumn(new zF("longitude", zH.e, new zG[0]));
    addColumn(new zF("numberOfComments", zH.c, new zG[0]));
    addColumn(new zF("numberOfLikes", zH.c, new zG[0]));
    addColumn(new zF("posterId", zH.e, new zG[0]));
    addColumn(new zF("showHandle", zH.a, new zG[0]));
    addColumn(new zF("timePosted", zH.b, new zG[0]));
    addColumn(new zF("type", zH.c, new zG[0]));
    addColumn(new zF("yakId", zH.e, new zG[0]));
    addColumn(new zF("yakkerHandle", zH.e, new zG[0]));
    addColumn(new zF("yakkerId", zH.e, new zG[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.BlockedYakTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */