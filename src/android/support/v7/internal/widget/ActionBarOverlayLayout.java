package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import y;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements NestedScrollingParent, DecorContentParent
{
  static final int[] ATTRS = { R.attr.actionBarSize, 16842841 };
  private static final String TAG = "ActionBarOverlayLayout";
  private final int ACTION_BAR_ANIMATE_DELAY = 600;
  private ActionBarContainer mActionBarBottom;
  private int mActionBarHeight;
  private ActionBarContainer mActionBarTop;
  private ActionBarOverlayLayout.ActionBarVisibilityCallback mActionBarVisibilityCallback;
  private final Runnable mAddActionBarHideOffset = new ActionBarOverlayLayout.4(this);
  private boolean mAnimatingForFling;
  private final Rect mBaseContentInsets = new Rect();
  private final Rect mBaseInnerInsets = new Rect();
  private final ViewPropertyAnimatorListener mBottomAnimatorListener = new ActionBarOverlayLayout.2(this);
  private ContentFrameLayout mContent;
  private final Rect mContentInsets = new Rect();
  private ViewPropertyAnimatorCompat mCurrentActionBarBottomAnimator;
  private ViewPropertyAnimatorCompat mCurrentActionBarTopAnimator;
  private DecorToolbar mDecorToolbar;
  private ScrollerCompat mFlingEstimator;
  private boolean mHasNonEmbeddedTabs;
  private boolean mHideOnContentScroll;
  private int mHideOnContentScrollReference;
  private boolean mIgnoreWindowContentOverlay;
  private final Rect mInnerInsets = new Rect();
  private final Rect mLastBaseContentInsets = new Rect();
  private final Rect mLastInnerInsets = new Rect();
  private int mLastSystemUiVisibility;
  private boolean mOverlayMode;
  private final NestedScrollingParentHelper mParentHelper;
  private final Runnable mRemoveActionBarHideOffset = new ActionBarOverlayLayout.3(this);
  private final ViewPropertyAnimatorListener mTopAnimatorListener = new ActionBarOverlayLayout.1(this);
  private Drawable mWindowContentOverlay;
  private int mWindowVisibility = 0;
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
    mParentHelper = new NestedScrollingParentHelper(this);
  }
  
  private void addActionBarHideOffset()
  {
    haltActionBarHideOffsetAnimations();
    mAddActionBarHideOffset.run();
  }
  
  private boolean applyInsets(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    boolean bool2 = false;
    paramView = (ActionBarOverlayLayout.LayoutParams)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (paramBoolean1)
    {
      bool1 = bool2;
      if (leftMargin != left)
      {
        leftMargin = left;
        bool1 = true;
      }
    }
    paramBoolean1 = bool1;
    if (paramBoolean2)
    {
      paramBoolean1 = bool1;
      if (topMargin != top)
      {
        topMargin = top;
        paramBoolean1 = true;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      paramBoolean2 = paramBoolean1;
      if (rightMargin != right)
      {
        rightMargin = right;
        paramBoolean2 = true;
      }
    }
    if ((paramBoolean3) && (bottomMargin != bottom))
    {
      bottomMargin = bottom;
      return true;
    }
    return paramBoolean2;
  }
  
  private DecorToolbar getDecorToolbar(View paramView)
  {
    if ((paramView instanceof DecorToolbar)) {
      return (DecorToolbar)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void haltActionBarHideOffsetAnimations()
  {
    removeCallbacks(mRemoveActionBarHideOffset);
    removeCallbacks(mAddActionBarHideOffset);
    if (mCurrentActionBarTopAnimator != null) {
      mCurrentActionBarTopAnimator.cancel();
    }
    if (mCurrentActionBarBottomAnimator != null) {
      mCurrentActionBarBottomAnimator.cancel();
    }
  }
  
  private void init(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(ATTRS);
    mActionBarHeight = localTypedArray.getDimensionPixelSize(0, 0);
    mWindowContentOverlay = localTypedArray.getDrawable(1);
    if (mWindowContentOverlay == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (getApplicationInfotargetSdkVersion >= 19) {
        break label90;
      }
    }
    label90:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      mIgnoreWindowContentOverlay = bool1;
      mFlingEstimator = ScrollerCompat.create(paramContext);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void postAddActionBarHideOffset()
  {
    haltActionBarHideOffsetAnimations();
    postDelayed(mAddActionBarHideOffset, 600L);
  }
  
  private void postRemoveActionBarHideOffset()
  {
    haltActionBarHideOffsetAnimations();
    postDelayed(mRemoveActionBarHideOffset, 600L);
  }
  
  private void removeActionBarHideOffset()
  {
    haltActionBarHideOffsetAnimations();
    mRemoveActionBarHideOffset.run();
  }
  
  private boolean shouldHideActionBarOnFling(float paramFloat1, float paramFloat2)
  {
    boolean bool = false;
    mFlingEstimator.fling(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    if (mFlingEstimator.getFinalY() > mActionBarTop.getHeight()) {
      bool = true;
    }
    return bool;
  }
  
  public boolean canShowOverflowMenu()
  {
    pullChildren();
    return mDecorToolbar.canShowOverflowMenu();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ActionBarOverlayLayout.LayoutParams;
  }
  
  public void dismissPopups()
  {
    pullChildren();
    mDecorToolbar.dismissPopupMenus();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((mWindowContentOverlay != null) && (!mIgnoreWindowContentOverlay)) {
      if (mActionBarTop.getVisibility() != 0) {
        break label82;
      }
    }
    label82:
    for (int i = (int)(mActionBarTop.getBottom() + ViewCompat.getTranslationY(mActionBarTop) + 0.5F);; i = 0)
    {
      mWindowContentOverlay.setBounds(0, i, getWidth(), mWindowContentOverlay.getIntrinsicHeight() + i);
      mWindowContentOverlay.draw(paramCanvas);
      return;
    }
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    pullChildren();
    ViewCompat.getWindowSystemUiVisibility(this);
    boolean bool2 = applyInsets(mActionBarTop, paramRect, true, true, false, true);
    boolean bool1 = bool2;
    if (mActionBarBottom != null) {
      bool1 = bool2 | applyInsets(mActionBarBottom, paramRect, true, false, true, true);
    }
    mBaseInnerInsets.set(paramRect);
    ViewUtils.computeFitSystemWindows(this, mBaseInnerInsets, mBaseContentInsets);
    if (!mLastBaseContentInsets.equals(mBaseContentInsets))
    {
      mLastBaseContentInsets.set(mBaseContentInsets);
      bool1 = true;
    }
    if (bool1) {
      requestLayout();
    }
    return true;
  }
  
  protected ActionBarOverlayLayout.LayoutParams generateDefaultLayoutParams()
  {
    return new ActionBarOverlayLayout.LayoutParams(-1, -1);
  }
  
  public ActionBarOverlayLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionBarOverlayLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ActionBarOverlayLayout.LayoutParams(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (mActionBarTop != null) {
      return -(int)ViewCompat.getTranslationY(mActionBarTop);
    }
    return 0;
  }
  
  public int getNestedScrollAxes()
  {
    return mParentHelper.getNestedScrollAxes();
  }
  
  public CharSequence getTitle()
  {
    pullChildren();
    return mDecorToolbar.getTitle();
  }
  
  public boolean hasIcon()
  {
    pullChildren();
    return mDecorToolbar.hasIcon();
  }
  
  public boolean hasLogo()
  {
    pullChildren();
    return mDecorToolbar.hasLogo();
  }
  
  public boolean hideOverflowMenu()
  {
    pullChildren();
    return mDecorToolbar.hideOverflowMenu();
  }
  
  public void initFeature(int paramInt)
  {
    pullChildren();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      mDecorToolbar.initProgress();
      return;
    case 5: 
      mDecorToolbar.initIndeterminateProgress();
      return;
    }
    setOverlayMode(true);
  }
  
  public boolean isHideOnContentScrollEnabled()
  {
    return mHideOnContentScroll;
  }
  
  public boolean isInOverlayMode()
  {
    return mOverlayMode;
  }
  
  public boolean isOverflowMenuShowPending()
  {
    pullChildren();
    return mDecorToolbar.isOverflowMenuShowPending();
  }
  
  public boolean isOverflowMenuShowing()
  {
    pullChildren();
    return mDecorToolbar.isOverflowMenuShowing();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    init(getContext());
    ViewCompat.requestApplyInsets(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    haltActionBarHideOffsetAnimations();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = getPaddingLeft();
    getPaddingRight();
    int k = getPaddingTop();
    int m = getPaddingBottom();
    paramInt1 = 0;
    if (paramInt1 < i)
    {
      View localView = getChildAt(paramInt1);
      ActionBarOverlayLayout.LayoutParams localLayoutParams;
      int n;
      int i1;
      int i2;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (ActionBarOverlayLayout.LayoutParams)localView.getLayoutParams();
        n = localView.getMeasuredWidth();
        i1 = localView.getMeasuredHeight();
        i2 = leftMargin + j;
        if (localView != mActionBarBottom) {
          break label141;
        }
      }
      label141:
      for (paramInt3 = paramInt4 - paramInt2 - m - i1 - bottomMargin;; paramInt3 = topMargin + k)
      {
        localView.layout(i2, paramInt3, n + i2, i1 + paramInt3);
        paramInt1 += 1;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    pullChildren();
    measureChildWithMargins(mActionBarTop, paramInt1, 0, paramInt2, 0);
    Object localObject = (ActionBarOverlayLayout.LayoutParams)mActionBarTop.getLayoutParams();
    int n = Math.max(0, mActionBarTop.getMeasuredWidth() + leftMargin + rightMargin);
    int i = mActionBarTop.getMeasuredHeight();
    int j = topMargin;
    int m = Math.max(0, bottomMargin + (i + j));
    int k = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState(mActionBarTop));
    if (mActionBarBottom != null)
    {
      measureChildWithMargins(mActionBarBottom, paramInt1, 0, paramInt2, 0);
      localObject = (ActionBarOverlayLayout.LayoutParams)mActionBarBottom.getLayoutParams();
      n = Math.max(n, mActionBarBottom.getMeasuredWidth() + leftMargin + rightMargin);
      i = mActionBarBottom.getMeasuredHeight();
      j = topMargin;
      m = Math.max(m, bottomMargin + (i + j));
      k = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState(mActionBarBottom));
    }
    for (;;)
    {
      int i1;
      if ((ViewCompat.getWindowSystemUiVisibility(this) & 0x100) != 0)
      {
        i1 = 1;
        if (i1 == 0) {
          break label582;
        }
        j = mActionBarHeight;
        i = j;
        if (mHasNonEmbeddedTabs)
        {
          i = j;
          if (mActionBarTop.getTabContainer() != null) {
            i = j + mActionBarHeight;
          }
        }
      }
      for (;;)
      {
        label256:
        if ((mDecorToolbar.isSplit()) && (mActionBarBottom != null)) {
          if (i1 != 0) {
            j = mActionBarHeight;
          }
        }
        for (;;)
        {
          label286:
          mContentInsets.set(mBaseContentInsets);
          mInnerInsets.set(mBaseInnerInsets);
          if ((!mOverlayMode) && (i1 == 0))
          {
            localObject = mContentInsets;
            top = (i + top);
            localObject = mContentInsets;
          }
          for (bottom = (j + bottom);; bottom = (j + bottom))
          {
            applyInsets(mContent, mContentInsets, true, true, true, true);
            if (!mLastInnerInsets.equals(mInnerInsets))
            {
              mLastInnerInsets.set(mInnerInsets);
              mContent.dispatchFitSystemWindows(mInnerInsets);
            }
            measureChildWithMargins(mContent, paramInt1, 0, paramInt2, 0);
            localObject = (ActionBarOverlayLayout.LayoutParams)mContent.getLayoutParams();
            i = Math.max(n, mContent.getMeasuredWidth() + leftMargin + rightMargin);
            j = mContent.getMeasuredHeight();
            n = topMargin;
            j = Math.max(m, bottomMargin + (j + n));
            k = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState(mContent));
            m = getPaddingLeft();
            n = getPaddingRight();
            j = Math.max(j + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
            setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i + (m + n), getSuggestedMinimumWidth()), paramInt1, k), ViewCompat.resolveSizeAndState(j, paramInt2, k << 16));
            return;
            i1 = 0;
            break;
            label582:
            if (mActionBarTop.getVisibility() == 8) {
              break label663;
            }
            i = mActionBarTop.getMeasuredHeight();
            break label256;
            j = mActionBarBottom.getMeasuredHeight();
            break label286;
            localObject = mInnerInsets;
            top = (i + top);
            localObject = mInnerInsets;
          }
          j = 0;
        }
        label663:
        i = 0;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!mHideOnContentScroll) || (!paramBoolean)) {
      return false;
    }
    if (shouldHideActionBarOnFling(paramFloat1, paramFloat2)) {
      addActionBarHideOffset();
    }
    for (;;)
    {
      mAnimatingForFling = true;
      return true;
      removeActionBarHideOffset();
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mHideOnContentScrollReference += paramInt2;
    setActionBarHideOffset(mHideOnContentScrollReference);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    mParentHelper.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    mHideOnContentScrollReference = getActionBarHideOffset();
    haltActionBarHideOffsetAnimations();
    if (mActionBarVisibilityCallback != null) {
      mActionBarVisibilityCallback.onContentScrollStarted();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (mActionBarTop.getVisibility() != 0)) {
      return false;
    }
    return mHideOnContentScroll;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((mHideOnContentScroll) && (!mAnimatingForFling))
    {
      if (mHideOnContentScrollReference > mActionBarTop.getHeight()) {
        break label49;
      }
      postRemoveActionBarHideOffset();
    }
    for (;;)
    {
      if (mActionBarVisibilityCallback != null) {
        mActionBarVisibilityCallback.onContentScrollStopped();
      }
      return;
      label49:
      postAddActionBarHideOffset();
    }
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    pullChildren();
    int k = mLastSystemUiVisibility;
    mLastSystemUiVisibility = paramInt;
    int i;
    int j;
    if ((paramInt & 0x4) == 0)
    {
      i = 1;
      if ((paramInt & 0x100) == 0) {
        break label120;
      }
      j = 1;
      label49:
      if (mActionBarVisibilityCallback != null)
      {
        ActionBarOverlayLayout.ActionBarVisibilityCallback localActionBarVisibilityCallback = mActionBarVisibilityCallback;
        if (j != 0) {
          break label125;
        }
        label66:
        localActionBarVisibilityCallback.enableContentAnimations(bool);
        if ((i == 0) && (j != 0)) {
          break label131;
        }
        mActionBarVisibilityCallback.showForSystem();
      }
    }
    for (;;)
    {
      if ((((k ^ paramInt) & 0x100) != 0) && (mActionBarVisibilityCallback != null)) {
        ViewCompat.requestApplyInsets(this);
      }
      return;
      i = 0;
      break;
      label120:
      j = 0;
      break label49;
      label125:
      bool = false;
      break label66;
      label131:
      mActionBarVisibilityCallback.hideForSystem();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    mWindowVisibility = paramInt;
    if (mActionBarVisibilityCallback != null) {
      mActionBarVisibilityCallback.onWindowVisibilityChanged(paramInt);
    }
  }
  
  void pullChildren()
  {
    if (mContent == null)
    {
      mContent = ((ContentFrameLayout)findViewById(R.id.action_bar_activity_content));
      mActionBarTop = ((ActionBarContainer)findViewById(R.id.action_bar_container));
      mDecorToolbar = getDecorToolbar(findViewById(R.id.action_bar));
      mActionBarBottom = ((ActionBarContainer)findViewById(R.id.split_action_bar));
    }
  }
  
  public void restoreToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    pullChildren();
    mDecorToolbar.restoreHierarchyState(paramSparseArray);
  }
  
  public void saveToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    pullChildren();
    mDecorToolbar.saveHierarchyState(paramSparseArray);
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    haltActionBarHideOffsetAnimations();
    int i = mActionBarTop.getHeight();
    paramInt = Math.max(0, Math.min(paramInt, i));
    ViewCompat.setTranslationY(mActionBarTop, -paramInt);
    if ((mActionBarBottom != null) && (mActionBarBottom.getVisibility() != 8))
    {
      paramInt = (int)(paramInt / i * mActionBarBottom.getHeight());
      ViewCompat.setTranslationY(mActionBarBottom, paramInt);
    }
  }
  
  public void setActionBarVisibilityCallback(ActionBarOverlayLayout.ActionBarVisibilityCallback paramActionBarVisibilityCallback)
  {
    mActionBarVisibilityCallback = paramActionBarVisibilityCallback;
    if (getWindowToken() != null)
    {
      mActionBarVisibilityCallback.onWindowVisibilityChanged(mWindowVisibility);
      if (mLastSystemUiVisibility != 0)
      {
        onWindowSystemUiVisibilityChanged(mLastSystemUiVisibility);
        ViewCompat.requestApplyInsets(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    mHasNonEmbeddedTabs = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != mHideOnContentScroll)
    {
      mHideOnContentScroll = paramBoolean;
      if (!paramBoolean)
      {
        haltActionBarHideOffsetAnimations();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    pullChildren();
    mDecorToolbar.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    pullChildren();
    mDecorToolbar.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    pullChildren();
    mDecorToolbar.setLogo(paramInt);
  }
  
  public void setMenu(Menu paramMenu, y paramy)
  {
    pullChildren();
    mDecorToolbar.setMenu(paramMenu, paramy);
  }
  
  public void setMenuPrepared()
  {
    pullChildren();
    mDecorToolbar.setMenuPrepared();
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    mOverlayMode = paramBoolean;
    if ((paramBoolean) && (getContextgetApplicationInfotargetSdkVersion < 19)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      mIgnoreWindowContentOverlay = paramBoolean;
      return;
    }
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    pullChildren();
    mDecorToolbar.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    pullChildren();
    mDecorToolbar.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public boolean showOverflowMenu()
  {
    pullChildren();
    return mDecorToolbar.showOverflowMenu();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */