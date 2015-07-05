package android.support.v7.widget;

import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class AdapterHelper
  implements OpReorderer.Callback
{
  private static final boolean DEBUG = false;
  static final int POSITION_TYPE_INVISIBLE = 0;
  static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
  private static final String TAG = "AHT";
  final AdapterHelper.Callback mCallback;
  final boolean mDisableRecycler;
  Runnable mOnItemProcessedCallback;
  final OpReorderer mOpReorderer;
  final ArrayList<AdapterHelper.UpdateOp> mPendingUpdates = new ArrayList();
  final ArrayList<AdapterHelper.UpdateOp> mPostponedList = new ArrayList();
  private Pools.Pool<AdapterHelper.UpdateOp> mUpdateOpPool = new Pools.SimplePool(30);
  
  AdapterHelper(AdapterHelper.Callback paramCallback)
  {
    this(paramCallback, false);
  }
  
  AdapterHelper(AdapterHelper.Callback paramCallback, boolean paramBoolean)
  {
    mCallback = paramCallback;
    mDisableRecycler = paramBoolean;
    mOpReorderer = new OpReorderer(this);
  }
  
  private void applyAdd(AdapterHelper.UpdateOp paramUpdateOp)
  {
    postponeAndUpdateViewHolders(paramUpdateOp);
  }
  
  private void applyMove(AdapterHelper.UpdateOp paramUpdateOp)
  {
    postponeAndUpdateViewHolders(paramUpdateOp);
  }
  
  private void applyRemove(AdapterHelper.UpdateOp paramUpdateOp)
  {
    int i2 = positionStart;
    int k = positionStart + itemCount;
    int j = -1;
    int i = positionStart;
    int n = 0;
    if (i < k) {
      if ((mCallback.findViewHolder(i) != null) || (canFindInPreLayout(i)))
      {
        if (j != 0) {
          break label213;
        }
        dispatchAndUpdateViewHolders(obtainUpdateOp(1, i2, n));
      }
    }
    label96:
    label208:
    label213:
    for (int m = 1;; m = 0)
    {
      j = 1;
      if (m != 0)
      {
        m = i - n;
        i = k - n;
        k = 1;
        n = k;
        k = i;
        i = m + 1;
        break;
        if (j != 1) {
          break label208;
        }
        postponeAndUpdateViewHolders(obtainUpdateOp(1, i2, n));
      }
      for (j = 1;; j = 0)
      {
        int i1 = 0;
        m = j;
        j = i1;
        break;
        n += 1;
        m = i;
        i = k;
        k = n;
        break label96;
        AdapterHelper.UpdateOp localUpdateOp = paramUpdateOp;
        if (n != itemCount)
        {
          recycleUpdateOp(paramUpdateOp);
          localUpdateOp = obtainUpdateOp(1, i2, n);
        }
        if (j == 0)
        {
          dispatchAndUpdateViewHolders(localUpdateOp);
          return;
        }
        postponeAndUpdateViewHolders(localUpdateOp);
        return;
      }
    }
  }
  
  private void applyUpdate(AdapterHelper.UpdateOp paramUpdateOp)
  {
    int k = positionStart;
    int i2 = positionStart;
    int i3 = itemCount;
    int i = positionStart;
    int i1 = -1;
    int j = 0;
    if (i < i2 + i3)
    {
      int m;
      int n;
      if ((mCallback.findViewHolder(i) != null) || (canFindInPreLayout(i)))
      {
        m = j;
        n = k;
        if (i1 == 0)
        {
          dispatchAndUpdateViewHolders(obtainUpdateOp(2, k, j));
          m = 0;
          n = i;
        }
        k = n;
      }
      for (j = 1;; j = 0)
      {
        i += 1;
        m += 1;
        i1 = j;
        j = m;
        break;
        m = j;
        n = k;
        if (i1 == 1)
        {
          postponeAndUpdateViewHolders(obtainUpdateOp(2, k, j));
          m = 0;
          n = i;
        }
        k = n;
      }
    }
    AdapterHelper.UpdateOp localUpdateOp = paramUpdateOp;
    if (j != itemCount)
    {
      recycleUpdateOp(paramUpdateOp);
      localUpdateOp = obtainUpdateOp(2, k, j);
    }
    if (i1 == 0)
    {
      dispatchAndUpdateViewHolders(localUpdateOp);
      return;
    }
    postponeAndUpdateViewHolders(localUpdateOp);
  }
  
  private boolean canFindInPreLayout(int paramInt)
  {
    int k = mPostponedList.size();
    int i = 0;
    while (i < k)
    {
      AdapterHelper.UpdateOp localUpdateOp = (AdapterHelper.UpdateOp)mPostponedList.get(i);
      if (cmd == 3)
      {
        if (findPositionOffset(itemCount, i + 1) == paramInt) {
          return true;
        }
      }
      else if (cmd == 0)
      {
        int m = positionStart;
        int n = itemCount;
        int j = positionStart;
        while (j < m + n)
        {
          if (findPositionOffset(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void dispatchAndUpdateViewHolders(AdapterHelper.UpdateOp paramUpdateOp)
  {
    if ((cmd == 0) || (cmd == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = updatePositionWithPostponed(positionStart, cmd);
    int j = positionStart;
    int k;
    int n;
    int m;
    label108:
    int i2;
    switch (cmd)
    {
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramUpdateOp);
    case 2: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= itemCount) {
        break label286;
      }
      i2 = updatePositionWithPostponed(positionStart + k * m, cmd);
      switch (cmd)
      {
      default: 
        i = 0;
        label166:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label108;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      if (i2 == i1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      AdapterHelper.UpdateOp localUpdateOp = obtainUpdateOp(cmd, i1, n);
      dispatchFirstPassAndUpdateViewHolders(localUpdateOp, j);
      recycleUpdateOp(localUpdateOp);
      i = j;
      if (cmd == 2) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label286:
    recycleUpdateOp(paramUpdateOp);
    if (n > 0)
    {
      paramUpdateOp = obtainUpdateOp(cmd, i1, n);
      dispatchFirstPassAndUpdateViewHolders(paramUpdateOp, j);
      recycleUpdateOp(paramUpdateOp);
    }
  }
  
  private void postponeAndUpdateViewHolders(AdapterHelper.UpdateOp paramUpdateOp)
  {
    mPostponedList.add(paramUpdateOp);
    switch (cmd)
    {
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramUpdateOp);
    case 0: 
      mCallback.offsetPositionsForAdd(positionStart, itemCount);
      return;
    case 3: 
      mCallback.offsetPositionsForMove(positionStart, itemCount);
      return;
    case 1: 
      mCallback.offsetPositionsForRemovingLaidOutOrNewView(positionStart, itemCount);
      return;
    }
    mCallback.markViewHoldersUpdated(positionStart, itemCount);
  }
  
  private int updatePositionWithPostponed(int paramInt1, int paramInt2)
  {
    int j = mPostponedList.size() - 1;
    AdapterHelper.UpdateOp localUpdateOp;
    if (j >= 0)
    {
      localUpdateOp = (AdapterHelper.UpdateOp)mPostponedList.get(j);
      int k;
      int i;
      if (cmd == 3) {
        if (positionStart < itemCount)
        {
          k = positionStart;
          i = itemCount;
          label65:
          if ((paramInt1 < k) || (paramInt1 > i)) {
            break label198;
          }
          if (k != positionStart) {
            break label155;
          }
          if (paramInt2 != 0) {
            break label135;
          }
          itemCount += 1;
          label102:
          paramInt1 += 1;
          label106:
          i = paramInt1;
        }
      }
      for (;;)
      {
        j -= 1;
        paramInt1 = i;
        break;
        k = itemCount;
        i = positionStart;
        break label65;
        label135:
        if (paramInt2 != 1) {
          break label102;
        }
        itemCount -= 1;
        break label102;
        label155:
        if (paramInt2 == 0) {
          positionStart += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 1) {
            positionStart -= 1;
          }
        }
        label198:
        if (paramInt1 < positionStart)
        {
          if (paramInt2 == 0)
          {
            positionStart += 1;
            itemCount += 1;
            break label106;
          }
          if (paramInt2 == 1)
          {
            positionStart -= 1;
            itemCount -= 1;
          }
        }
        break label106;
        if (positionStart <= paramInt1)
        {
          if (cmd == 0)
          {
            i = paramInt1 - itemCount;
          }
          else
          {
            i = paramInt1;
            if (cmd == 1) {
              i = paramInt1 + itemCount;
            }
          }
        }
        else if (paramInt2 == 0)
        {
          positionStart += 1;
          i = paramInt1;
        }
        else
        {
          i = paramInt1;
          if (paramInt2 == 1)
          {
            positionStart -= 1;
            i = paramInt1;
          }
        }
      }
    }
    paramInt2 = mPostponedList.size() - 1;
    if (paramInt2 >= 0)
    {
      localUpdateOp = (AdapterHelper.UpdateOp)mPostponedList.get(paramInt2);
      if (cmd == 3) {
        if ((itemCount == positionStart) || (itemCount < 0))
        {
          mPostponedList.remove(paramInt2);
          recycleUpdateOp(localUpdateOp);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (itemCount <= 0)
        {
          mPostponedList.remove(paramInt2);
          recycleUpdateOp(localUpdateOp);
        }
      }
    }
    return paramInt1;
  }
  
  AdapterHelper addUpdateOp(AdapterHelper.UpdateOp... paramVarArgs)
  {
    Collections.addAll(mPendingUpdates, paramVarArgs);
    return this;
  }
  
  public int applyPendingUpdatesToPosition(int paramInt)
  {
    int m = mPendingUpdates.size();
    int k = 0;
    int i = paramInt;
    paramInt = i;
    AdapterHelper.UpdateOp localUpdateOp;
    if (k < m)
    {
      localUpdateOp = (AdapterHelper.UpdateOp)mPendingUpdates.get(k);
      paramInt = i;
      switch (cmd)
      {
      default: 
        paramInt = i;
      }
    }
    for (;;)
    {
      k += 1;
      i = paramInt;
      break;
      paramInt = i;
      if (positionStart <= i)
      {
        paramInt = i + itemCount;
        continue;
        paramInt = i;
        if (positionStart <= i)
        {
          if (positionStart + itemCount > i)
          {
            paramInt = -1;
            return paramInt;
          }
          paramInt = i - itemCount;
          continue;
          if (positionStart == i)
          {
            paramInt = itemCount;
          }
          else
          {
            int j = i;
            if (positionStart < i) {
              j = i - 1;
            }
            paramInt = j;
            if (itemCount <= j) {
              paramInt = j + 1;
            }
          }
        }
      }
    }
  }
  
  void consumePostponedUpdates()
  {
    int j = mPostponedList.size();
    int i = 0;
    while (i < j)
    {
      mCallback.onDispatchSecondPass((AdapterHelper.UpdateOp)mPostponedList.get(i));
      i += 1;
    }
    recycleUpdateOpsAndClearList(mPostponedList);
  }
  
  void consumeUpdatesInOnePass()
  {
    consumePostponedUpdates();
    int j = mPendingUpdates.size();
    int i = 0;
    if (i < j)
    {
      AdapterHelper.UpdateOp localUpdateOp = (AdapterHelper.UpdateOp)mPendingUpdates.get(i);
      switch (cmd)
      {
      }
      for (;;)
      {
        if (mOnItemProcessedCallback != null) {
          mOnItemProcessedCallback.run();
        }
        i += 1;
        break;
        mCallback.onDispatchSecondPass(localUpdateOp);
        mCallback.offsetPositionsForAdd(positionStart, itemCount);
        continue;
        mCallback.onDispatchSecondPass(localUpdateOp);
        mCallback.offsetPositionsForRemovingInvisible(positionStart, itemCount);
        continue;
        mCallback.onDispatchSecondPass(localUpdateOp);
        mCallback.markViewHoldersUpdated(positionStart, itemCount);
        continue;
        mCallback.onDispatchSecondPass(localUpdateOp);
        mCallback.offsetPositionsForMove(positionStart, itemCount);
      }
    }
    recycleUpdateOpsAndClearList(mPendingUpdates);
  }
  
  void dispatchFirstPassAndUpdateViewHolders(AdapterHelper.UpdateOp paramUpdateOp, int paramInt)
  {
    mCallback.onDispatchFirstPass(paramUpdateOp);
    switch (cmd)
    {
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1: 
      mCallback.offsetPositionsForRemovingInvisible(paramInt, itemCount);
      return;
    }
    mCallback.markViewHoldersUpdated(paramInt, itemCount);
  }
  
  int findPositionOffset(int paramInt)
  {
    return findPositionOffset(paramInt, 0);
  }
  
  int findPositionOffset(int paramInt1, int paramInt2)
  {
    int k = mPostponedList.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    AdapterHelper.UpdateOp localUpdateOp;
    if (j < k)
    {
      localUpdateOp = (AdapterHelper.UpdateOp)mPostponedList.get(j);
      if (cmd == 3) {
        if (positionStart == paramInt2) {
          paramInt1 = itemCount;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (positionStart < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (itemCount <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (positionStart <= paramInt2) {
          if (cmd == 1)
          {
            if (paramInt2 < positionStart + itemCount)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - itemCount;
          }
          else
          {
            paramInt1 = paramInt2;
            if (cmd == 0) {
              paramInt1 = paramInt2 + itemCount;
            }
          }
        }
      }
    }
  }
  
  boolean hasPendingUpdates()
  {
    return mPendingUpdates.size() > 0;
  }
  
  public AdapterHelper.UpdateOp obtainUpdateOp(int paramInt1, int paramInt2, int paramInt3)
  {
    AdapterHelper.UpdateOp localUpdateOp = (AdapterHelper.UpdateOp)mUpdateOpPool.acquire();
    if (localUpdateOp == null) {
      return new AdapterHelper.UpdateOp(paramInt1, paramInt2, paramInt3);
    }
    cmd = paramInt1;
    positionStart = paramInt2;
    itemCount = paramInt3;
    return localUpdateOp;
  }
  
  boolean onItemRangeChanged(int paramInt1, int paramInt2)
  {
    mPendingUpdates.add(obtainUpdateOp(2, paramInt1, paramInt2));
    return mPendingUpdates.size() == 1;
  }
  
  boolean onItemRangeInserted(int paramInt1, int paramInt2)
  {
    mPendingUpdates.add(obtainUpdateOp(0, paramInt1, paramInt2));
    return mPendingUpdates.size() == 1;
  }
  
  boolean onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = true;
    if (paramInt1 == paramInt2) {
      return false;
    }
    if (paramInt3 != 1) {
      throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }
    mPendingUpdates.add(obtainUpdateOp(3, paramInt1, paramInt2));
    if (mPendingUpdates.size() == 1) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  boolean onItemRangeRemoved(int paramInt1, int paramInt2)
  {
    mPendingUpdates.add(obtainUpdateOp(1, paramInt1, paramInt2));
    return mPendingUpdates.size() == 1;
  }
  
  void preProcess()
  {
    mOpReorderer.reorderOps(mPendingUpdates);
    int j = mPendingUpdates.size();
    int i = 0;
    if (i < j)
    {
      AdapterHelper.UpdateOp localUpdateOp = (AdapterHelper.UpdateOp)mPendingUpdates.get(i);
      switch (cmd)
      {
      }
      for (;;)
      {
        if (mOnItemProcessedCallback != null) {
          mOnItemProcessedCallback.run();
        }
        i += 1;
        break;
        applyAdd(localUpdateOp);
        continue;
        applyRemove(localUpdateOp);
        continue;
        applyUpdate(localUpdateOp);
        continue;
        applyMove(localUpdateOp);
      }
    }
    mPendingUpdates.clear();
  }
  
  public void recycleUpdateOp(AdapterHelper.UpdateOp paramUpdateOp)
  {
    if (!mDisableRecycler) {
      mUpdateOpPool.release(paramUpdateOp);
    }
  }
  
  void recycleUpdateOpsAndClearList(List<AdapterHelper.UpdateOp> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      recycleUpdateOp((AdapterHelper.UpdateOp)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  void reset()
  {
    recycleUpdateOpsAndClearList(mPendingUpdates);
    recycleUpdateOpsAndClearList(mPostponedList);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AdapterHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */