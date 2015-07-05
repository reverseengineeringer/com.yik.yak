package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements ScrollingView
{
  private static final boolean DEBUG = false;
  private static final boolean DISPATCH_TEMP_DETACH = false;
  private static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
  public static final int HORIZONTAL = 0;
  private static final int INVALID_POINTER = -1;
  public static final int INVALID_TYPE = -1;
  private static final int MAX_SCROLL_DURATION = 2000;
  public static final long NO_ID = -1L;
  public static final int NO_POSITION = -1;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "RecyclerView";
  public static final int TOUCH_SLOP_DEFAULT = 0;
  public static final int TOUCH_SLOP_PAGING = 1;
  private static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
  private static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
  private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
  private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
  private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
  private static final String TRACE_SCROLL_TAG = "RV Scroll";
  public static final int VERTICAL = 1;
  private static final Interpolator sQuinticInterpolator;
  private RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
  private final AccessibilityManager mAccessibilityManager;
  private RecyclerView.OnItemTouchListener mActiveOnItemTouchListener;
  private RecyclerView.Adapter mAdapter;
  AdapterHelper mAdapterHelper;
  private boolean mAdapterUpdateDuringMeasure;
  private EdgeEffectCompat mBottomGlow;
  ChildHelper mChildHelper;
  private boolean mClipToPadding;
  private boolean mDataSetHasChangedAfterLayout = false;
  private boolean mEatRequestLayout;
  private int mEatenAccessibilityChangeFlags;
  private boolean mFirstLayoutComplete;
  private boolean mHasFixedSize;
  private int mInitialTouchX;
  private int mInitialTouchY;
  private boolean mIsAttached;
  RecyclerView.ItemAnimator mItemAnimator = new DefaultItemAnimator();
  private RecyclerView.ItemAnimator.ItemAnimatorListener mItemAnimatorListener = new RecyclerView.ItemAnimatorRestoreListener(this, null);
  private Runnable mItemAnimatorRunner = new RecyclerView.2(this);
  private final ArrayList<RecyclerView.ItemDecoration> mItemDecorations = new ArrayList();
  boolean mItemsAddedOrRemoved = false;
  boolean mItemsChanged = false;
  private int mLastTouchX;
  private int mLastTouchY;
  private RecyclerView.LayoutManager mLayout;
  private int mLayoutOrScrollCounter = 0;
  private boolean mLayoutRequestEaten;
  private EdgeEffectCompat mLeftGlow;
  private final int mMaxFlingVelocity;
  private final int mMinFlingVelocity;
  private final int[] mMinMaxLayoutPositions = new int[2];
  private final RecyclerView.RecyclerViewDataObserver mObserver = new RecyclerView.RecyclerViewDataObserver(this, null);
  private final ArrayList<RecyclerView.OnItemTouchListener> mOnItemTouchListeners = new ArrayList();
  private RecyclerView.SavedState mPendingSavedState;
  private final boolean mPostUpdatesOnAnimation;
  private boolean mPostedAnimatorRunner = false;
  final RecyclerView.Recycler mRecycler = new RecyclerView.Recycler(this);
  private RecyclerView.RecyclerListener mRecyclerListener;
  private EdgeEffectCompat mRightGlow;
  private float mScrollFactor = Float.MIN_VALUE;
  private RecyclerView.OnScrollListener mScrollListener;
  private List<RecyclerView.OnScrollListener> mScrollListeners;
  private int mScrollPointerId = -1;
  private int mScrollState = 0;
  final RecyclerView.State mState = new RecyclerView.State();
  private final Rect mTempRect = new Rect();
  private EdgeEffectCompat mTopGlow;
  private int mTouchSlop;
  private final Runnable mUpdateChildViewsRunnable = new RecyclerView.1(this);
  private VelocityTracker mVelocityTracker;
  private final RecyclerView.ViewFlinger mViewFlinger = new RecyclerView.ViewFlinger(this);
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      FORCE_INVALIDATE_DISPLAY_LIST = bool;
      sQuinticInterpolator = new RecyclerView.3();
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusableInTouchMode(true);
    if (Build.VERSION.SDK_INT >= 16) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      mPostUpdatesOnAnimation = bool1;
      paramContext = ViewConfiguration.get(paramContext);
      mTouchSlop = paramContext.getScaledTouchSlop();
      mMinFlingVelocity = paramContext.getScaledMinimumFlingVelocity();
      mMaxFlingVelocity = paramContext.getScaledMaximumFlingVelocity();
      bool1 = bool2;
      if (ViewCompat.getOverScrollMode(this) == 2) {
        bool1 = true;
      }
      setWillNotDraw(bool1);
      mItemAnimator.setListener(mItemAnimatorListener);
      initAdapterManager();
      initChildrenHelper();
      if (ViewCompat.getImportantForAccessibility(this) == 0) {
        ViewCompat.setImportantForAccessibility(this, 1);
      }
      mAccessibilityManager = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
      return;
    }
  }
  
  private void addAnimatingView(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = itemView;
    if (localView.getParent() == this) {}
    for (int i = 1;; i = 0)
    {
      mRecycler.unscrapView(getChildViewHolder(localView));
      if (!paramViewHolder.isTmpDetached()) {
        break;
      }
      mChildHelper.attachViewToParent(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i == 0)
    {
      mChildHelper.addView(localView, true);
      return;
    }
    mChildHelper.hide(localView);
  }
  
  private void animateAppearance(RecyclerView.ViewHolder paramViewHolder, Rect paramRect, int paramInt1, int paramInt2)
  {
    if ((paramRect != null) && ((left != paramInt1) || (top != paramInt2)))
    {
      paramViewHolder.setIsRecyclable(false);
      if (mItemAnimator.animateMove(paramViewHolder, left, top, paramInt1, paramInt2)) {
        postAnimationRunner();
      }
    }
    do
    {
      return;
      paramViewHolder.setIsRecyclable(false);
    } while (!mItemAnimator.animateAdd(paramViewHolder));
    postAnimationRunner();
  }
  
  private void animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
  {
    paramViewHolder1.setIsRecyclable(false);
    addAnimatingView(paramViewHolder1);
    mShadowedHolder = paramViewHolder2;
    mRecycler.unscrapView(paramViewHolder1);
    int k = itemView.getLeft();
    int m = itemView.getTop();
    int j;
    int i;
    if ((paramViewHolder2 == null) || (paramViewHolder2.shouldIgnore()))
    {
      j = m;
      i = k;
    }
    for (;;)
    {
      if (mItemAnimator.animateChange(paramViewHolder1, paramViewHolder2, k, m, i, j)) {
        postAnimationRunner();
      }
      return;
      i = itemView.getLeft();
      j = itemView.getTop();
      paramViewHolder2.setIsRecyclable(false);
      mShadowingHolder = paramViewHolder1;
    }
  }
  
  private void animateDisappearance(RecyclerView.ItemHolderInfo paramItemHolderInfo)
  {
    View localView = holder.itemView;
    addAnimatingView(holder);
    int i = left;
    int j = top;
    int k = localView.getLeft();
    int m = localView.getTop();
    if ((i != k) || (j != m))
    {
      holder.setIsRecyclable(false);
      localView.layout(k, m, localView.getWidth() + k, localView.getHeight() + m);
      if (mItemAnimator.animateMove(holder, i, j, k, m)) {
        postAnimationRunner();
      }
    }
    do
    {
      return;
      holder.setIsRecyclable(false);
    } while (!mItemAnimator.animateRemove(holder));
    postAnimationRunner();
  }
  
  private void cancelTouch()
  {
    if (mVelocityTracker != null) {
      mVelocityTracker.clear();
    }
    releaseGlows();
    setScrollState(0);
  }
  
  private void considerReleasingGlowsOnScroll(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (mLeftGlow != null)
    {
      bool1 = bool2;
      if (!mLeftGlow.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = mLeftGlow.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (mRightGlow != null)
    {
      bool2 = bool1;
      if (!mRightGlow.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | mRightGlow.onRelease();
        }
      }
    }
    bool1 = bool2;
    if (mTopGlow != null)
    {
      bool1 = bool2;
      if (!mTopGlow.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | mTopGlow.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (mBottomGlow != null)
    {
      bool2 = bool1;
      if (!mBottomGlow.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | mBottomGlow.onRelease();
        }
      }
    }
    if (bool2) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private void consumePendingUpdateOperations()
  {
    mUpdateChildViewsRunnable.run();
  }
  
  private void defaultOnMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (j)
    {
    default: 
      paramInt1 = ViewCompat.getMinimumWidth(this);
    }
    switch (i)
    {
    default: 
      paramInt2 = ViewCompat.getMinimumHeight(this);
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  private boolean didChildRangeChange(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int j = mChildHelper.getChildCount();
    boolean bool1;
    if (j == 0) {
      if (paramInt1 == 0)
      {
        bool1 = bool2;
        if (paramInt2 == 0) {}
      }
      else
      {
        bool1 = true;
      }
    }
    int i;
    do
    {
      return bool1;
      i = 0;
      bool1 = bool2;
    } while (i >= j);
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
    if (localViewHolder.shouldIgnore()) {}
    int k;
    do
    {
      i += 1;
      break;
      k = localViewHolder.getLayoutPosition();
    } while ((k >= paramInt1) && (k <= paramInt2));
    return true;
  }
  
  private void dispatchChildAttached(View paramView)
  {
    if (mAdapter != null) {
      mAdapter.onViewAttachedToWindow(getChildViewHolderInt(paramView));
    }
    onChildAttachedToWindow(paramView);
  }
  
  private void dispatchChildDetached(View paramView)
  {
    if (mAdapter != null) {
      mAdapter.onViewDetachedFromWindow(getChildViewHolderInt(paramView));
    }
    onChildDetachedFromWindow(paramView);
  }
  
  private void dispatchContentChangedIfNecessary()
  {
    int i = mEatenAccessibilityChangeFlags;
    mEatenAccessibilityChangeFlags = 0;
    if ((i != 0) && (mAccessibilityManager != null) && (mAccessibilityManager.isEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      AccessibilityEventCompat.setContentChangeTypes(localAccessibilityEvent, i);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private boolean dispatchOnItemTouch(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j;
    if (mActiveOnItemTouchListener != null)
    {
      if (i == 0) {
        mActiveOnItemTouchListener = null;
      }
    }
    else
    {
      if (i == 0) {
        break label108;
      }
      j = mOnItemTouchListeners.size();
      i = 0;
    }
    while (i < j)
    {
      RecyclerView.OnItemTouchListener localOnItemTouchListener = (RecyclerView.OnItemTouchListener)mOnItemTouchListeners.get(i);
      if (localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
        mActiveOnItemTouchListener.onTouchEvent(this, paramMotionEvent);
        if ((i == 3) || (i == 1)) {
          mActiveOnItemTouchListener = null;
        }
        return true;
      }
      i += 1;
    }
    label108:
    return false;
  }
  
  private boolean dispatchOnItemTouchIntercept(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((j == 3) || (j == 0)) {
      mActiveOnItemTouchListener = null;
    }
    int k = mOnItemTouchListeners.size();
    int i = 0;
    while (i < k)
    {
      RecyclerView.OnItemTouchListener localOnItemTouchListener = (RecyclerView.OnItemTouchListener)mOnItemTouchListeners.get(i);
      if ((localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent)) && (j != 3))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void findMinMaxChildLayoutPositions(int[] paramArrayOfInt)
  {
    int i1 = mChildHelper.getChildCount();
    if (i1 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i = Integer.MAX_VALUE;
    int m = Integer.MIN_VALUE;
    int k = 0;
    RecyclerView.ViewHolder localViewHolder;
    if (k < i1)
    {
      localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(k));
      if (!localViewHolder.shouldIgnore()) {}
    }
    for (;;)
    {
      k += 1;
      break;
      int n = localViewHolder.getLayoutPosition();
      int j = i;
      if (n < i) {
        j = n;
      }
      if (n > m)
      {
        m = n;
        i = j;
        continue;
        paramArrayOfInt[0] = i;
        paramArrayOfInt[1] = m;
      }
      else
      {
        i = j;
      }
    }
  }
  
  private int getAdapterPositionFor(RecyclerView.ViewHolder paramViewHolder)
  {
    if ((paramViewHolder.hasAnyOfTheFlags(524)) || (!paramViewHolder.isBound())) {
      return -1;
    }
    return mAdapterHelper.applyPendingUpdatesToPosition(mPosition);
  }
  
  static RecyclerView.ViewHolder getChildViewHolderInt(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsmViewHolder;
  }
  
  private float getScrollFactor()
  {
    if (mScrollFactor == Float.MIN_VALUE)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        mScrollFactor = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return mScrollFactor;
    }
    return 0.0F;
  }
  
  private void initChildrenHelper()
  {
    mChildHelper = new ChildHelper(new RecyclerView.4(this));
  }
  
  private void onEnterLayoutOrScroll()
  {
    mLayoutOrScrollCounter += 1;
  }
  
  private void onExitLayoutOrScroll()
  {
    mLayoutOrScrollCounter -= 1;
    if (mLayoutOrScrollCounter < 1)
    {
      mLayoutOrScrollCounter = 0;
      dispatchContentChangedIfNecessary();
    }
  }
  
  private void onPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == mScrollPointerId) {
      if (i != 0) {
        break label75;
      }
    }
    label75:
    for (i = 1;; i = 0)
    {
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      int j = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      return;
    }
  }
  
  private void postAnimationRunner()
  {
    if ((!mPostedAnimatorRunner) && (mIsAttached))
    {
      ViewCompat.postOnAnimation(this, mItemAnimatorRunner);
      mPostedAnimatorRunner = true;
    }
  }
  
  private boolean predictiveItemAnimationsEnabled()
  {
    return (mItemAnimator != null) && (mLayout.supportsPredictiveItemAnimations());
  }
  
  private void processAdapterUpdatesAndSetAnimationFlags()
  {
    boolean bool2 = true;
    if (mDataSetHasChangedAfterLayout)
    {
      mAdapterHelper.reset();
      markKnownViewsInvalid();
      mLayout.onItemsChanged(this);
    }
    int i;
    label89:
    RecyclerView.State localState;
    if ((mItemAnimator != null) && (mLayout.supportsPredictiveItemAnimations()))
    {
      mAdapterHelper.preProcess();
      if (((!mItemsAddedOrRemoved) || (mItemsChanged)) && (!mItemsAddedOrRemoved) && ((!mItemsChanged) || (!supportsChangeAnimations()))) {
        break label210;
      }
      i = 1;
      localState = mState;
      if ((!mFirstLayoutComplete) || (mItemAnimator == null) || ((!mDataSetHasChangedAfterLayout) && (i == 0) && (!RecyclerView.LayoutManager.access$1700(mLayout))) || ((mDataSetHasChangedAfterLayout) && (!mAdapter.hasStableIds()))) {
        break label215;
      }
      bool1 = true;
      label149:
      RecyclerView.State.access$1602(localState, bool1);
      localState = mState;
      if ((!RecyclerView.State.access$1600(mState)) || (i == 0) || (mDataSetHasChangedAfterLayout) || (!predictiveItemAnimationsEnabled())) {
        break label220;
      }
    }
    label210:
    label215:
    label220:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      RecyclerView.State.access$1402(localState, bool1);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      break;
      i = 0;
      break label89;
      bool1 = false;
      break label149;
    }
  }
  
  private void processDisappearingList(ArrayMap<View, Rect> paramArrayMap)
  {
    List localList = mState.mDisappearingViewsInLayoutPass;
    int i = localList.size() - 1;
    if (i >= 0)
    {
      View localView = (View)localList.get(i);
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(localView);
      RecyclerView.ItemHolderInfo localItemHolderInfo = (RecyclerView.ItemHolderInfo)mState.mPreLayoutHolderMap.remove(localViewHolder);
      if (!mState.isPreLayout()) {
        mState.mPostLayoutHolderMap.remove(localViewHolder);
      }
      if (paramArrayMap.remove(localView) != null) {
        mLayout.removeAndRecycleView(localView, mRecycler);
      }
      for (;;)
      {
        i -= 1;
        break;
        if (localItemHolderInfo != null) {
          animateDisappearance(localItemHolderInfo);
        } else {
          animateDisappearance(new RecyclerView.ItemHolderInfo(localViewHolder, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
        }
      }
    }
    localList.clear();
  }
  
  private void pullGlows(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    if (paramInt2 < 0)
    {
      ensureLeftGlow();
      if (!mLeftGlow.onPull(-paramInt2 / getWidth(), 1.0F - paramInt3 / getHeight())) {
        paramInt3 = 0;
      }
    }
    for (;;)
    {
      if (paramInt4 < 0)
      {
        ensureTopGlow();
        if (!mTopGlow.onPull(-paramInt4 / getHeight(), paramInt1 / getWidth()))
        {
          paramInt1 = i;
          if (paramInt3 == 0) {}
        }
        else
        {
          paramInt1 = 1;
        }
      }
      for (;;)
      {
        if ((paramInt1 != 0) || (paramInt2 != 0) || (paramInt4 != 0)) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        return;
        paramInt3 = 1;
        break;
        if (paramInt2 <= 0) {
          break label210;
        }
        ensureRightGlow();
        if (!mRightGlow.onPull(paramInt2 / getWidth(), paramInt3 / getHeight()))
        {
          paramInt3 = 0;
          break;
        }
        paramInt3 = 1;
        break;
        if (paramInt4 > 0)
        {
          ensureBottomGlow();
          if (!mBottomGlow.onPull(paramInt4 / getHeight(), 1.0F - paramInt1 / getWidth()))
          {
            paramInt1 = i;
            if (paramInt3 == 0) {}
          }
          else
          {
            paramInt1 = 1;
          }
        }
        else
        {
          paramInt1 = paramInt3;
        }
      }
      label210:
      paramInt3 = 0;
    }
  }
  
  private void releaseGlows()
  {
    boolean bool2 = false;
    if (mLeftGlow != null) {
      bool2 = mLeftGlow.onRelease();
    }
    boolean bool1 = bool2;
    if (mTopGlow != null) {
      bool1 = bool2 | mTopGlow.onRelease();
    }
    bool2 = bool1;
    if (mRightGlow != null) {
      bool2 = bool1 | mRightGlow.onRelease();
    }
    bool1 = bool2;
    if (mBottomGlow != null) {
      bool1 = bool2 | mBottomGlow.onRelease();
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private boolean removeAnimatingView(View paramView)
  {
    eatRequestLayout();
    boolean bool = mChildHelper.removeViewIfHidden(paramView);
    if (bool)
    {
      paramView = getChildViewHolderInt(paramView);
      mRecycler.unscrapView(paramView);
      mRecycler.recycleViewHolderInternal(paramView);
    }
    resumeRequestLayout(false);
    return bool;
  }
  
  private void setAdapterInternal(RecyclerView.Adapter paramAdapter, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mAdapter != null)
    {
      mAdapter.unregisterAdapterDataObserver(mObserver);
      mAdapter.onDetachedFromRecyclerView(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (mItemAnimator != null) {
        mItemAnimator.endAnimations();
      }
      if (mLayout != null)
      {
        mLayout.removeAndRecycleAllViews(mRecycler);
        mLayout.removeAndRecycleScrapInt(mRecycler);
      }
      mRecycler.clear();
    }
    mAdapterHelper.reset();
    RecyclerView.Adapter localAdapter = mAdapter;
    mAdapter = paramAdapter;
    if (paramAdapter != null)
    {
      paramAdapter.registerAdapterDataObserver(mObserver);
      paramAdapter.onAttachedToRecyclerView(this);
    }
    if (mLayout != null) {
      mLayout.onAdapterChanged(localAdapter, mAdapter);
    }
    mRecycler.onAdapterChanged(localAdapter, mAdapter, paramBoolean1);
    RecyclerView.State.access$1202(mState, true);
    markKnownViewsInvalid();
  }
  
  private void setDataSetChangedAfterLayout()
  {
    if (mDataSetHasChangedAfterLayout) {
      return;
    }
    mDataSetHasChangedAfterLayout = true;
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(512);
      }
      i += 1;
    }
    mRecycler.setAdapterPositionsAsUnknown();
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == mScrollState) {
      return;
    }
    mScrollState = paramInt;
    if (paramInt != 2) {
      stopScrollersInternal();
    }
    dispatchOnScrollStateChanged(paramInt);
  }
  
  private void stopScrollersInternal()
  {
    mViewFlinger.stop();
    if (mLayout != null) {
      mLayout.stopSmoothScroller();
    }
  }
  
  private boolean supportsChangeAnimations()
  {
    return (mItemAnimator != null) && (mItemAnimator.getSupportsChangeAnimations());
  }
  
  void absorbGlows(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ensureLeftGlow();
      mLeftGlow.onAbsorb(-paramInt1);
      if (paramInt2 >= 0) {
        break label69;
      }
      ensureTopGlow();
      mTopGlow.onAbsorb(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      ensureRightGlow();
      mRightGlow.onAbsorb(paramInt1);
      break;
      label69:
      if (paramInt2 > 0)
      {
        ensureBottomGlow();
        mBottomGlow.onAbsorb(paramInt2);
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((mLayout == null) || (!mLayout.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  public void addItemDecoration(RecyclerView.ItemDecoration paramItemDecoration)
  {
    addItemDecoration(paramItemDecoration, -1);
  }
  
  public void addItemDecoration(RecyclerView.ItemDecoration paramItemDecoration, int paramInt)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
    }
    if (mItemDecorations.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      mItemDecorations.add(paramItemDecoration);
    }
    for (;;)
    {
      markItemDecorInsetsDirty();
      requestLayout();
      return;
      mItemDecorations.add(paramInt, paramItemDecoration);
    }
  }
  
  public void addOnItemTouchListener(RecyclerView.OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.add(paramOnItemTouchListener);
  }
  
  public void addOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners == null) {
      mScrollListeners = new ArrayList();
    }
    mScrollListeners.add(paramOnScrollListener);
  }
  
  void assertInLayoutOrScroll(String paramString)
  {
    if (!isRunningLayoutOrScroll())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void assertNotInLayoutOrScroll(String paramString)
  {
    if (isRunningLayoutOrScroll())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof RecyclerView.LayoutParams)) && (mLayout.checkLayoutParams((RecyclerView.LayoutParams)paramLayoutParams));
  }
  
  void clearOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.clearOldPosition();
      }
      i += 1;
    }
    mRecycler.clearOldPositions();
  }
  
  public void clearOnScrollListeners()
  {
    if (mScrollListeners != null) {
      mScrollListeners.clear();
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollExtent(mState);
    }
    return 0;
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollOffset(mState);
    }
    return 0;
  }
  
  public int computeHorizontalScrollRange()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollRange(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollExtent()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollExtent(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollOffset()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollOffset(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollRange()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollRange(mState);
    }
    return 0;
  }
  
  void dispatchLayout()
  {
    if (mAdapter == null) {
      break label7;
    }
    label7:
    while (mLayout == null) {
      return;
    }
    mState.mDisappearingViewsInLayoutPass.clear();
    eatRequestLayout();
    onEnterLayoutOrScroll();
    processAdapterUpdatesAndSetAnimationFlags();
    Object localObject2 = mState;
    Object localObject1;
    int j;
    int i;
    if ((RecyclerView.State.access$1600(mState)) && (mItemsChanged) && (supportsChangeAnimations()))
    {
      localObject1 = new ArrayMap();
      mOldChangedHolders = ((ArrayMap)localObject1);
      mItemsChanged = false;
      mItemsAddedOrRemoved = false;
      RecyclerView.State.access$1502(mState, RecyclerView.State.access$1400(mState));
      mState.mItemCount = mAdapter.getItemCount();
      findMinMaxChildLayoutPositions(mMinMaxLayoutPositions);
      if (!RecyclerView.State.access$1600(mState)) {
        break label281;
      }
      mState.mPreLayoutHolderMap.clear();
      mState.mPostLayoutHolderMap.clear();
      j = mChildHelper.getChildCount();
      i = 0;
      label172:
      if (i >= j) {
        break label281;
      }
      localObject1 = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if ((!((RecyclerView.ViewHolder)localObject1).shouldIgnore()) && ((!((RecyclerView.ViewHolder)localObject1).isInvalid()) || (mAdapter.hasStableIds()))) {
        break label229;
      }
    }
    for (;;)
    {
      i += 1;
      break label172;
      localObject1 = null;
      break;
      label229:
      localObject2 = itemView;
      mState.mPreLayoutHolderMap.put(localObject1, new RecyclerView.ItemHolderInfo((RecyclerView.ViewHolder)localObject1, ((View)localObject2).getLeft(), ((View)localObject2).getTop(), ((View)localObject2).getRight(), ((View)localObject2).getBottom()));
    }
    label281:
    long l;
    boolean bool;
    if (RecyclerView.State.access$1400(mState))
    {
      saveOldPositions();
      if (mState.mOldChangedHolders != null)
      {
        j = mChildHelper.getChildCount();
        i = 0;
        while (i < j)
        {
          localObject1 = getChildViewHolderInt(mChildHelper.getChildAt(i));
          if ((((RecyclerView.ViewHolder)localObject1).isChanged()) && (!((RecyclerView.ViewHolder)localObject1).isRemoved()) && (!((RecyclerView.ViewHolder)localObject1).shouldIgnore()))
          {
            l = getChangedHolderKey((RecyclerView.ViewHolder)localObject1);
            mState.mOldChangedHolders.put(Long.valueOf(l), localObject1);
            mState.mPreLayoutHolderMap.remove(localObject1);
          }
          i += 1;
        }
      }
      bool = RecyclerView.State.access$1200(mState);
      RecyclerView.State.access$1202(mState, false);
      mLayout.onLayoutChildren(mRecycler, mState);
      RecyclerView.State.access$1202(mState, bool);
      localObject2 = new ArrayMap();
      i = 0;
      label455:
      if (i < mChildHelper.getChildCount())
      {
        localObject1 = mChildHelper.getChildAt(i);
        if (!getChildViewHolderInt((View)localObject1).shouldIgnore()) {}
      }
    }
    label487:
    label496:
    label718:
    label728:
    label884:
    label890:
    label986:
    label1233:
    label1416:
    label1477:
    label1523:
    label1644:
    label1653:
    for (;;)
    {
      i += 1;
      break label455;
      j = 0;
      if (j < mState.mPreLayoutHolderMap.size()) {
        if (mState.mPreLayoutHolderMap.keyAt(j)).itemView != localObject1) {}
      }
      for (j = 1;; j = 0)
      {
        if (j != 0) {
          break label1653;
        }
        ((ArrayMap)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
        break label487;
        j += 1;
        break label496;
        clearOldPositions();
        mAdapterHelper.consumePostponedUpdates();
        for (;;)
        {
          mState.mItemCount = mAdapter.getItemCount();
          RecyclerView.State.access$1002(mState, 0);
          RecyclerView.State.access$1502(mState, false);
          mLayout.onLayoutChildren(mRecycler, mState);
          RecyclerView.State.access$1202(mState, false);
          mPendingSavedState = null;
          localObject1 = mState;
          Object localObject3;
          if ((RecyclerView.State.access$1600(mState)) && (mItemAnimator != null))
          {
            bool = true;
            RecyclerView.State.access$1602((RecyclerView.State)localObject1, bool);
            if (!RecyclerView.State.access$1600(mState)) {
              break label1523;
            }
            if (mState.mOldChangedHolders == null) {
              break label884;
            }
            localObject1 = new ArrayMap();
            j = mChildHelper.getChildCount();
            i = 0;
            if (i >= j) {
              break label986;
            }
            localObject3 = getChildViewHolderInt(mChildHelper.getChildAt(i));
            if (!((RecyclerView.ViewHolder)localObject3).shouldIgnore()) {
              break label890;
            }
          }
          Object localObject4;
          for (;;)
          {
            i += 1;
            break label728;
            clearOldPositions();
            mAdapterHelper.consumeUpdatesInOnePass();
            if (mState.mOldChangedHolders == null) {
              break label1644;
            }
            j = mChildHelper.getChildCount();
            i = 0;
            while (i < j)
            {
              localObject1 = getChildViewHolderInt(mChildHelper.getChildAt(i));
              if ((((RecyclerView.ViewHolder)localObject1).isChanged()) && (!((RecyclerView.ViewHolder)localObject1).isRemoved()) && (!((RecyclerView.ViewHolder)localObject1).shouldIgnore()))
              {
                l = getChangedHolderKey((RecyclerView.ViewHolder)localObject1);
                mState.mOldChangedHolders.put(Long.valueOf(l), localObject1);
                mState.mPreLayoutHolderMap.remove(localObject1);
              }
              i += 1;
            }
            bool = false;
            break;
            localObject1 = null;
            break label718;
            localObject4 = itemView;
            l = getChangedHolderKey((RecyclerView.ViewHolder)localObject3);
            if ((localObject1 != null) && (mState.mOldChangedHolders.get(Long.valueOf(l)) != null)) {
              ((ArrayMap)localObject1).put(Long.valueOf(l), localObject3);
            } else {
              mState.mPostLayoutHolderMap.put(localObject3, new RecyclerView.ItemHolderInfo((RecyclerView.ViewHolder)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
            }
          }
          processDisappearingList((ArrayMap)localObject2);
          i = mState.mPreLayoutHolderMap.size() - 1;
          while (i >= 0)
          {
            localObject3 = (RecyclerView.ViewHolder)mState.mPreLayoutHolderMap.keyAt(i);
            if (!mState.mPostLayoutHolderMap.containsKey(localObject3))
            {
              localObject3 = (RecyclerView.ItemHolderInfo)mState.mPreLayoutHolderMap.valueAt(i);
              mState.mPreLayoutHolderMap.removeAt(i);
              mRecycler.unscrapView(holder);
              animateDisappearance((RecyclerView.ItemHolderInfo)localObject3);
            }
            i -= 1;
          }
          i = mState.mPostLayoutHolderMap.size();
          if (i > 0)
          {
            i -= 1;
            if (i >= 0)
            {
              localObject4 = (RecyclerView.ViewHolder)mState.mPostLayoutHolderMap.keyAt(i);
              RecyclerView.ItemHolderInfo localItemHolderInfo = (RecyclerView.ItemHolderInfo)mState.mPostLayoutHolderMap.valueAt(i);
              if ((mState.mPreLayoutHolderMap.isEmpty()) || (!mState.mPreLayoutHolderMap.containsKey(localObject4)))
              {
                mState.mPostLayoutHolderMap.removeAt(i);
                if (localObject2 == null) {
                  break label1233;
                }
              }
              for (localObject3 = (Rect)((ArrayMap)localObject2).get(itemView);; localObject3 = null)
              {
                animateAppearance((RecyclerView.ViewHolder)localObject4, (Rect)localObject3, left, top);
                i -= 1;
                break;
              }
            }
          }
          j = mState.mPostLayoutHolderMap.size();
          i = 0;
          while (i < j)
          {
            localObject2 = (RecyclerView.ViewHolder)mState.mPostLayoutHolderMap.keyAt(i);
            localObject3 = (RecyclerView.ItemHolderInfo)mState.mPostLayoutHolderMap.valueAt(i);
            localObject4 = (RecyclerView.ItemHolderInfo)mState.mPreLayoutHolderMap.get(localObject2);
            if ((localObject4 != null) && (localObject3 != null) && ((left != left) || (top != top)))
            {
              ((RecyclerView.ViewHolder)localObject2).setIsRecyclable(false);
              if (mItemAnimator.animateMove((RecyclerView.ViewHolder)localObject2, left, top, left, top)) {
                postAnimationRunner();
              }
            }
            i += 1;
          }
          if (mState.mOldChangedHolders != null)
          {
            i = mState.mOldChangedHolders.size();
            i -= 1;
            if (i < 0) {
              break label1523;
            }
            l = ((Long)mState.mOldChangedHolders.keyAt(i)).longValue();
            localObject2 = (RecyclerView.ViewHolder)mState.mOldChangedHolders.get(Long.valueOf(l));
            if (!((RecyclerView.ViewHolder)localObject2).shouldIgnore()) {
              break label1477;
            }
          }
          for (;;)
          {
            i -= 1;
            break label1416;
            i = 0;
            break;
            if ((RecyclerView.Recycler.access$1800(mRecycler) != null) && (RecyclerView.Recycler.access$1800(mRecycler).contains(localObject2))) {
              animateChange((RecyclerView.ViewHolder)localObject2, (RecyclerView.ViewHolder)((ArrayMap)localObject1).get(Long.valueOf(l)));
            }
          }
          resumeRequestLayout(false);
          mLayout.removeAndRecycleScrapInt(mRecycler);
          RecyclerView.State.access$1902(mState, mState.mItemCount);
          mDataSetHasChangedAfterLayout = false;
          RecyclerView.State.access$1602(mState, false);
          RecyclerView.State.access$1402(mState, false);
          onExitLayoutOrScroll();
          RecyclerView.LayoutManager.access$1702(mLayout, false);
          if (RecyclerView.Recycler.access$1800(mRecycler) != null) {
            RecyclerView.Recycler.access$1800(mRecycler).clear();
          }
          mState.mOldChangedHolders = null;
          if (!didChildRangeChange(mMinMaxLayoutPositions[0], mMinMaxLayoutPositions[1])) {
            break;
          }
          dispatchOnScrolled(0, 0);
          return;
          localObject2 = null;
        }
      }
    }
  }
  
  void dispatchOnScrollStateChanged(int paramInt)
  {
    if (mLayout != null) {
      mLayout.onScrollStateChanged(paramInt);
    }
    onScrollStateChanged(paramInt);
    if (mScrollListener != null) {
      mScrollListener.onScrollStateChanged(this, paramInt);
    }
    if (mScrollListeners != null)
    {
      int i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnScrollListener)mScrollListeners.get(i)).onScrollStateChanged(this, paramInt);
        i -= 1;
      }
    }
  }
  
  void dispatchOnScrolled(int paramInt1, int paramInt2)
  {
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i, j);
    onScrolled(paramInt1, paramInt2);
    if (mScrollListener != null) {
      mScrollListener.onScrolled(this, paramInt1, paramInt2);
    }
    if (mScrollListeners != null)
    {
      i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnScrollListener)mScrollListeners.get(i)).onScrolled(this, paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int k = 1;
    int m = 0;
    super.draw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).onDrawOver(paramCanvas, this, mState);
      i += 1;
    }
    int n;
    if ((mLeftGlow != null) && (!mLeftGlow.isFinished()))
    {
      n = paramCanvas.save();
      if (mClipToPadding)
      {
        i = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i + -getHeight(), 0.0F);
        if ((mLeftGlow == null) || (!mLeftGlow.draw(paramCanvas))) {
          break label456;
        }
        j = 1;
        label128:
        paramCanvas.restoreToCount(n);
      }
    }
    for (;;)
    {
      i = j;
      if (mTopGlow != null)
      {
        i = j;
        if (!mTopGlow.isFinished())
        {
          n = paramCanvas.save();
          if (mClipToPadding) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((mTopGlow == null) || (!mTopGlow.draw(paramCanvas))) {
            break label461;
          }
          i = 1;
          label202:
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      j = i;
      if (mRightGlow != null)
      {
        j = i;
        if (!mRightGlow.isFinished())
        {
          n = paramCanvas.save();
          int i1 = getWidth();
          if (!mClipToPadding) {
            break label466;
          }
          j = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-j, -i1);
          if ((mRightGlow == null) || (!mRightGlow.draw(paramCanvas))) {
            break label471;
          }
          j = 1;
          label295:
          j = i | j;
          paramCanvas.restoreToCount(n);
        }
      }
      i = j;
      if (mBottomGlow != null)
      {
        i = j;
        if (!mBottomGlow.isFinished())
        {
          n = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!mClipToPadding) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i = m;
          if (mBottomGlow != null)
          {
            i = m;
            if (mBottomGlow.draw(paramCanvas)) {
              i = 1;
            }
          }
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      if ((i == 0) && (mItemAnimator != null) && (mItemDecorations.size() > 0) && (mItemAnimator.isRunning())) {
        i = k;
      }
      for (;;)
      {
        if (i != 0) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        return;
        i = 0;
        break;
        label456:
        j = 0;
        break label128;
        label461:
        i = 0;
        break label202;
        label466:
        j = 0;
        break label257;
        label471:
        j = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      j = 0;
    }
  }
  
  void eatRequestLayout()
  {
    if (!mEatRequestLayout)
    {
      mEatRequestLayout = true;
      mLayoutRequestEaten = false;
    }
  }
  
  void ensureBottomGlow()
  {
    if (mBottomGlow != null) {
      return;
    }
    mBottomGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mBottomGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mBottomGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ensureLeftGlow()
  {
    if (mLeftGlow != null) {
      return;
    }
    mLeftGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mLeftGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mLeftGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureRightGlow()
  {
    if (mRightGlow != null) {
      return;
    }
    mRightGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mRightGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mRightGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureTopGlow()
  {
    if (mTopGlow != null) {
      return;
    }
    mTopGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mTopGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public View findChildViewUnder(float paramFloat1, float paramFloat2)
  {
    int i = mChildHelper.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = mChildHelper.getChildAt(i);
      float f1 = ViewCompat.getTranslationX(localView);
      float f2 = ViewCompat.getTranslationY(localView);
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= f1 + localView.getRight()) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  public RecyclerView.ViewHolder findViewHolderForAdapterPosition(int paramInt)
  {
    if (mDataSetHasChangedAfterLayout) {}
    for (;;)
    {
      return null;
      int j = mChildHelper.getUnfilteredChildCount();
      int i = 0;
      while (i < j)
      {
        RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
        if ((localViewHolder != null) && (!localViewHolder.isRemoved()) && (getAdapterPositionFor(localViewHolder) == paramInt)) {
          return localViewHolder;
        }
        i += 1;
      }
    }
  }
  
  public RecyclerView.ViewHolder findViewHolderForItemId(long paramLong)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (localViewHolder.getItemId() == paramLong)) {
        return localViewHolder;
      }
      i += 1;
    }
    return null;
  }
  
  public RecyclerView.ViewHolder findViewHolderForLayoutPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  @Deprecated
  public RecyclerView.ViewHolder findViewHolderForPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  RecyclerView.ViewHolder findViewHolderForPosition(int paramInt, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.isRemoved())) {
        if (paramBoolean)
        {
          if (mPosition != paramInt) {}
        }
        else {
          while (localViewHolder.getLayoutPosition() == paramInt) {
            return localViewHolder;
          }
        }
      }
      i += 1;
    }
    return null;
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {}
    do
    {
      return false;
      boolean bool1 = mLayout.canScrollHorizontally();
      boolean bool2 = mLayout.canScrollVertically();
      int i;
      if (bool1)
      {
        i = paramInt1;
        if (Math.abs(paramInt1) >= mMinFlingVelocity) {}
      }
      else
      {
        i = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= mMinFlingVelocity) {}
      }
      else
      {
        paramInt1 = 0;
      }
      paramInt2 = Math.max(-mMaxFlingVelocity, Math.min(i, mMaxFlingVelocity));
      paramInt1 = Math.max(-mMaxFlingVelocity, Math.min(paramInt1, mMaxFlingVelocity));
    } while ((paramInt2 == 0) && (paramInt1 == 0));
    mViewFlinger.fling(paramInt2, paramInt1);
    return true;
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject2 = mLayout.onInterceptFocusSearch(paramView, paramInt);
    if (localObject2 != null) {}
    Object localObject1;
    do
    {
      return (View)localObject2;
      localObject2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (mAdapter != null)
        {
          localObject1 = localObject2;
          if (mLayout != null)
          {
            eatRequestLayout();
            localObject1 = mLayout.onFocusSearchFailed(paramView, paramInt, mRecycler, mState);
            resumeRequestLayout(false);
          }
        }
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    return super.focusSearch(paramView, paramInt);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateDefaultLayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(paramLayoutParams);
  }
  
  public RecyclerView.Adapter getAdapter()
  {
    return mAdapter;
  }
  
  public int getBaseline()
  {
    if (mLayout != null) {
      return mLayout.getBaseline();
    }
    return super.getBaseline();
  }
  
  long getChangedHolderKey(RecyclerView.ViewHolder paramViewHolder)
  {
    if (mAdapter.hasStableIds()) {
      return paramViewHolder.getItemId();
    }
    return mPosition;
  }
  
  public int getChildAdapterPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  public long getChildItemId(View paramView)
  {
    if ((mAdapter == null) || (!mAdapter.hasStableIds())) {}
    do
    {
      return -1L;
      paramView = getChildViewHolderInt(paramView);
    } while (paramView == null);
    return paramView.getItemId();
  }
  
  public int getChildLayoutPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  @Deprecated
  public int getChildPosition(View paramView)
  {
    return getChildAdapterPosition(paramView);
  }
  
  public RecyclerView.ViewHolder getChildViewHolder(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return getChildViewHolderInt(paramView);
  }
  
  public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate()
  {
    return mAccessibilityDelegate;
  }
  
  public RecyclerView.ItemAnimator getItemAnimator()
  {
    return mItemAnimator;
  }
  
  Rect getItemDecorInsetsForChild(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    if (!mInsetsDirty) {
      return mDecorInsets;
    }
    Rect localRect = mDecorInsets;
    localRect.set(0, 0, 0, 0);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      mTempRect.set(0, 0, 0, 0);
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).getItemOffsets(mTempRect, paramView, this, mState);
      left += mTempRect.left;
      top += mTempRect.top;
      right += mTempRect.right;
      bottom += mTempRect.bottom;
      i += 1;
    }
    mInsetsDirty = false;
    return localRect;
  }
  
  public RecyclerView.LayoutManager getLayoutManager()
  {
    return mLayout;
  }
  
  public RecyclerView.RecycledViewPool getRecycledViewPool()
  {
    return mRecycler.getRecycledViewPool();
  }
  
  public int getScrollState()
  {
    return mScrollState;
  }
  
  public boolean hasFixedSize()
  {
    return mHasFixedSize;
  }
  
  public boolean hasPendingAdapterUpdates()
  {
    return (!mFirstLayoutComplete) || (mDataSetHasChangedAfterLayout) || (mAdapterHelper.hasPendingUpdates());
  }
  
  void initAdapterManager()
  {
    mAdapterHelper = new AdapterHelper(new RecyclerView.5(this));
  }
  
  void invalidateGlows()
  {
    mBottomGlow = null;
    mTopGlow = null;
    mRightGlow = null;
    mLeftGlow = null;
  }
  
  public void invalidateItemDecorations()
  {
    if (mItemDecorations.size() == 0) {
      return;
    }
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  boolean isRunningLayoutOrScroll()
  {
    return mLayoutOrScrollCounter > 0;
  }
  
  void markItemDecorInsetsDirty()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
      i += 1;
    }
    mRecycler.markItemDecorInsetsDirty();
  }
  
  void markKnownViewsInvalid()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(6);
      }
      i += 1;
    }
    markItemDecorInsetsDirty();
    mRecycler.markKnownViewsInvalid();
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetLeftAndRight(paramInt);
      i += 1;
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetTopAndBottom(paramInt);
      i += 1;
    }
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()) && (mPosition >= paramInt1))
      {
        localViewHolder.offsetPosition(paramInt2, false);
        RecyclerView.State.access$1202(mState, true);
      }
      i += 1;
    }
    mRecycler.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2)
  {
    int n = mChildHelper.getUnfilteredChildCount();
    int i;
    int j;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
    }
    RecyclerView.ViewHolder localViewHolder;
    for (int k = paramInt1;; k = paramInt2)
    {
      int m = 0;
      for (;;)
      {
        if (m >= n) {
          break label131;
        }
        localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(m));
        if ((localViewHolder != null) && (mPosition >= k) && (mPosition <= j)) {
          break;
        }
        m += 1;
      }
      i = 1;
      j = paramInt1;
    }
    if (mPosition == paramInt1) {
      localViewHolder.offsetPosition(paramInt2 - paramInt1, false);
    }
    for (;;)
    {
      RecyclerView.State.access$1202(mState, true);
      break;
      localViewHolder.offsetPosition(i, false);
    }
    label131:
    mRecycler.offsetPositionRecordsForMove(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()))
      {
        if (mPosition < paramInt1 + paramInt2) {
          break label83;
        }
        localViewHolder.offsetPosition(-paramInt2, paramBoolean);
        RecyclerView.State.access$1202(mState, true);
      }
      for (;;)
      {
        i += 1;
        break;
        label83:
        if (mPosition >= paramInt1)
        {
          localViewHolder.flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          RecyclerView.State.access$1202(mState, true);
        }
      }
    }
    mRecycler.offsetPositionRecordsForRemove(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mLayoutOrScrollCounter = 0;
    mIsAttached = true;
    mFirstLayoutComplete = false;
    if (mLayout != null) {
      mLayout.dispatchAttachedToWindow(this);
    }
    mPostedAnimatorRunner = false;
  }
  
  public void onChildAttachedToWindow(View paramView) {}
  
  public void onChildDetachedFromWindow(View paramView) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mItemAnimator != null) {
      mItemAnimator.endAnimations();
    }
    mFirstLayoutComplete = false;
    stopScroll();
    mIsAttached = false;
    if (mLayout != null) {
      mLayout.dispatchDetachedFromWindow(this, mRecycler);
    }
    removeCallbacks(mItemAnimatorRunner);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).onDraw(paramCanvas, this, mState);
      i += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (mLayout == null) {}
    label100:
    label103:
    for (;;)
    {
      return false;
      if (((MotionEventCompat.getSource(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (mLayout.canScrollVertically())
        {
          f1 = MotionEventCompat.getAxisValue(paramMotionEvent, 9);
          if (!mLayout.canScrollHorizontally()) {
            break label100;
          }
        }
        for (float f2 = MotionEventCompat.getAxisValue(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label103;
          }
          float f3 = getScrollFactor();
          scrollBy((int)(f2 * f3), (int)(f1 * f3));
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = -1;
    if (dispatchOnItemTouchIntercept(paramMotionEvent))
    {
      cancelTouch();
      return true;
    }
    boolean bool1 = mLayout.canScrollHorizontally();
    boolean bool2 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int j = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    label112:
    int m;
    int n;
    switch (j)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
    case 2: 
      for (;;)
      {
        if (mScrollState != 1)
        {
          return false;
          mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
          i = (int)(paramMotionEvent.getX() + 0.5F);
          mLastTouchX = i;
          mInitialTouchX = i;
          i = (int)(paramMotionEvent.getY() + 0.5F);
          mLastTouchY = i;
          mInitialTouchY = i;
          if (mScrollState == 2)
          {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
            continue;
            mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
            j = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
            mLastTouchX = j;
            mInitialTouchX = j;
            i = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
            mLastTouchY = i;
            mInitialTouchY = i;
            continue;
            j = MotionEventCompat.findPointerIndex(paramMotionEvent, mScrollPointerId);
            if (j < 0)
            {
              new StringBuilder().append("Error processing scroll; pointer index for id ").append(mScrollPointerId).append(" not found. Did any MotionEvents get skipped?").toString();
              return false;
            }
            i = (int)(MotionEventCompat.getX(paramMotionEvent, j) + 0.5F);
            j = (int)(MotionEventCompat.getY(paramMotionEvent, j) + 0.5F);
            if (mScrollState != 1)
            {
              i -= mInitialTouchX;
              m = j - mInitialTouchY;
              if ((!bool1) || (Math.abs(i) <= mTouchSlop)) {
                break label485;
              }
              j = mInitialTouchX;
              n = mTouchSlop;
              if (i < 0)
              {
                i = -1;
                label374:
                mLastTouchX = (i * n + j);
              }
            }
          }
        }
      }
    }
    label455:
    label485:
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool2)
      {
        j = i;
        if (Math.abs(m) > mTouchSlop)
        {
          j = mInitialTouchY;
          n = mTouchSlop;
          if (m >= 0) {
            break label455;
          }
        }
      }
      for (i = k;; i = 1)
      {
        mLastTouchY = (j + i * n);
        j = 1;
        if (j == 0) {
          break;
        }
        setScrollState(1);
        break;
        i = 1;
        break label374;
      }
      onPointerUp(paramMotionEvent);
      break label112;
      mVelocityTracker.clear();
      break label112;
      cancelTouch();
      break label112;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    eatRequestLayout();
    TraceCompat.beginSection("RV OnLayout");
    dispatchLayout();
    TraceCompat.endSection();
    resumeRequestLayout(false);
    mFirstLayoutComplete = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (mAdapterUpdateDuringMeasure)
    {
      eatRequestLayout();
      processAdapterUpdatesAndSetAnimationFlags();
      if (RecyclerView.State.access$1400(mState))
      {
        RecyclerView.State.access$1502(mState, true);
        mAdapterUpdateDuringMeasure = false;
        resumeRequestLayout(false);
      }
    }
    else
    {
      if (mAdapter == null) {
        break label107;
      }
      mState.mItemCount = mAdapter.getItemCount();
      label65:
      if (mLayout != null) {
        break label118;
      }
      defaultOnMeasure(paramInt1, paramInt2);
    }
    for (;;)
    {
      RecyclerView.State.access$1502(mState, false);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      RecyclerView.State.access$1502(mState, false);
      break;
      label107:
      mState.mItemCount = 0;
      break label65;
      label118:
      mLayout.onMeasure(mRecycler, mState, paramInt1, paramInt2);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    mPendingSavedState = ((RecyclerView.SavedState)paramParcelable);
    super.onRestoreInstanceState(mPendingSavedState.getSuperState());
    if ((mLayout != null) && (mPendingSavedState.mLayoutState != null)) {
      mLayout.onRestoreInstanceState(mPendingSavedState.mLayoutState);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    RecyclerView.SavedState localSavedState = new RecyclerView.SavedState(super.onSaveInstanceState());
    if (mPendingSavedState != null)
    {
      RecyclerView.SavedState.access$1300(localSavedState, mPendingSavedState);
      return localSavedState;
    }
    if (mLayout != null)
    {
      mLayoutState = mLayout.onSaveInstanceState();
      return localSavedState;
    }
    mLayoutState = null;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(int paramInt1, int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      invalidateGlows();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = -1;
    int k = 0;
    if (dispatchOnItemTouch(paramMotionEvent))
    {
      cancelTouch();
      return true;
    }
    boolean bool1 = mLayout.canScrollHorizontally();
    boolean bool2 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int j = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    int n;
    int i1;
    int i2;
    int i3;
    switch (j)
    {
    case 4: 
    default: 
      return true;
    case 0: 
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      return true;
    case 5: 
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      j = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      return true;
    case 2: 
      i = MotionEventCompat.findPointerIndex(paramMotionEvent, mScrollPointerId);
      if (i < 0)
      {
        new StringBuilder().append("Error processing scroll; pointer index for id ").append(mScrollPointerId).append(" not found. Did any MotionEvents get skipped?").toString();
        return false;
      }
      n = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      i1 = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      if (mScrollState != 1)
      {
        i = n - mInitialTouchX;
        i2 = i1 - mInitialTouchY;
        if ((!bool1) || (Math.abs(i) <= mTouchSlop)) {
          break label682;
        }
        j = mInitialTouchX;
        i3 = mTouchSlop;
        if (i >= 0) {
          break label549;
        }
        i = -1;
        mLastTouchX = (i * i3 + j);
      }
      break;
    }
    label434:
    label549:
    label555:
    label561:
    label671:
    label682:
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool2)
      {
        j = i;
        if (Math.abs(i2) > mTouchSlop)
        {
          j = mInitialTouchY;
          i3 = mTouchSlop;
          if (i2 >= 0) {
            break label555;
          }
          i = m;
          mLastTouchY = (j + i * i3);
          j = 1;
        }
      }
      if (j != 0) {
        setScrollState(1);
      }
      if (mScrollState == 1)
      {
        i = mLastTouchX;
        m = mLastTouchY;
        if (!bool1) {
          break label561;
        }
      }
      for (i = -(n - i);; i = 0)
      {
        j = k;
        if (bool2) {
          j = -(i1 - m);
        }
        if (scrollByInternal(i, j, true, n, i1)) {
          getParent().requestDisallowInterceptTouchEvent(true);
        }
        mLastTouchX = n;
        mLastTouchY = i1;
        return true;
        i = 1;
        break;
        i = 1;
        break label434;
      }
      onPointerUp(paramMotionEvent);
      return true;
      mVelocityTracker.computeCurrentVelocity(1000, mMaxFlingVelocity);
      float f1;
      if (bool1)
      {
        f1 = -VelocityTrackerCompat.getXVelocity(mVelocityTracker, mScrollPointerId);
        if (!bool2) {
          break label671;
        }
      }
      for (float f2 = -VelocityTrackerCompat.getYVelocity(mVelocityTracker, mScrollPointerId);; f2 = 0.0F)
      {
        if (((f1 == 0.0F) && (f2 == 0.0F)) || (!fling((int)f1, (int)f2))) {
          setScrollState(0);
        }
        mVelocityTracker.clear();
        releaseGlows();
        return true;
        f1 = 0.0F;
        break;
      }
      cancelTouch();
      return true;
    }
  }
  
  void rebindUpdatedViewHolders()
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if ((localViewHolder == null) || (localViewHolder.shouldIgnore())) {}
      for (;;)
      {
        i += 1;
        break;
        if ((localViewHolder.isRemoved()) || (localViewHolder.isInvalid()))
        {
          requestLayout();
        }
        else if (localViewHolder.needsUpdate())
        {
          int k = mAdapter.getItemViewType(mPosition);
          if (localViewHolder.getItemViewType() != k) {
            break label140;
          }
          if ((!localViewHolder.isChanged()) || (!supportsChangeAnimations())) {
            mAdapter.bindViewHolder(localViewHolder, mPosition);
          } else {
            requestLayout();
          }
        }
      }
      label140:
      requestLayout();
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    if (localViewHolder != null)
    {
      if (!localViewHolder.isTmpDetached()) {
        break label32;
      }
      localViewHolder.clearTmpDetachFlag();
    }
    label32:
    while (localViewHolder.shouldIgnore())
    {
      dispatchChildDetached(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localViewHolder);
  }
  
  public void removeItemDecoration(RecyclerView.ItemDecoration paramItemDecoration)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
    }
    mItemDecorations.remove(paramItemDecoration);
    if (mItemDecorations.isEmpty()) {
      if (ViewCompat.getOverScrollMode(this) != 2) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      markItemDecorInsetsDirty();
      requestLayout();
      return;
    }
  }
  
  public void removeOnItemTouchListener(RecyclerView.OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.remove(paramOnItemTouchListener);
    if (mActiveOnItemTouchListener == paramOnItemTouchListener) {
      mActiveOnItemTouchListener = null;
    }
  }
  
  public void removeOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners != null) {
      mScrollListeners.remove(paramOnScrollListener);
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!mLayout.onRequestChildFocus(this, mState, paramView1, paramView2)) && (paramView2 != null))
    {
      mTempRect.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof RecyclerView.LayoutParams))
      {
        localObject = (RecyclerView.LayoutParams)localObject;
        if (!mInsetsDirty)
        {
          localObject = mDecorInsets;
          Rect localRect = mTempRect;
          left -= left;
          localRect = mTempRect;
          right += right;
          localRect = mTempRect;
          top -= top;
          localRect = mTempRect;
          int i = bottom;
          bottom = (bottom + i);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, mTempRect);
      offsetRectIntoDescendantCoords(paramView1, mTempRect);
      localObject = mTempRect;
      if (mFirstLayoutComplete) {
        break label215;
      }
    }
    label215:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return mLayout.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestLayout()
  {
    if (!mEatRequestLayout)
    {
      super.requestLayout();
      return;
    }
    mLayoutRequestEaten = true;
  }
  
  void resumeRequestLayout(boolean paramBoolean)
  {
    if (mEatRequestLayout)
    {
      if ((paramBoolean) && (mLayoutRequestEaten) && (mLayout != null) && (mAdapter != null)) {
        dispatchLayout();
      }
      mEatRequestLayout = false;
      mLayoutRequestEaten = false;
    }
  }
  
  void saveOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.saveOldPosition();
      }
      i += 1;
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      return;
      bool1 = mLayout.canScrollHorizontally();
      bool2 = mLayout.canScrollVertically();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label59;
      }
    }
    for (;;)
    {
      scrollByInternal(paramInt1, paramInt2, false, 0, 0);
      return;
      paramInt1 = 0;
      break;
      label59:
      paramInt2 = 0;
    }
  }
  
  boolean scrollByInternal(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    int j = 0;
    int i2 = 0;
    int m = 0;
    int n = 0;
    int i = 0;
    int i3 = 0;
    int k = 0;
    int i1 = 0;
    consumePendingUpdateOperations();
    if (mAdapter != null)
    {
      eatRequestLayout();
      onEnterLayoutOrScroll();
      TraceCompat.beginSection("RV Scroll");
      i = i3;
      j = i2;
      if (paramInt1 != 0)
      {
        i = mLayout.scrollHorizontallyBy(paramInt1, mRecycler, mState);
        j = paramInt1 - i;
      }
      k = i1;
      m = n;
      if (paramInt2 != 0)
      {
        k = mLayout.scrollVerticallyBy(paramInt2, mRecycler, mState);
        m = paramInt2 - k;
      }
      TraceCompat.endSection();
      if (supportsChangeAnimations())
      {
        i1 = mChildHelper.getChildCount();
        n = 0;
        if (n < i1)
        {
          View localView = mChildHelper.getChildAt(n);
          Object localObject = getChildViewHolder(localView);
          if ((localObject != null) && (mShadowingHolder != null))
          {
            localObject = mShadowingHolder;
            if (localObject == null) {
              break label273;
            }
          }
          label273:
          for (localObject = itemView;; localObject = null)
          {
            if (localObject != null)
            {
              i2 = localView.getLeft();
              i3 = localView.getTop();
              if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
              }
            }
            n += 1;
            break;
          }
        }
      }
      onExitLayoutOrScroll();
      resumeRequestLayout(false);
    }
    if (!mItemDecorations.isEmpty()) {
      invalidate();
    }
    if (ViewCompat.getOverScrollMode(this) != 2)
    {
      if (paramBoolean) {
        pullGlows(paramInt3, j, paramInt4, m);
      }
      considerReleasingGlowsOnScroll(paramInt1, paramInt2);
    }
    if ((i != 0) || (k != 0)) {
      dispatchOnScrolled(i, k);
    }
    if (!awakenScrollBars()) {
      invalidate();
    }
    return (i != 0) || (k != 0);
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void scrollToPosition(int paramInt)
  {
    stopScroll();
    if (mLayout == null) {
      return;
    }
    mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (shouldDeferAccessibilityEvent(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
    mAccessibilityDelegate = paramRecyclerViewAccessibilityDelegate;
    ViewCompat.setAccessibilityDelegate(this, mAccessibilityDelegate);
  }
  
  public void setAdapter(RecyclerView.Adapter paramAdapter)
  {
    setAdapterInternal(paramAdapter, false, true);
    requestLayout();
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != mClipToPadding) {
      invalidateGlows();
    }
    mClipToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (mFirstLayoutComplete) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    mHasFixedSize = paramBoolean;
  }
  
  public void setItemAnimator(RecyclerView.ItemAnimator paramItemAnimator)
  {
    if (mItemAnimator != null)
    {
      mItemAnimator.endAnimations();
      mItemAnimator.setListener(null);
    }
    mItemAnimator = paramItemAnimator;
    if (mItemAnimator != null) {
      mItemAnimator.setListener(mItemAnimatorListener);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    mRecycler.setViewCacheSize(paramInt);
  }
  
  public void setLayoutManager(RecyclerView.LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager == mLayout) {
      return;
    }
    if (mLayout != null)
    {
      if (mIsAttached) {
        mLayout.dispatchDetachedFromWindow(this, mRecycler);
      }
      mLayout.setRecyclerView(null);
    }
    mRecycler.clear();
    mChildHelper.removeAllViewsUnfiltered();
    mLayout = paramLayoutManager;
    if (paramLayoutManager != null)
    {
      if (mRecyclerView != null) {
        throw new IllegalArgumentException("LayoutManager " + paramLayoutManager + " is already attached to a RecyclerView: " + mRecyclerView);
      }
      mLayout.setRecyclerView(this);
      if (mIsAttached) {
        mLayout.dispatchAttachedToWindow(this);
      }
    }
    requestLayout();
  }
  
  @Deprecated
  public void setOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    mScrollListener = paramOnScrollListener;
  }
  
  public void setRecycledViewPool(RecyclerView.RecycledViewPool paramRecycledViewPool)
  {
    mRecycler.setRecycledViewPool(paramRecycledViewPool);
  }
  
  public void setRecyclerListener(RecyclerView.RecyclerListener paramRecyclerListener)
  {
    mRecyclerListener = paramRecyclerListener;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      new StringBuilder().append("setScrollingTouchSlop(): bad argument constant ").append(paramInt).append("; using default value").toString();
    case 0: 
      mTouchSlop = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
  }
  
  public void setViewCacheExtension(RecyclerView.ViewCacheExtension paramViewCacheExtension)
  {
    mRecycler.setViewCacheExtension(paramViewCacheExtension);
  }
  
  boolean shouldDeferAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int j = 0;
    if (isRunningLayoutOrScroll()) {
      if (paramAccessibilityEvent == null) {
        break label46;
      }
    }
    label46:
    for (int i = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent);; i = 0)
    {
      if (i == 0) {
        i = j;
      }
      for (;;)
      {
        mEatenAccessibilityChangeFlags = (i | mEatenAccessibilityChangeFlags);
        bool = true;
        return bool;
      }
    }
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (mLayout == null) {}
    for (;;)
    {
      return;
      if (!mLayout.canScrollHorizontally()) {
        paramInt1 = 0;
      }
      if (!mLayout.canScrollVertically()) {
        paramInt2 = i;
      }
      while ((paramInt1 != 0) || (paramInt2 != 0))
      {
        mViewFlinger.smoothScrollBy(paramInt1, paramInt2);
        return;
      }
    }
  }
  
  public void smoothScrollToPosition(int paramInt)
  {
    if (mLayout == null) {
      return;
    }
    mLayout.smoothScrollToPosition(this, mState, paramInt);
  }
  
  public void stopScroll()
  {
    setScrollState(0);
    stopScrollersInternal();
  }
  
  public void swapAdapter(RecyclerView.Adapter paramAdapter, boolean paramBoolean)
  {
    setAdapterInternal(paramAdapter, true, paramBoolean);
    setDataSetChangedAfterLayout();
    requestLayout();
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = mChildHelper.getUnfilteredChildAt(i);
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(localView);
      if ((localViewHolder == null) || (localViewHolder.shouldIgnore())) {}
      for (;;)
      {
        i += 1;
        break;
        if ((mPosition >= paramInt1) && (mPosition < paramInt1 + paramInt2))
        {
          localViewHolder.addFlags(2);
          if (supportsChangeAnimations()) {
            localViewHolder.addFlags(64);
          }
          getLayoutParamsmInsetsDirty = true;
        }
      }
    }
    mRecycler.viewRangeUpdate(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */