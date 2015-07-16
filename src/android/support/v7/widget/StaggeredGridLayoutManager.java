package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.BitSet;

public class StaggeredGridLayoutManager
  extends RecyclerView.LayoutManager
{
  private static final boolean DEBUG = false;
  @Deprecated
  public static final int GAP_HANDLING_LAZY = 1;
  public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
  public static final int GAP_HANDLING_NONE = 0;
  public static final int HORIZONTAL = 0;
  private static final int INVALID_OFFSET = Integer.MIN_VALUE;
  public static final String TAG = "StaggeredGridLayoutManager";
  public static final int VERTICAL = 1;
  private final StaggeredGridLayoutManager.AnchorInfo mAnchorInfo = new StaggeredGridLayoutManager.AnchorInfo(this, null);
  private final Runnable mCheckForGapsRunnable = new StaggeredGridLayoutManager.1(this);
  private int mFullSizeSpec;
  private int mGapStrategy = 2;
  private int mHeightSpec;
  private boolean mLaidOutInvalidFullSpan = false;
  private boolean mLastLayoutFromEnd;
  private boolean mLastLayoutRTL;
  private LayoutState mLayoutState;
  StaggeredGridLayoutManager.LazySpanLookup mLazySpanLookup = new StaggeredGridLayoutManager.LazySpanLookup();
  private int mOrientation;
  private StaggeredGridLayoutManager.SavedState mPendingSavedState;
  int mPendingScrollPosition = -1;
  int mPendingScrollPositionOffset = Integer.MIN_VALUE;
  OrientationHelper mPrimaryOrientation;
  private BitSet mRemainingSpans;
  private boolean mReverseLayout = false;
  OrientationHelper mSecondaryOrientation;
  boolean mShouldReverseLayout = false;
  private int mSizePerSpan;
  private boolean mSmoothScrollbarEnabled = true;
  private int mSpanCount = -1;
  private StaggeredGridLayoutManager.Span[] mSpans;
  private final Rect mTmpRect = new Rect();
  private int mWidthSpec;
  
  public StaggeredGridLayoutManager(int paramInt1, int paramInt2)
  {
    mOrientation = paramInt2;
    setSpanCount(paramInt1);
  }
  
  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(orientation);
    setSpanCount(spanCount);
    setReverseLayout(reverseLayout);
  }
  
  private void appendViewToAllSpans(View paramView)
  {
    int i = mSpanCount - 1;
    while (i >= 0)
    {
      mSpans[i].appendToSpan(paramView);
      i -= 1;
    }
  }
  
  private void applyPendingSavedState(StaggeredGridLayoutManager.AnchorInfo paramAnchorInfo)
  {
    if (mPendingSavedState.mSpanOffsetsSize > 0) {
      if (mPendingSavedState.mSpanOffsetsSize == mSpanCount)
      {
        int j = 0;
        if (j < mSpanCount)
        {
          mSpans[j].clear();
          int k = mPendingSavedState.mSpanOffsets[j];
          int i = k;
          if (k != Integer.MIN_VALUE) {
            if (!mPendingSavedState.mAnchorLayoutFromEnd) {
              break label102;
            }
          }
          label102:
          for (i = k + mPrimaryOrientation.getEndAfterPadding();; i = k + mPrimaryOrientation.getStartAfterPadding())
          {
            mSpans[j].setLine(i);
            j += 1;
            break;
          }
        }
      }
      else
      {
        mPendingSavedState.invalidateSpanInfo();
        mPendingSavedState.mAnchorPosition = mPendingSavedState.mVisibleAnchorPosition;
      }
    }
    mLastLayoutRTL = mPendingSavedState.mLastLayoutRTL;
    setReverseLayout(mPendingSavedState.mReverseLayout);
    resolveShouldLayoutReverse();
    if (mPendingSavedState.mAnchorPosition != -1) {
      mPendingScrollPosition = mPendingSavedState.mAnchorPosition;
    }
    for (mLayoutFromEnd = mPendingSavedState.mAnchorLayoutFromEnd;; mLayoutFromEnd = mShouldReverseLayout)
    {
      if (mPendingSavedState.mSpanLookupSize > 1)
      {
        mLazySpanLookup.mData = mPendingSavedState.mSpanLookup;
        mLazySpanLookup.mFullSpanItems = mPendingSavedState.mFullSpanItems;
      }
      return;
    }
  }
  
  private void attachViewToSpans(View paramView, StaggeredGridLayoutManager.LayoutParams paramLayoutParams, LayoutState paramLayoutState)
  {
    if (mLayoutDirection == 1)
    {
      if (mFullSpan)
      {
        appendViewToAllSpans(paramView);
        return;
      }
      mSpan.appendToSpan(paramView);
      return;
    }
    if (mFullSpan)
    {
      prependViewToAllSpans(paramView);
      return;
    }
    mSpan.prependToSpan(paramView);
  }
  
  private int calculateScrollDirectionForPosition(int paramInt)
  {
    int i = -1;
    if (getChildCount() == 0)
    {
      if (mShouldReverseLayout) {
        return 1;
      }
      return -1;
    }
    int j;
    if (paramInt < getFirstChildPosition())
    {
      j = 1;
      if (j == mShouldReverseLayout) {
        break label47;
      }
    }
    label47:
    for (paramInt = i;; paramInt = 1)
    {
      return paramInt;
      j = 0;
      break;
    }
  }
  
  private boolean checkForGaps()
  {
    if ((getChildCount() == 0) || (mGapStrategy == 0) || (!isAttachedToWindow())) {
      return false;
    }
    int j;
    if (mShouldReverseLayout) {
      j = getLastChildPosition();
    }
    for (int i = getFirstChildPosition(); (j == 0) && (hasGapsToFix() != null); i = getLastChildPosition())
    {
      mLazySpanLookup.clear();
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
      j = getFirstChildPosition();
    }
    if (!mLaidOutInvalidFullSpan) {
      return false;
    }
    if (mShouldReverseLayout) {}
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem1;
    for (int k = -1;; k = 1)
    {
      localFullSpanItem1 = mLazySpanLookup.getFirstFullSpanItemInRange(j, i + 1, k, true);
      if (localFullSpanItem1 != null) {
        break;
      }
      mLaidOutInvalidFullSpan = false;
      mLazySpanLookup.forceInvalidateAfter(i + 1);
      return false;
    }
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem2 = mLazySpanLookup.getFirstFullSpanItemInRange(j, mPosition, k * -1, true);
    if (localFullSpanItem2 == null) {
      mLazySpanLookup.forceInvalidateAfter(mPosition);
    }
    for (;;)
    {
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
      mLazySpanLookup.forceInvalidateAfter(mPosition + 1);
    }
  }
  
  private boolean checkSpanForGap(StaggeredGridLayoutManager.Span paramSpan)
  {
    if (mShouldReverseLayout)
    {
      if (paramSpan.getEndLine() >= mPrimaryOrientation.getEndAfterPadding()) {}
    }
    else {
      while (paramSpan.getStartLine() > mPrimaryOrientation.getStartAfterPadding()) {
        return true;
      }
    }
    return false;
  }
  
  private int computeScrollExtent(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureOrientationHelper();
    OrientationHelper localOrientationHelper = mPrimaryOrientation;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleItemClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollExtent(paramState, localOrientationHelper, localView, findFirstVisibleItemClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled);
    }
  }
  
  private int computeScrollOffset(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureOrientationHelper();
    OrientationHelper localOrientationHelper = mPrimaryOrientation;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleItemClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollOffset(paramState, localOrientationHelper, localView, findFirstVisibleItemClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled, mShouldReverseLayout);
    }
  }
  
  private int computeScrollRange(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureOrientationHelper();
    OrientationHelper localOrientationHelper = mPrimaryOrientation;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleItemClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollRange(paramState, localOrientationHelper, localView, findFirstVisibleItemClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled);
    }
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem createFullSpanItemFromEnd(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    mGapPerSpan = new int[mSpanCount];
    int i = 0;
    while (i < mSpanCount)
    {
      mGapPerSpan[i] = (paramInt - mSpans[i].getEndLine(paramInt));
      i += 1;
    }
    return localFullSpanItem;
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem createFullSpanItemFromStart(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    mGapPerSpan = new int[mSpanCount];
    int i = 0;
    while (i < mSpanCount)
    {
      mGapPerSpan[i] = (mSpans[i].getStartLine(paramInt) - paramInt);
      i += 1;
    }
    return localFullSpanItem;
  }
  
  private void ensureOrientationHelper()
  {
    if (mPrimaryOrientation == null)
    {
      mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, mOrientation);
      mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - mOrientation);
      mLayoutState = new LayoutState();
    }
  }
  
  private int fill(RecyclerView.Recycler paramRecycler, LayoutState paramLayoutState, RecyclerView.State paramState)
  {
    mRemainingSpans.set(0, mSpanCount, true);
    int k;
    int m;
    label58:
    int i;
    label61:
    View localView;
    StaggeredGridLayoutManager.LayoutParams localLayoutParams;
    int i2;
    int n;
    label123:
    StaggeredGridLayoutManager.Span localSpan;
    label144:
    label155:
    label176:
    label208:
    int i1;
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    int j;
    if (mLayoutDirection == 1)
    {
      k = mEndLine + mAvailable;
      updateAllRemainingSpans(mLayoutDirection, k);
      if (!mShouldReverseLayout) {
        break label407;
      }
      m = mPrimaryOrientation.getEndAfterPadding();
      i = 0;
      if ((!paramLayoutState.hasMore(paramState)) || (mRemainingSpans.isEmpty())) {
        break label705;
      }
      localView = paramLayoutState.next(paramRecycler);
      localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      i2 = localLayoutParams.getViewLayoutPosition();
      i = mLazySpanLookup.getSpan(i2);
      if (i != -1) {
        break label419;
      }
      n = 1;
      if (n == 0) {
        break label435;
      }
      if (!mFullSpan) {
        break label425;
      }
      localSpan = mSpans[0];
      mLazySpanLookup.setSpan(i2, localSpan);
      mSpan = localSpan;
      if (mLayoutDirection != 1) {
        break label447;
      }
      addView(localView);
      measureChildWithDecorationsAndMargin(localView, localLayoutParams);
      if (mLayoutDirection != 1) {
        break label469;
      }
      if (!mFullSpan) {
        break label457;
      }
      i = getMaxEnd(m);
      i1 = i + mPrimaryOrientation.getDecoratedMeasurement(localView);
      if ((n == 0) || (!mFullSpan)) {
        break label796;
      }
      localFullSpanItem = createFullSpanItemFromEnd(i);
      mGapDir = -1;
      mPosition = i2;
      mLazySpanLookup.addFullSpanItem(localFullSpanItem);
      j = i;
    }
    for (;;)
    {
      if ((mFullSpan) && (mItemDirection == -1))
      {
        if (n != 0) {
          mLaidOutInvalidFullSpan = true;
        }
      }
      else
      {
        label295:
        attachViewToSpans(localView, localLayoutParams, paramLayoutState);
        if (!mFullSpan) {
          break label639;
        }
        i = mSecondaryOrientation.getStartAfterPadding();
        label321:
        n = i + mSecondaryOrientation.getDecoratedMeasurement(localView);
        if (mOrientation != 1) {
          break label670;
        }
        layoutDecoratedWithMargins(localView, i, j, n, i1);
        label357:
        if (!mFullSpan) {
          break label687;
        }
        updateAllRemainingSpans(mLayoutState.mLayoutDirection, k);
      }
      for (;;)
      {
        recycle(paramRecycler, mLayoutState);
        i = 1;
        break label61;
        k = mStartLine - mAvailable;
        break;
        label407:
        m = mPrimaryOrientation.getStartAfterPadding();
        break label58;
        label419:
        n = 0;
        break label123;
        label425:
        localSpan = getNextSpan(paramLayoutState);
        break label144;
        label435:
        localSpan = mSpans[i];
        break label155;
        label447:
        addView(localView, 0);
        break label176;
        label457:
        i = localSpan.getEndLine(m);
        break label208;
        label469:
        if (mFullSpan) {}
        for (i = getMinStart(m);; i = localSpan.getStartLine(m))
        {
          j = i - mPrimaryOrientation.getDecoratedMeasurement(localView);
          if ((n != 0) && (mFullSpan))
          {
            localFullSpanItem = createFullSpanItemFromStart(i);
            mGapDir = 1;
            mPosition = i2;
            mLazySpanLookup.addFullSpanItem(localFullSpanItem);
          }
          i1 = i;
          break;
        }
        if (mLayoutDirection == 1) {
          if (!areAllEndsEqual()) {
            i = 1;
          }
        }
        for (;;)
        {
          if (i == 0) {
            break label637;
          }
          localFullSpanItem = mLazySpanLookup.getFullSpanItem(i2);
          if (localFullSpanItem != null) {
            mHasUnwantedGapAfter = true;
          }
          mLaidOutInvalidFullSpan = true;
          break;
          i = 0;
          continue;
          if (!areAllStartsEqual()) {
            i = 1;
          } else {
            i = 0;
          }
        }
        label637:
        break label295;
        label639:
        i = mIndex;
        n = mSizePerSpan;
        i = mSecondaryOrientation.getStartAfterPadding() + i * n;
        break label321;
        label670:
        layoutDecoratedWithMargins(localView, j, i, i1, n);
        break label357;
        label687:
        updateRemainingSpans(localSpan, mLayoutState.mLayoutDirection, k);
      }
      label705:
      if (i == 0) {
        recycle(paramRecycler, mLayoutState);
      }
      if (mLayoutState.mLayoutDirection == -1) {
        i = getMinStart(mPrimaryOrientation.getStartAfterPadding());
      }
      for (i = mPrimaryOrientation.getStartAfterPadding() - i; i > 0; i = getMaxEnd(mPrimaryOrientation.getEndAfterPadding()) - mPrimaryOrientation.getEndAfterPadding()) {
        return Math.min(mAvailable, i);
      }
      return 0;
      label796:
      j = i;
    }
  }
  
  private int findFirstReferenceChildPosition(int paramInt)
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      int k = getPosition(getChildAt(i));
      if ((k >= 0) && (k < paramInt)) {
        return k;
      }
      i += 1;
    }
    return 0;
  }
  
  private int findLastReferenceChildPosition(int paramInt)
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      int j = getPosition(getChildAt(i));
      if ((j >= 0) && (j < paramInt)) {
        return j;
      }
      i -= 1;
    }
    return 0;
  }
  
  private void fixEndGap(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i = getMaxEnd(mPrimaryOrientation.getEndAfterPadding());
    i = mPrimaryOrientation.getEndAfterPadding() - i;
    if (i > 0)
    {
      i -= -scrollBy(-i, paramRecycler, paramState);
      if ((paramBoolean) && (i > 0)) {
        mPrimaryOrientation.offsetChildren(i);
      }
    }
  }
  
  private void fixStartGap(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i = getMinStart(mPrimaryOrientation.getStartAfterPadding()) - mPrimaryOrientation.getStartAfterPadding();
    if (i > 0)
    {
      i -= scrollBy(i, paramRecycler, paramState);
      if ((paramBoolean) && (i > 0)) {
        mPrimaryOrientation.offsetChildren(-i);
      }
    }
  }
  
  private int getFirstChildPosition()
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return getPosition(getChildAt(0));
  }
  
  private int getLastChildPosition()
  {
    int i = getChildCount();
    if (i == 0) {
      return 0;
    }
    return getPosition(getChildAt(i - 1));
  }
  
  private int getMaxEnd(int paramInt)
  {
    int j = mSpans[0].getEndLine(paramInt);
    int i = 1;
    while (i < mSpanCount)
    {
      int m = mSpans[i].getEndLine(paramInt);
      int k = j;
      if (m > j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private int getMaxStart(int paramInt)
  {
    int j = mSpans[0].getStartLine(paramInt);
    int i = 1;
    while (i < mSpanCount)
    {
      int m = mSpans[i].getStartLine(paramInt);
      int k = j;
      if (m > j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private int getMinEnd(int paramInt)
  {
    int j = mSpans[0].getEndLine(paramInt);
    int i = 1;
    while (i < mSpanCount)
    {
      int m = mSpans[i].getEndLine(paramInt);
      int k = j;
      if (m < j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private int getMinStart(int paramInt)
  {
    int j = mSpans[0].getStartLine(paramInt);
    int i = 1;
    while (i < mSpanCount)
    {
      int m = mSpans[i].getStartLine(paramInt);
      int k = j;
      if (m < j) {
        k = m;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  private StaggeredGridLayoutManager.Span getNextSpan(LayoutState paramLayoutState)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    int j = -1;
    int i;
    int k;
    int i1;
    int n;
    int m;
    if (preferLastSpan(mLayoutDirection))
    {
      i = mSpanCount - 1;
      k = -1;
      if (mLayoutDirection != 1) {
        break label122;
      }
      i1 = mPrimaryOrientation.getStartAfterPadding();
      n = Integer.MAX_VALUE;
      m = i;
      paramLayoutState = (LayoutState)localObject1;
      i = n;
      label60:
      localObject1 = paramLayoutState;
      if (m == k) {
        break label193;
      }
      localObject1 = mSpans[m];
      n = ((StaggeredGridLayoutManager.Span)localObject1).getEndLine(i1);
      if (n >= i) {
        break label199;
      }
      paramLayoutState = (LayoutState)localObject1;
      i = n;
    }
    label122:
    label193:
    label196:
    label199:
    for (;;)
    {
      m += j;
      break label60;
      k = mSpanCount;
      i = 0;
      j = 1;
      break;
      i1 = mPrimaryOrientation.getEndAfterPadding();
      n = Integer.MIN_VALUE;
      m = i;
      paramLayoutState = (LayoutState)localObject2;
      i = n;
      localObject1 = paramLayoutState;
      if (m != k)
      {
        localObject1 = mSpans[m];
        n = ((StaggeredGridLayoutManager.Span)localObject1).getStartLine(i1);
        if (n <= i) {
          break label196;
        }
        paramLayoutState = (LayoutState)localObject1;
        i = n;
      }
      for (;;)
      {
        m += j;
        break;
        return (StaggeredGridLayoutManager.Span)localObject1;
      }
    }
  }
  
  private int getSpecForDimension(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      return paramInt2;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
  }
  
  private void handleUpdate(int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    int j;
    int i;
    if (mShouldReverseLayout)
    {
      k = getLastChildPosition();
      if (paramInt3 != 3) {
        break label100;
      }
      if (paramInt1 >= paramInt2) {
        break label89;
      }
      j = paramInt2 + 1;
      i = paramInt1;
      label31:
      mLazySpanLookup.invalidateAfter(i);
      switch (paramInt3)
      {
      case 2: 
      default: 
        label72:
        if (j > k) {
          break;
        }
      }
    }
    for (;;)
    {
      return;
      k = getFirstChildPosition();
      break;
      label89:
      j = paramInt1 + 1;
      i = paramInt2;
      break label31;
      label100:
      j = paramInt1 + paramInt2;
      i = paramInt1;
      break label31;
      mLazySpanLookup.offsetForAddition(paramInt1, paramInt2);
      break label72;
      mLazySpanLookup.offsetForRemoval(paramInt1, paramInt2);
      break label72;
      mLazySpanLookup.offsetForRemoval(paramInt1, 1);
      mLazySpanLookup.offsetForAddition(paramInt2, 1);
      break label72;
      if (mShouldReverseLayout) {}
      for (paramInt1 = getFirstChildPosition(); i <= paramInt1; paramInt1 = getLastChildPosition())
      {
        requestLayout();
        return;
      }
    }
  }
  
  private void layoutDecoratedWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    layoutDecorated(paramView, paramInt1 + leftMargin, paramInt2 + topMargin, paramInt3 - rightMargin, paramInt4 - bottomMargin);
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, int paramInt1, int paramInt2)
  {
    calculateItemDecorationsForChild(paramView, mTmpRect);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    paramView.measure(updateSpecWithExtra(paramInt1, leftMargin + mTmpRect.left, rightMargin + mTmpRect.right), updateSpecWithExtra(paramInt2, topMargin + mTmpRect.top, bottomMargin + mTmpRect.bottom));
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, StaggeredGridLayoutManager.LayoutParams paramLayoutParams)
  {
    if (mFullSpan)
    {
      if (mOrientation == 1)
      {
        measureChildWithDecorationsAndMargin(paramView, mFullSizeSpec, getSpecForDimension(height, mHeightSpec));
        return;
      }
      measureChildWithDecorationsAndMargin(paramView, getSpecForDimension(width, mWidthSpec), mFullSizeSpec);
      return;
    }
    if (mOrientation == 1)
    {
      measureChildWithDecorationsAndMargin(paramView, mWidthSpec, getSpecForDimension(height, mHeightSpec));
      return;
    }
    measureChildWithDecorationsAndMargin(paramView, getSpecForDimension(width, mWidthSpec), mHeightSpec);
  }
  
  private boolean preferLastSpan(int paramInt)
  {
    int i;
    if (mOrientation == 0) {
      if (paramInt == -1)
      {
        i = 1;
        if (i == mShouldReverseLayout) {
          break label29;
        }
      }
    }
    label29:
    label63:
    label66:
    for (;;)
    {
      return true;
      i = 0;
      break;
      return false;
      if (paramInt == -1)
      {
        i = 1;
        if (i != mShouldReverseLayout) {
          break label63;
        }
      }
      for (i = 1;; i = 0)
      {
        if (i == isLayoutRTL()) {
          break label66;
        }
        return false;
        i = 0;
        break;
      }
    }
  }
  
  private void prependViewToAllSpans(View paramView)
  {
    int i = mSpanCount - 1;
    while (i >= 0)
    {
      mSpans[i].prependToSpan(paramView);
      i -= 1;
    }
  }
  
  private void recycle(RecyclerView.Recycler paramRecycler, LayoutState paramLayoutState)
  {
    if (mAvailable == 0)
    {
      if (mLayoutDirection == -1)
      {
        recycleFromEnd(paramRecycler, mEndLine);
        return;
      }
      recycleFromStart(paramRecycler, mStartLine);
      return;
    }
    if (mLayoutDirection == -1)
    {
      i = mStartLine - getMaxStart(mStartLine);
      if (i < 0) {}
      for (i = mEndLine;; i = mEndLine - Math.min(i, mAvailable))
      {
        recycleFromEnd(paramRecycler, i);
        return;
      }
    }
    int i = getMinEnd(mEndLine) - mEndLine;
    if (i < 0) {}
    int j;
    for (i = mStartLine;; i = Math.min(i, mAvailable) + j)
    {
      recycleFromStart(paramRecycler, i);
      return;
      j = mStartLine;
    }
  }
  
  private void recycleFromEnd(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    int i = getChildCount() - 1;
    for (;;)
    {
      View localView;
      StaggeredGridLayoutManager.LayoutParams localLayoutParams;
      if (i >= 0)
      {
        localView = getChildAt(i);
        if (mPrimaryOrientation.getDecoratedStart(localView) >= paramInt)
        {
          localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
          if (!mFullSpan) {
            break label119;
          }
          j = 0;
          if (j >= mSpanCount) {
            break label88;
          }
          if (StaggeredGridLayoutManager.Span.access$300(mSpans[j]).size() != 1) {
            break label79;
          }
        }
      }
      label79:
      label88:
      label119:
      while (StaggeredGridLayoutManager.Span.access$300(mSpan).size() == 1)
      {
        for (;;)
        {
          return;
          j += 1;
        }
        int j = 0;
        while (j < mSpanCount)
        {
          mSpans[j].popEnd();
          j += 1;
        }
      }
      mSpan.popEnd();
      removeAndRecycleView(localView, paramRecycler);
      i -= 1;
    }
  }
  
  private void recycleFromStart(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    for (;;)
    {
      View localView;
      StaggeredGridLayoutManager.LayoutParams localLayoutParams;
      if (getChildCount() > 0)
      {
        localView = getChildAt(0);
        if (mPrimaryOrientation.getDecoratedEnd(localView) <= paramInt)
        {
          localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
          if (!mFullSpan) {
            break label105;
          }
          i = 0;
          if (i >= mSpanCount) {
            break label79;
          }
          if (StaggeredGridLayoutManager.Span.access$300(mSpans[i]).size() != 1) {
            break label72;
          }
        }
      }
      label72:
      label79:
      label105:
      while (StaggeredGridLayoutManager.Span.access$300(mSpan).size() == 1)
      {
        for (;;)
        {
          return;
          i += 1;
        }
        int i = 0;
        while (i < mSpanCount)
        {
          mSpans[i].popStart();
          i += 1;
        }
      }
      mSpan.popStart();
      removeAndRecycleView(localView, paramRecycler);
    }
  }
  
  private void resolveShouldLayoutReverse()
  {
    boolean bool = true;
    if ((mOrientation == 1) || (!isLayoutRTL()))
    {
      mShouldReverseLayout = mReverseLayout;
      return;
    }
    if (!mReverseLayout) {}
    for (;;)
    {
      mShouldReverseLayout = bool;
      return;
      bool = false;
    }
  }
  
  private void setLayoutStateDirection(int paramInt)
  {
    int i = 1;
    mLayoutState.mLayoutDirection = paramInt;
    LayoutState localLayoutState = mLayoutState;
    boolean bool2 = mShouldReverseLayout;
    boolean bool1;
    if (paramInt == -1)
    {
      bool1 = true;
      if (bool2 != bool1) {
        break label49;
      }
    }
    label49:
    for (paramInt = i;; paramInt = -1)
    {
      mItemDirection = paramInt;
      return;
      bool1 = false;
      break;
    }
  }
  
  private void updateAllRemainingSpans(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < mSpanCount)
    {
      if (StaggeredGridLayoutManager.Span.access$300(mSpans[i]).isEmpty()) {}
      for (;;)
      {
        i += 1;
        break;
        updateRemainingSpans(mSpans[i], paramInt1, paramInt2);
      }
    }
  }
  
  private boolean updateAnchorFromChildren(RecyclerView.State paramState, StaggeredGridLayoutManager.AnchorInfo paramAnchorInfo)
  {
    if (mLastLayoutFromEnd) {}
    for (int i = findLastReferenceChildPosition(paramState.getItemCount());; i = findFirstReferenceChildPosition(paramState.getItemCount()))
    {
      mPosition = i;
      mOffset = Integer.MIN_VALUE;
      return true;
    }
  }
  
  private void updateLayoutState(int paramInt, RecyclerView.State paramState)
  {
    int i = 0;
    mLayoutState.mAvailable = 0;
    mLayoutState.mCurrentPosition = paramInt;
    boolean bool1;
    if (isSmoothScrolling())
    {
      int j = paramState.getTargetScrollPosition();
      if (j != -1)
      {
        boolean bool2 = mShouldReverseLayout;
        if (j < paramInt)
        {
          bool1 = true;
          if (bool2 != bool1) {
            break label113;
          }
          paramInt = mPrimaryOrientation.getTotalSpace();
        }
      }
    }
    for (;;)
    {
      if (getClipToPadding())
      {
        mLayoutState.mStartLine = (mPrimaryOrientation.getStartAfterPadding() - i);
        mLayoutState.mEndLine = (paramInt + mPrimaryOrientation.getEndAfterPadding());
        return;
        bool1 = false;
        break;
        label113:
        i = mPrimaryOrientation.getTotalSpace();
        paramInt = 0;
        continue;
      }
      mLayoutState.mEndLine = (paramInt + mPrimaryOrientation.getEnd());
      mLayoutState.mStartLine = (-i);
      return;
      paramInt = 0;
    }
  }
  
  private void updateRemainingSpans(StaggeredGridLayoutManager.Span paramSpan, int paramInt1, int paramInt2)
  {
    int i = paramSpan.getDeletedSize();
    if (paramInt1 == -1) {
      if (i + paramSpan.getStartLine() <= paramInt2) {
        mRemainingSpans.set(mIndex, false);
      }
    }
    while (paramSpan.getEndLine() - i < paramInt2) {
      return;
    }
    mRemainingSpans.set(mIndex, false);
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
  
  boolean areAllEndsEqual()
  {
    boolean bool2 = true;
    int j = mSpans[0].getEndLine(Integer.MIN_VALUE);
    int i = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < mSpanCount)
      {
        if (mSpans[i].getEndLine(Integer.MIN_VALUE) != j) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  boolean areAllStartsEqual()
  {
    boolean bool2 = true;
    int j = mSpans[0].getStartLine(Integer.MIN_VALUE);
    int i = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < mSpanCount)
      {
        if (mSpans[i].getStartLine(Integer.MIN_VALUE) != j) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (mPendingSavedState == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  public boolean canScrollHorizontally()
  {
    return mOrientation == 0;
  }
  
  public boolean canScrollVertically()
  {
    return mOrientation == 1;
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof StaggeredGridLayoutManager.LayoutParams;
  }
  
  public int computeHorizontalScrollExtent(RecyclerView.State paramState)
  {
    return computeScrollExtent(paramState);
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.State paramState)
  {
    return computeScrollOffset(paramState);
  }
  
  public int computeHorizontalScrollRange(RecyclerView.State paramState)
  {
    return computeScrollRange(paramState);
  }
  
  public int computeVerticalScrollExtent(RecyclerView.State paramState)
  {
    return computeScrollExtent(paramState);
  }
  
  public int computeVerticalScrollOffset(RecyclerView.State paramState)
  {
    return computeScrollOffset(paramState);
  }
  
  public int computeVerticalScrollRange(RecyclerView.State paramState)
  {
    return computeScrollRange(paramState);
  }
  
  public int[] findFirstCompletelyVisibleItemPositions(int[] paramArrayOfInt)
  {
    int[] arrayOfInt;
    if (paramArrayOfInt == null) {
      arrayOfInt = new int[mSpanCount];
    }
    do
    {
      int i = 0;
      while (i < mSpanCount)
      {
        arrayOfInt[i] = mSpans[i].findFirstCompletelyVisibleItemPosition();
        i += 1;
      }
      arrayOfInt = paramArrayOfInt;
    } while (paramArrayOfInt.length >= mSpanCount);
    throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + mSpanCount + ", array size:" + paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  View findFirstVisibleItemClosestToEnd(boolean paramBoolean1, boolean paramBoolean2)
  {
    ensureOrientationHelper();
    int j = mPrimaryOrientation.getStartAfterPadding();
    int k = mPrimaryOrientation.getEndAfterPadding();
    int i = getChildCount() - 1;
    Object localObject1 = null;
    if (i >= 0)
    {
      View localView = getChildAt(i);
      int m = mPrimaryOrientation.getDecoratedStart(localView);
      int n = mPrimaryOrientation.getDecoratedEnd(localView);
      Object localObject2 = localObject1;
      if (n > j)
      {
        if (m < k) {
          break label98;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i -= 1;
        localObject1 = localObject2;
        break;
        label98:
        if ((n <= k) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  View findFirstVisibleItemClosestToStart(boolean paramBoolean1, boolean paramBoolean2)
  {
    ensureOrientationHelper();
    int j = mPrimaryOrientation.getStartAfterPadding();
    int k = mPrimaryOrientation.getEndAfterPadding();
    int m = getChildCount();
    int i = 0;
    Object localObject1 = null;
    if (i < m)
    {
      View localView = getChildAt(i);
      int n = mPrimaryOrientation.getDecoratedStart(localView);
      Object localObject2 = localObject1;
      if (mPrimaryOrientation.getDecoratedEnd(localView) > j)
      {
        if (n < k) {
          break label97;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label97:
        if ((n >= j) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  int findFirstVisibleItemPositionInt()
  {
    if (mShouldReverseLayout) {}
    for (View localView = findFirstVisibleItemClosestToEnd(true, true); localView == null; localView = findFirstVisibleItemClosestToStart(true, true)) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int[] findFirstVisibleItemPositions(int[] paramArrayOfInt)
  {
    int[] arrayOfInt;
    if (paramArrayOfInt == null) {
      arrayOfInt = new int[mSpanCount];
    }
    do
    {
      int i = 0;
      while (i < mSpanCount)
      {
        arrayOfInt[i] = mSpans[i].findFirstVisibleItemPosition();
        i += 1;
      }
      arrayOfInt = paramArrayOfInt;
    } while (paramArrayOfInt.length >= mSpanCount);
    throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + mSpanCount + ", array size:" + paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  public int[] findLastCompletelyVisibleItemPositions(int[] paramArrayOfInt)
  {
    int[] arrayOfInt;
    if (paramArrayOfInt == null) {
      arrayOfInt = new int[mSpanCount];
    }
    do
    {
      int i = 0;
      while (i < mSpanCount)
      {
        arrayOfInt[i] = mSpans[i].findLastCompletelyVisibleItemPosition();
        i += 1;
      }
      arrayOfInt = paramArrayOfInt;
    } while (paramArrayOfInt.length >= mSpanCount);
    throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + mSpanCount + ", array size:" + paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  public int[] findLastVisibleItemPositions(int[] paramArrayOfInt)
  {
    int[] arrayOfInt;
    if (paramArrayOfInt == null) {
      arrayOfInt = new int[mSpanCount];
    }
    do
    {
      int i = 0;
      while (i < mSpanCount)
      {
        arrayOfInt[i] = mSpans[i].findLastVisibleItemPosition();
        i += 1;
      }
      arrayOfInt = paramArrayOfInt;
    } while (paramArrayOfInt.length >= mSpanCount);
    throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + mSpanCount + ", array size:" + paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    return new StaggeredGridLayoutManager.LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new StaggeredGridLayoutManager.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new StaggeredGridLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new StaggeredGridLayoutManager.LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 1) {
      return mSpanCount;
    }
    return super.getColumnCountForAccessibility(paramRecycler, paramState);
  }
  
  public int getGapStrategy()
  {
    return mGapStrategy;
  }
  
  public int getOrientation()
  {
    return mOrientation;
  }
  
  public boolean getReverseLayout()
  {
    return mReverseLayout;
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 0) {
      return mSpanCount;
    }
    return super.getRowCountForAccessibility(paramRecycler, paramState);
  }
  
  public int getSpanCount()
  {
    return mSpanCount;
  }
  
  View hasGapsToFix()
  {
    int i = getChildCount() - 1;
    BitSet localBitSet = new BitSet(mSpanCount);
    localBitSet.set(0, mSpanCount, true);
    int j;
    int k;
    if ((mOrientation == 1) && (isLayoutRTL()))
    {
      j = 1;
      if (!mShouldReverseLayout) {
        break label128;
      }
      k = -1;
      label57:
      if (i >= k) {
        break label137;
      }
    }
    int n;
    View localView;
    StaggeredGridLayoutManager.LayoutParams localLayoutParams;
    label128:
    label137:
    for (int m = 1;; m = -1)
    {
      n = i;
      if (n == k) {
        break label343;
      }
      localView = getChildAt(n);
      localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      if (!localBitSet.get(mSpan.mIndex)) {
        break label156;
      }
      if (!checkSpanForGap(mSpan)) {
        break label143;
      }
      return localView;
      j = -1;
      break;
      k = i + 1;
      i = 0;
      break label57;
    }
    label143:
    localBitSet.clear(mSpan.mIndex);
    label156:
    if (mFullSpan) {}
    label275:
    label337:
    label341:
    label343:
    label345:
    label348:
    for (;;)
    {
      n += m;
      break;
      if (n + m != k)
      {
        Object localObject = getChildAt(n + m);
        int i1;
        if (mShouldReverseLayout)
        {
          i = mPrimaryOrientation.getDecoratedEnd(localView);
          i1 = mPrimaryOrientation.getDecoratedEnd((View)localObject);
          if (i < i1) {
            return localView;
          }
          if (i != i1) {
            break label345;
          }
          i = 1;
        }
        for (;;)
        {
          if (i == 0) {
            break label348;
          }
          localObject = (StaggeredGridLayoutManager.LayoutParams)((View)localObject).getLayoutParams();
          if (mSpan.mIndex - mSpan.mIndex < 0)
          {
            i = 1;
            if (j >= 0) {
              break label337;
            }
          }
          for (i1 = 1;; i1 = 0)
          {
            if (i == i1) {
              break label341;
            }
            return localView;
            i = mPrimaryOrientation.getDecoratedStart(localView);
            i1 = mPrimaryOrientation.getDecoratedStart((View)localObject);
            if (i > i1) {
              return localView;
            }
            if (i != i1) {
              break label345;
            }
            i = 1;
            break;
            i = 0;
            break label275;
          }
          break;
          return null;
          i = 0;
        }
      }
    }
  }
  
  public void invalidateSpanAssignments()
  {
    mLazySpanLookup.clear();
    requestLayout();
  }
  
  boolean isLayoutRTL()
  {
    return getLayoutDirection() == 1;
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    super.offsetChildrenHorizontal(paramInt);
    int i = 0;
    while (i < mSpanCount)
    {
      mSpans[i].onOffset(paramInt);
      i += 1;
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    super.offsetChildrenVertical(paramInt);
    int i = 0;
    while (i < mSpanCount)
    {
      mSpans[i].onOffset(paramInt);
      i += 1;
    }
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    removeCallbacks(mCheckForGapsRunnable);
    int i = 0;
    while (i < mSpanCount)
    {
      mSpans[i].clear();
      i += 1;
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      localView1 = findFirstVisibleItemClosestToStart(false, true);
      localView2 = findFirstVisibleItemClosestToEnd(false, true);
      if ((localView1 != null) && (localView2 != null)) {}
    }
    else
    {
      return;
    }
    int i = getPosition(localView1);
    int j = getPosition(localView2);
    if (i < j)
    {
      paramAccessibilityEvent.setFromIndex(i);
      paramAccessibilityEvent.setToIndex(j);
      return;
    }
    paramAccessibilityEvent.setFromIndex(j);
    paramAccessibilityEvent.setToIndex(i);
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    paramRecycler = paramView.getLayoutParams();
    if (!(paramRecycler instanceof StaggeredGridLayoutManager.LayoutParams))
    {
      super.onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramRecycler = (StaggeredGridLayoutManager.LayoutParams)paramRecycler;
    if (mOrientation == 0)
    {
      j = paramRecycler.getSpanIndex();
      if (mFullSpan) {}
      for (i = mSpanCount;; i = 1)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, i, -1, -1, mFullSpan, false));
        return;
      }
    }
    int j = paramRecycler.getSpanIndex();
    if (mFullSpan) {}
    for (int i = mSpanCount;; i = 1)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, j, i, mFullSpan, false));
      return;
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    handleUpdate(paramInt1, paramInt2, 0);
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    mLazySpanLookup.clear();
    requestLayout();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    handleUpdate(paramInt1, paramInt2, 3);
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    handleUpdate(paramInt1, paramInt2, 1);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    handleUpdate(paramInt1, paramInt2, 2);
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    int j = 0;
    ensureOrientationHelper();
    StaggeredGridLayoutManager.AnchorInfo localAnchorInfo = mAnchorInfo;
    localAnchorInfo.reset();
    if (mPendingSavedState != null) {
      applyPendingSavedState(localAnchorInfo);
    }
    for (;;)
    {
      updateAnchorInfoForLayout(paramState, localAnchorInfo);
      if ((mPendingSavedState == null) && ((mLayoutFromEnd != mLastLayoutFromEnd) || (isLayoutRTL() != mLastLayoutRTL)))
      {
        mLazySpanLookup.clear();
        mInvalidateOffsets = true;
      }
      if ((getChildCount() <= 0) || ((mPendingSavedState != null) && (mPendingSavedState.mSpanOffsetsSize >= 1))) {
        break label215;
      }
      if (!mInvalidateOffsets) {
        break;
      }
      i = 0;
      while (i < mSpanCount)
      {
        mSpans[i].clear();
        if (mOffset != Integer.MIN_VALUE) {
          mSpans[i].setLine(mOffset);
        }
        i += 1;
      }
      resolveShouldLayoutReverse();
      mLayoutFromEnd = mShouldReverseLayout;
    }
    int i = 0;
    while (i < mSpanCount)
    {
      mSpans[i].cacheReferenceLineAndClear(mShouldReverseLayout, mOffset);
      i += 1;
    }
    label215:
    detachAndScrapAttachedViews(paramRecycler);
    mLaidOutInvalidFullSpan = false;
    updateMeasureSpecs();
    updateLayoutState(mPosition, paramState);
    if (mLayoutFromEnd)
    {
      setLayoutStateDirection(-1);
      fill(paramRecycler, mLayoutState, paramState);
      setLayoutStateDirection(1);
      mLayoutState.mCurrentPosition = (mPosition + mLayoutState.mItemDirection);
      fill(paramRecycler, mLayoutState, paramState);
      if (getChildCount() > 0)
      {
        if (!mShouldReverseLayout) {
          break label483;
        }
        fixEndGap(paramRecycler, paramState, true);
        fixStartGap(paramRecycler, paramState, false);
      }
    }
    for (;;)
    {
      if (!paramState.isPreLayout())
      {
        i = j;
        if (mGapStrategy != 0)
        {
          i = j;
          if (getChildCount() > 0) {
            if (!mLaidOutInvalidFullSpan)
            {
              i = j;
              if (hasGapsToFix() == null) {}
            }
            else
            {
              i = 1;
            }
          }
        }
        if (i != 0)
        {
          removeCallbacks(mCheckForGapsRunnable);
          postOnAnimation(mCheckForGapsRunnable);
        }
        mPendingScrollPosition = -1;
        mPendingScrollPositionOffset = Integer.MIN_VALUE;
      }
      mLastLayoutFromEnd = mLayoutFromEnd;
      mLastLayoutRTL = isLayoutRTL();
      mPendingSavedState = null;
      return;
      setLayoutStateDirection(1);
      fill(paramRecycler, mLayoutState, paramState);
      setLayoutStateDirection(-1);
      mLayoutState.mCurrentPosition = (mPosition + mLayoutState.mItemDirection);
      fill(paramRecycler, mLayoutState, paramState);
      break;
      label483:
      fixStartGap(paramRecycler, paramState, true);
      fixEndGap(paramRecycler, paramState, false);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof StaggeredGridLayoutManager.SavedState))
    {
      mPendingSavedState = ((StaggeredGridLayoutManager.SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (mPendingSavedState != null) {
      return new StaggeredGridLayoutManager.SavedState(mPendingSavedState);
    }
    StaggeredGridLayoutManager.SavedState localSavedState = new StaggeredGridLayoutManager.SavedState();
    mReverseLayout = mReverseLayout;
    mAnchorLayoutFromEnd = mLastLayoutFromEnd;
    mLastLayoutRTL = mLastLayoutRTL;
    int i;
    label130:
    int j;
    label167:
    int k;
    if ((mLazySpanLookup != null) && (mLazySpanLookup.mData != null))
    {
      mSpanLookup = mLazySpanLookup.mData;
      mSpanLookupSize = mSpanLookup.length;
      mFullSpanItems = mLazySpanLookup.mFullSpanItems;
      if (getChildCount() <= 0) {
        break label277;
      }
      ensureOrientationHelper();
      if (!mLastLayoutFromEnd) {
        break label236;
      }
      i = getLastChildPosition();
      mAnchorPosition = i;
      mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
      mSpanOffsetsSize = mSpanCount;
      mSpanOffsets = new int[mSpanCount];
      j = 0;
      if (j >= mSpanCount) {
        break label295;
      }
      if (!mLastLayoutFromEnd) {
        break label244;
      }
      k = mSpans[j].getEndLine(Integer.MIN_VALUE);
      i = k;
      if (k != Integer.MIN_VALUE) {
        i = k - mPrimaryOrientation.getEndAfterPadding();
      }
    }
    for (;;)
    {
      mSpanOffsets[j] = i;
      j += 1;
      break label167;
      mSpanLookupSize = 0;
      break;
      label236:
      i = getFirstChildPosition();
      break label130;
      label244:
      k = mSpans[j].getStartLine(Integer.MIN_VALUE);
      i = k;
      if (k != Integer.MIN_VALUE) {
        i = k - mPrimaryOrientation.getStartAfterPadding();
      }
    }
    label277:
    mAnchorPosition = -1;
    mVisibleAnchorPosition = -1;
    mSpanOffsetsSize = 0;
    label295:
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt)
  {
    if (paramInt == 0) {
      checkForGaps();
    }
  }
  
  int scrollBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    ensureOrientationHelper();
    int i;
    int j;
    if (paramInt > 0)
    {
      i = 1;
      j = getLastChildPosition();
      updateLayoutState(j, paramState);
      setLayoutStateDirection(i);
      mLayoutState.mCurrentPosition = (j + mLayoutState.mItemDirection);
      j = Math.abs(paramInt);
      mLayoutState.mAvailable = j;
      i = fill(paramRecycler, mLayoutState, paramState);
      if (j >= i) {
        break label112;
      }
    }
    for (;;)
    {
      mPrimaryOrientation.offsetChildren(-paramInt);
      mLastLayoutFromEnd = mShouldReverseLayout;
      return paramInt;
      i = -1;
      j = getFirstChildPosition();
      break;
      label112:
      if (paramInt < 0) {
        paramInt = -i;
      } else {
        paramInt = i;
      }
    }
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return scrollBy(paramInt, paramRecycler, paramState);
  }
  
  public void scrollToPosition(int paramInt)
  {
    if ((mPendingSavedState != null) && (mPendingSavedState.mAnchorPosition != paramInt)) {
      mPendingSavedState.invalidateAnchorPositionInfo();
    }
    mPendingScrollPosition = paramInt;
    mPendingScrollPositionOffset = Integer.MIN_VALUE;
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2)
  {
    if (mPendingSavedState != null) {
      mPendingSavedState.invalidateAnchorPositionInfo();
    }
    mPendingScrollPosition = paramInt1;
    mPendingScrollPositionOffset = paramInt2;
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return scrollBy(paramInt, paramRecycler, paramState);
  }
  
  public void setGapStrategy(int paramInt)
  {
    assertNotInLayoutOrScroll(null);
    if (paramInt == mGapStrategy) {
      return;
    }
    if ((paramInt != 0) && (paramInt != 2)) {
      throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
    }
    mGapStrategy = paramInt;
    requestLayout();
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation.");
    }
    assertNotInLayoutOrScroll(null);
    if (paramInt == mOrientation) {
      return;
    }
    mOrientation = paramInt;
    if ((mPrimaryOrientation != null) && (mSecondaryOrientation != null))
    {
      OrientationHelper localOrientationHelper = mPrimaryOrientation;
      mPrimaryOrientation = mSecondaryOrientation;
      mSecondaryOrientation = localOrientationHelper;
    }
    requestLayout();
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if ((mPendingSavedState != null) && (mPendingSavedState.mReverseLayout != paramBoolean)) {
      mPendingSavedState.mReverseLayout = paramBoolean;
    }
    mReverseLayout = paramBoolean;
    requestLayout();
  }
  
  public void setSpanCount(int paramInt)
  {
    assertNotInLayoutOrScroll(null);
    if (paramInt != mSpanCount)
    {
      invalidateSpanAssignments();
      mSpanCount = paramInt;
      mRemainingSpans = new BitSet(mSpanCount);
      mSpans = new StaggeredGridLayoutManager.Span[mSpanCount];
      paramInt = 0;
      while (paramInt < mSpanCount)
      {
        mSpans[paramInt] = new StaggeredGridLayoutManager.Span(this, paramInt, null);
        paramInt += 1;
      }
      requestLayout();
    }
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
  {
    paramRecyclerView = new StaggeredGridLayoutManager.2(this, paramRecyclerView.getContext());
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return mPendingSavedState == null;
  }
  
  boolean updateAnchorFromPendingData(RecyclerView.State paramState, StaggeredGridLayoutManager.AnchorInfo paramAnchorInfo)
  {
    boolean bool = false;
    if ((paramState.isPreLayout()) || (mPendingScrollPosition == -1)) {
      return false;
    }
    if ((mPendingScrollPosition < 0) || (mPendingScrollPosition >= paramState.getItemCount()))
    {
      mPendingScrollPosition = -1;
      mPendingScrollPositionOffset = Integer.MIN_VALUE;
      return false;
    }
    if ((mPendingSavedState == null) || (mPendingSavedState.mAnchorPosition == -1) || (mPendingSavedState.mSpanOffsetsSize < 1))
    {
      paramState = findViewByPosition(mPendingScrollPosition);
      if (paramState != null)
      {
        if (mShouldReverseLayout) {}
        for (int i = getLastChildPosition();; i = getFirstChildPosition())
        {
          mPosition = i;
          if (mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            break label188;
          }
          if (!mLayoutFromEnd) {
            break;
          }
          mOffset = (mPrimaryOrientation.getEndAfterPadding() - mPendingScrollPositionOffset - mPrimaryOrientation.getDecoratedEnd(paramState));
          return true;
        }
        mOffset = (mPrimaryOrientation.getStartAfterPadding() + mPendingScrollPositionOffset - mPrimaryOrientation.getDecoratedStart(paramState));
        return true;
        label188:
        if (mPrimaryOrientation.getDecoratedMeasurement(paramState) > mPrimaryOrientation.getTotalSpace())
        {
          if (mLayoutFromEnd) {}
          for (i = mPrimaryOrientation.getEndAfterPadding();; i = mPrimaryOrientation.getStartAfterPadding())
          {
            mOffset = i;
            return true;
          }
        }
        i = mPrimaryOrientation.getDecoratedStart(paramState) - mPrimaryOrientation.getStartAfterPadding();
        if (i < 0)
        {
          mOffset = (-i);
          return true;
        }
        i = mPrimaryOrientation.getEndAfterPadding() - mPrimaryOrientation.getDecoratedEnd(paramState);
        if (i < 0)
        {
          mOffset = i;
          return true;
        }
        mOffset = Integer.MIN_VALUE;
        return true;
      }
      mPosition = mPendingScrollPosition;
      if (mPendingScrollPositionOffset == Integer.MIN_VALUE)
      {
        if (calculateScrollDirectionForPosition(mPosition) == 1) {
          bool = true;
        }
        mLayoutFromEnd = bool;
        paramAnchorInfo.assignCoordinateFromPadding();
      }
      for (;;)
      {
        mInvalidateOffsets = true;
        return true;
        paramAnchorInfo.assignCoordinateFromPadding(mPendingScrollPositionOffset);
      }
    }
    mOffset = Integer.MIN_VALUE;
    mPosition = mPendingScrollPosition;
    return true;
  }
  
  void updateAnchorInfoForLayout(RecyclerView.State paramState, StaggeredGridLayoutManager.AnchorInfo paramAnchorInfo)
  {
    if (updateAnchorFromPendingData(paramState, paramAnchorInfo)) {}
    while (updateAnchorFromChildren(paramState, paramAnchorInfo)) {
      return;
    }
    paramAnchorInfo.assignCoordinateFromPadding();
    mPosition = 0;
  }
  
  void updateMeasureSpecs()
  {
    mSizePerSpan = (mSecondaryOrientation.getTotalSpace() / mSpanCount);
    mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(mSecondaryOrientation.getTotalSpace(), 1073741824);
    if (mOrientation == 1)
    {
      mWidthSpec = View.MeasureSpec.makeMeasureSpec(mSizePerSpan, 1073741824);
      mHeightSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
      return;
    }
    mHeightSpec = View.MeasureSpec.makeMeasureSpec(mSizePerSpan, 1073741824);
    mWidthSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */