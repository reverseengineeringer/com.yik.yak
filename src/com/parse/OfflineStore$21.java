package com.parse;

import java.util.ArrayList;

class OfflineStore$21
  extends ParseTraverser
{
  OfflineStore$21(OfflineStore paramOfflineStore, ArrayList paramArrayList) {}
  
  protected boolean visit(Object paramObject)
  {
    if ((paramObject instanceof ParseObject)) {
      val$objectsInTree.add((ParseObject)paramObject);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */