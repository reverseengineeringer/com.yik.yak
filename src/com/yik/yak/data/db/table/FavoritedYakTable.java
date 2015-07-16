package com.yik.yak.data.db.table;

import zP;
import zQ;
import zR;

public class FavoritedYakTable
  extends YakTable
{
  protected void onCreateColumns()
  {
    addColumn(new zP("comment", zR.e, new zQ[0]));
    addColumn(new zP("commentId", zR.e, new zQ[0]));
    addColumn(new zP("content", zR.e, new zQ[0]));
    addColumn(new zP("deliveryId", zR.e, new zQ[0]));
    addColumn(new zP("hidePin", zR.a, new zQ[0]));
    addColumn(new zP("isComment", zR.a, new zQ[0]));
    addColumn(new zP("latitude", zR.e, new zQ[0]));
    addColumn(new zP("liked", zR.c, new zQ[0]));
    addColumn(new zP("linkProvider", zR.e, new zQ[0]));
    addColumn(new zP("linkSummary", zR.e, new zQ[0]));
    addColumn(new zP("linkTitle", zR.e, new zQ[0]));
    addColumn(new zP("linkThumbnailUrl", zR.e, new zQ[0]));
    addColumn(new zP("linkUrl", zR.e, new zQ[0]));
    addColumn(new zP("longitude", zR.e, new zQ[0]));
    addColumn(new zP("numberOfComments", zR.c, new zQ[0]));
    addColumn(new zP("numberOfLikes", zR.c, new zQ[0]));
    addColumn(new zP("posterId", zR.e, new zQ[0]));
    addColumn(new zP("showHandle", zR.a, new zQ[0]));
    addColumn(new zP("timePosted", zR.b, new zQ[0]));
    addColumn(new zP("type", zR.c, new zQ[0]));
    addColumn(new zP("yakId", zR.e, new zQ[0]));
    addColumn(new zP("yakkerHandle", zR.e, new zQ[0]));
    addColumn(new zP("navigationUrl", zR.e, new zQ[0]));
    addColumn(new zP("yakkerId", zR.e, new zQ[0]));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.db.table.FavoritedYakTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */