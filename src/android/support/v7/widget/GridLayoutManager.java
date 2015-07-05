package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  private static final boolean DEBUG = false;
  public static final int DEFAULT_SPAN_COUNT = -1;
  static final int MAIN_DIR_SPEC = View.MeasureSpec.makeMeasureSpec(0, 0);
  private static final String TAG = "GridLayoutManager";
  int[] mCachedBorders;
  final Rect mDecorInsets = new Rect();
  boolean mPendingSpanCountChange = false;
  final SparseIntArray mPreLayoutSpanIndexCache = new SparseIntArray();
  final SparseIntArray mPreLayoutSpanSizeCache = new SparseIntArray();
  View[] mSet;
  int mSpanCount = -1;
  GridLayoutManager.SpanSizeLookup mSpanSizeLookup = new GridLayoutManager.DefaultSpanSizeLookup();
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    setSpanCount(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    setSpanCount(paramInt1);
  }
  
  private void assignSpans(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    int j;
    int k;
    label43:
    GridLayoutManager.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 1;
      paramInt2 = 0;
      j = paramInt1;
      paramInt1 = paramInt2;
      if ((mOrientation != 1) || (!isLayoutRTL())) {
        break label150;
      }
      paramInt2 = mSpanCount - 1;
      k = -1;
      if (paramInt1 == j) {
        return;
      }
      View localView = mSet[paramInt1];
      localLayoutParams = (GridLayoutManager.LayoutParams)localView.getLayoutParams();
      GridLayoutManager.LayoutParams.access$102(localLayoutParams, getSpanSize(paramRecycler, paramState, getPosition(localView)));
      if ((k != -1) || (GridLayoutManager.LayoutParams.access$100(localLayoutParams) <= 1)) {
        break label159;
      }
      GridLayoutManager.LayoutParams.access$002(localLayoutParams, paramInt2 - (GridLayoutManager.LayoutParams.access$100(localLayoutParams) - 1));
    }
    for (;;)
    {
      paramInt2 += GridLayoutManager.LayoutParams.access$100(localLayoutParams) * k;
      paramInt1 += i;
      break label43;
      paramInt1 -= 1;
      i = -1;
      j = -1;
      break;
      label150:
      paramInt2 = 0;
      k = 1;
      break label43;
      label159:
      GridLayoutManager.LayoutParams.access$002(localLayoutParams, paramInt2);
    }
  }
  
  private void cachePreLayoutSpanMapping()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      GridLayoutManager.LayoutParams localLayoutParams = (GridLayoutManager.LayoutParams)getChildAt(i).getLayoutParams();
      int k = localLayoutParams.getViewLayoutPosition();
      mPreLayoutSpanSizeCache.put(k, localLayoutParams.getSpanSize());
      mPreLayoutSpanIndexCache.put(k, localLayoutParams.getSpanIndex());
      i += 1;
    }
  }
  
  private void calculateItemBorders(int paramInt)
  {
    int j = 0;
    if ((mCachedBorders == null) || (mCachedBorders.length != mSpanCount + 1) || (mCachedBorders[(mCachedBorders.length - 1)] != paramInt)) {
      mCachedBorders = new int[mSpanCount + 1];
    }
    mCachedBorders[0] = 0;
    int m = paramInt / mSpanCount;
    int n = paramInt % mSpanCount;
    int k = 1;
    int i = 0;
    paramInt = j;
    j = k;
    if (j <= mSpanCount)
    {
      paramInt += n;
      if ((paramInt <= 0) || (mSpanCount - paramInt >= n)) {
        break label145;
      }
      paramInt -= mSpanCount;
    }
    label145:
    for (k = m + 1;; k = m)
    {
      i += k;
      mCachedBorders[j] = i;
      j += 1;
      break;
      return;
    }
  }
  
  private void clearPreLayoutSpanMappingCache()
  {
    mPreLayoutSpanSizeCache.clear();
    mPreLayoutSpanIndexCache.clear();
  }
  
  private void ensureAnchorIsInFirstSpan(LinearLayoutManager.AnchorInfo paramAnchorInfo)
  {
    for (int i = mSpanSizeLookup.getCachedSpanIndex(mPosition, mSpanCount); (i > 0) && (mPosition > 0); i = mSpanSizeLookup.getCachedSpanIndex(mPosition, mSpanCount)) {
      mPosition -= 1;
    }
  }
  
  private int getMainDirSpec(int paramInt)
  {
    if (paramInt < 0) {
      return MAIN_DIR_SPEC;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  private int getSpanGroupIndex(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      return mSpanSizeLookup.getSpanGroupIndex(paramInt, mSpanCount);
    }
    int i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      new StringBuilder().append("Cannot find span size for pre layout position. ").append(paramInt).toString();
      return 0;
    }
    return mSpanSizeLookup.getSpanGroupIndex(i, mSpanCount);
  }
  
  private int getSpanIndex(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      i = mSpanSizeLookup.getCachedSpanIndex(paramInt, mSpanCount);
    }
    int j;
    do
    {
      return i;
      j = mPreLayoutSpanIndexCache.get(paramInt, -1);
      i = j;
    } while (j != -1);
    int i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      new StringBuilder().append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:").append(paramInt).toString();
      return 0;
    }
    return mSpanSizeLookup.getCachedSpanIndex(i, mSpanCount);
  }
  
  private int getSpanSize(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      i = mSpanSizeLookup.getSpanSize(paramInt);
    }
    int j;
    do
    {
      return i;
      j = mPreLayoutSpanSizeCache.get(paramInt, -1);
      i = j;
    } while (j != -1);
    int i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      new StringBuilder().append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:").append(paramInt).toString();
      return 1;
    }
    return mSpanSizeLookup.getSpanSize(i);
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, int paramInt1, int paramInt2)
  {
    calculateItemDecorationsForChild(paramView, mDecorInsets);
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    paramView.measure(updateSpecWithExtra(paramInt1, leftMargin + mDecorInsets.left, rightMargin + mDecorInsets.right), updateSpecWithExtra(paramInt2, topMargin + mDecorInsets.top, bottomMargin + mDecorInsets.bottom));
  }
  
  private void updateMeasurements()
  {
    if (getOrientation() == 1) {}
    for (int i = getWidth() - getPaddingRight() - getPaddingLeft();; i = getHeight() - getPaddingBottom() - getPaddingTop())
    {
      calculateItemBorders(i);
      return;
    }
  }
  
  private int updateSpecWithExtra(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i;
    do
    {
      return paramInt1;
      i = View.MeasureSpec.getMode(paramInt1);
    } while ((i != Integer.MIN_VALUE) && (i != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i);
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof GridLayoutManager.LayoutParams;
  }
  
  View findReferenceChild(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject2 = null;
    ensureLayoutState();
    int j = mOrientationHelper.getStartAfterPadding();
    int k = mOrientationHelper.getEndAfterPadding();
    int i;
    Object localObject1;
    label36:
    Object localObject3;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject1 = null;
      if (paramInt1 == paramInt2) {
        break label199;
      }
      localObject3 = getChildAt(paramInt1);
      int m = getPosition((View)localObject3);
      if ((m < 0) || (m >= paramInt3)) {
        break label218;
      }
      if (mSpanSizeLookup.getCachedSpanIndex(m, mSpanCount) == 0) {
        break label121;
      }
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
    }
    for (;;)
    {
      paramInt1 += i;
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break label36;
      i = -1;
      break;
      label121:
      if (((RecyclerView.LayoutParams)((View)localObject3).getLayoutParams()).isItemRemoved())
      {
        if (localObject1 == null)
        {
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
      }
      else
      {
        Object localObject4;
        if (mOrientationHelper.getDecoratedStart((View)localObject3) < k)
        {
          localObject4 = localObject3;
          if (mOrientationHelper.getDecoratedEnd((View)localObject3) >= j) {}
        }
        else
        {
          if (localObject2 != null) {
            break label218;
          }
          localObject2 = localObject1;
          localObject1 = localObject3;
          continue;
          label199:
          if (localObject2 == null) {
            break label211;
          }
        }
        for (;;)
        {
          localObject4 = localObject2;
          return (View)localObject4;
          label211:
          localObject2 = localObject1;
        }
      }
      label218:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    return new GridLayoutManager.LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new GridLayoutManager.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new GridLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new GridLayoutManager.LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 1) {
      return mSpanCount;
    }
    if (paramState.getItemCount() < 1) {
      return 0;
    }
    return getSpanGroupIndex(paramRecycler, paramState, paramState.getItemCount() - 1);
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 0) {
      return mSpanCount;
    }
    if (paramState.getItemCount() < 1) {
      return 0;
    }
    return getSpanGroupIndex(paramRecycler, paramState, paramState.getItemCount() - 1);
  }
  
  public int getSpanCount()
  {
    return mSpanCount;
  }
  
  public GridLayoutManager.SpanSizeLookup getSpanSizeLookup()
  {
    return mSpanSizeLookup;
  }
  
  void layoutChunk(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.LayoutState paramLayoutState, LinearLayoutManager.LayoutChunkResult paramLayoutChunkResult)
  {
    boolean bool;
    int k;
    int m;
    int n;
    if (mItemDirection == 1)
    {
      bool = true;
      k = 0;
      m = 0;
      i = mSpanCount;
      n = k;
      j = m;
      if (!bool)
      {
        i = getSpanIndex(paramRecycler, paramState, mCurrentPosition) + getSpanSize(paramRecycler, paramState, mCurrentPosition);
        j = m;
        n = k;
      }
    }
    for (;;)
    {
      if ((n < mSpanCount) && (paramLayoutState.hasMore(paramState)) && (i > 0))
      {
        m = mCurrentPosition;
        k = getSpanSize(paramRecycler, paramState, m);
        if (k > mSpanCount)
        {
          throw new IllegalArgumentException("Item at position " + m + " requires " + k + " spans but GridLayoutManager has only " + mSpanCount + " spans.");
          bool = false;
          break;
        }
        i -= k;
        if (i >= 0) {
          break label203;
        }
      }
      label203:
      View localView;
      do
      {
        if (n != 0) {
          break;
        }
        mFinished = true;
        return;
        localView = paramLayoutState.next(paramRecycler);
      } while (localView == null);
      j += k;
      mSet[n] = localView;
      n += 1;
    }
    assignSpans(paramRecycler, paramState, n, j, bool);
    int j = 0;
    int i = 0;
    if (j < n)
    {
      paramRecycler = mSet[j];
      if (mScrapList == null) {
        if (bool)
        {
          addView(paramRecycler);
          label290:
          paramState = (GridLayoutManager.LayoutParams)paramRecycler.getLayoutParams();
          k = View.MeasureSpec.makeMeasureSpec(mCachedBorders[(GridLayoutManager.LayoutParams.access$000(paramState) + GridLayoutManager.LayoutParams.access$100(paramState))] - mCachedBorders[GridLayoutManager.LayoutParams.access$000(paramState)], 1073741824);
          if (mOrientation != 1) {
            break label413;
          }
          measureChildWithDecorationsAndMargin(paramRecycler, k, getMainDirSpec(height));
          label352:
          k = mOrientationHelper.getDecoratedMeasurement(paramRecycler);
          if (k <= i) {
            break label877;
          }
          i = k;
        }
      }
    }
    label413:
    label535:
    label615:
    label832:
    label868:
    label877:
    for (;;)
    {
      j += 1;
      break;
      addView(paramRecycler, 0);
      break label290;
      if (bool)
      {
        addDisappearingView(paramRecycler);
        break label290;
      }
      addDisappearingView(paramRecycler, 0);
      break label290;
      measureChildWithDecorationsAndMargin(paramRecycler, getMainDirSpec(width), k);
      break label352;
      k = getMainDirSpec(i);
      j = 0;
      if (j < n)
      {
        paramRecycler = mSet[j];
        if (mOrientationHelper.getDecoratedMeasurement(paramRecycler) != i)
        {
          paramState = (GridLayoutManager.LayoutParams)paramRecycler.getLayoutParams();
          m = View.MeasureSpec.makeMeasureSpec(mCachedBorders[(GridLayoutManager.LayoutParams.access$000(paramState) + GridLayoutManager.LayoutParams.access$100(paramState))] - mCachedBorders[GridLayoutManager.LayoutParams.access$000(paramState)], 1073741824);
          if (mOrientation != 1) {
            break label535;
          }
          measureChildWithDecorationsAndMargin(paramRecycler, m, k);
        }
        for (;;)
        {
          j += 1;
          break;
          measureChildWithDecorationsAndMargin(paramRecycler, k, m);
        }
      }
      mConsumed = i;
      m = 0;
      int i1;
      if (mOrientation == 1) {
        if (mLayoutDirection == -1)
        {
          m = mOffset;
          i = m - i;
          j = 0;
          k = 0;
          int i3 = 0;
          i1 = k;
          int i2 = i;
          k = i3;
          i = i1;
          i1 = i2;
          if (k >= n) {
            break label868;
          }
          paramRecycler = mSet[k];
          paramState = (GridLayoutManager.LayoutParams)paramRecycler.getLayoutParams();
          if (mOrientation != 1) {
            break label832;
          }
          i = getPaddingLeft();
          i = mCachedBorders[GridLayoutManager.LayoutParams.access$000(paramState)] + i;
          j = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler) + i;
        }
      }
      for (;;)
      {
        layoutDecorated(paramRecycler, i + leftMargin, i1 + topMargin, j - rightMargin, m - bottomMargin);
        if ((paramState.isItemRemoved()) || (paramState.isItemChanged())) {
          mIgnoreConsumed = true;
        }
        mFocusable |= paramRecycler.isFocusable();
        k += 1;
        break label615;
        j = mOffset;
        m = j + i;
        i = j;
        j = 0;
        k = 0;
        break;
        if (mLayoutDirection == -1)
        {
          k = mOffset;
          j = k;
          k -= i;
          i = 0;
          break;
        }
        k = mOffset;
        j = i + k;
        i = 0;
        break;
        m = getPaddingTop();
        i1 = mCachedBorders[GridLayoutManager.LayoutParams.access$000(paramState)] + m;
        m = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler) + i1;
      }
      Arrays.fill(mSet, null);
      return;
    }
  }
  
  void onAnchorReady(RecyclerView.State paramState, LinearLayoutManager.AnchorInfo paramAnchorInfo)
  {
    super.onAnchorReady(paramState, paramAnchorInfo);
    updateMeasurements();
    if ((paramState.getItemCount() > 0) && (!paramState.isPreLayout())) {
      ensureAnchorIsInFirstSpan(paramAnchorInfo);
    }
    if ((mSet == null) || (mSet.length != mSpanCount)) {
      mSet = new View[mSpanCount];
    }
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof GridLayoutManager.LayoutParams))
    {
      super.onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramView = (GridLayoutManager.LayoutParams)localLayoutParams;
    int i = getSpanGroupIndex(paramRecycler, paramState, paramView.getViewLayoutPosition());
    if (mOrientation == 0)
    {
      j = paramView.getSpanIndex();
      k = paramView.getSpanSize();
      if ((mSpanCount > 1) && (paramView.getSpanSize() == mSpanCount)) {}
      for (bool = true;; bool = false)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, k, i, 1, bool, false));
        return;
      }
    }
    int j = paramView.getSpanIndex();
    int k = paramView.getSpanSize();
    if ((mSpanCount > 1) && (paramView.getSpanSize() == mSpanCount)) {}
    for (boolean bool = true;; bool = false)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, k, bool, false));
      return;
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (paramState.isPreLayout()) {
      cachePreLayoutSpanMapping();
    }
    super.onLayoutChildren(paramRecycler, paramState);
    clearPreLayoutSpanMappingCache();
    if (!paramState.isPreLayout()) {
      mPendingSpanCountChange = false;
    }
  }
  
  public void setSpanCount(int paramInt)
  {
    if (paramInt == mSpanCount) {
      return;
    }
    mPendingSpanCountChange = true;
    if (paramInt < 1) {
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    }
    mSpanCount = paramInt;
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void setSpanSizeLookup(GridLayoutManager.SpanSizeLookup paramSpanSizeLookup)
  {
    mSpanSizeLookup = paramSpanSizeLookup;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }
    super.setStackFromEnd(false);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return (mPendingSavedState == null) && (!mPendingSpanCountChange);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */