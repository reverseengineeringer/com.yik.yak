package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ActionBarContextView
  extends AbsActionBarView
  implements ViewPropertyAnimatorListener
{
  private static final int ANIMATE_IDLE = 0;
  private static final int ANIMATE_IN = 1;
  private static final int ANIMATE_OUT = 2;
  private static final String TAG = "ActionBarContextView";
  private boolean mAnimateInOnLayout;
  private int mAnimationMode;
  private View mClose;
  private int mCloseItemLayout;
  private ViewPropertyAnimatorCompatSet mCurrentAnimation;
  private View mCustomView;
  private Drawable mSplitBackground;
  private CharSequence mSubtitle;
  private int mSubtitleStyleRes;
  private TextView mSubtitleView;
  private CharSequence mTitle;
  private LinearLayout mTitleLayout;
  private boolean mTitleOptional;
  private int mTitleStyleRes;
  private TextView mTitleView;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.actionModeStyle);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ActionMode, paramInt, 0);
    setBackgroundDrawable(paramContext.getDrawable(R.styleable.ActionMode_background));
    mTitleStyleRes = paramContext.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
    mSubtitleStyleRes = paramContext.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
    mContentHeight = paramContext.getLayoutDimension(R.styleable.ActionMode_height, 0);
    mSplitBackground = paramContext.getDrawable(R.styleable.ActionMode_backgroundSplit);
    mCloseItemLayout = paramContext.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
    paramContext.recycle();
  }
  
  private void finishAnimation()
  {
    ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = mCurrentAnimation;
    if (localViewPropertyAnimatorCompatSet != null)
    {
      mCurrentAnimation = null;
      localViewPropertyAnimatorCompatSet.cancel();
    }
  }
  
  private void initTitle()
  {
    int m = 8;
    int j = 1;
    if (mTitleLayout == null)
    {
      LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
      mTitleLayout = ((LinearLayout)getChildAt(getChildCount() - 1));
      mTitleView = ((TextView)mTitleLayout.findViewById(R.id.action_bar_title));
      mSubtitleView = ((TextView)mTitleLayout.findViewById(R.id.action_bar_subtitle));
      if (mTitleStyleRes != 0) {
        mTitleView.setTextAppearance(getContext(), mTitleStyleRes);
      }
      if (mSubtitleStyleRes != 0) {
        mSubtitleView.setTextAppearance(getContext(), mSubtitleStyleRes);
      }
    }
    mTitleView.setText(mTitle);
    mSubtitleView.setText(mSubtitle);
    int i;
    label167:
    Object localObject;
    if (!TextUtils.isEmpty(mTitle))
    {
      i = 1;
      if (TextUtils.isEmpty(mSubtitle)) {
        break label234;
      }
      localObject = mSubtitleView;
      if (j == 0) {
        break label239;
      }
    }
    label234:
    label239:
    for (int k = 0;; k = 8)
    {
      ((TextView)localObject).setVisibility(k);
      localObject = mTitleLayout;
      if (i == 0)
      {
        i = m;
        if (j == 0) {}
      }
      else
      {
        i = 0;
      }
      ((LinearLayout)localObject).setVisibility(i);
      if (mTitleLayout.getParent() == null) {
        addView(mTitleLayout);
      }
      return;
      i = 0;
      break;
      j = 0;
      break label167;
    }
  }
  
  private ViewPropertyAnimatorCompatSet makeInAnimation()
  {
    ViewCompat.setTranslationX(mClose, -mClose.getWidth() - mClose.getLayoutParams()).leftMargin);
    Object localObject = ViewCompat.animate(mClose).translationX(0.0F);
    ((ViewPropertyAnimatorCompat)localObject).setDuration(200L);
    ((ViewPropertyAnimatorCompat)localObject).setListener(this);
    ((ViewPropertyAnimatorCompat)localObject).setInterpolator(new DecelerateInterpolator());
    ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
    localViewPropertyAnimatorCompatSet.play((ViewPropertyAnimatorCompat)localObject);
    if (mMenuView != null)
    {
      int i = mMenuView.getChildCount();
      if (i > 0)
      {
        i -= 1;
        while (i >= 0)
        {
          localObject = mMenuView.getChildAt(i);
          ViewCompat.setScaleY((View)localObject, 0.0F);
          localObject = ViewCompat.animate((View)localObject).scaleY(1.0F);
          ((ViewPropertyAnimatorCompat)localObject).setDuration(300L);
          localViewPropertyAnimatorCompatSet.play((ViewPropertyAnimatorCompat)localObject);
          i -= 1;
        }
      }
    }
    return localViewPropertyAnimatorCompatSet;
  }
  
  private ViewPropertyAnimatorCompatSet makeOutAnimation()
  {
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = ViewCompat.animate(mClose).translationX(-mClose.getWidth() - mClose.getLayoutParams()).leftMargin);
    localViewPropertyAnimatorCompat.setDuration(200L);
    localViewPropertyAnimatorCompat.setListener(this);
    localViewPropertyAnimatorCompat.setInterpolator(new DecelerateInterpolator());
    ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
    localViewPropertyAnimatorCompatSet.play(localViewPropertyAnimatorCompat);
    if ((mMenuView != null) && (mMenuView.getChildCount() > 0)) {}
    return localViewPropertyAnimatorCompatSet;
  }
  
  public void closeMode()
  {
    if (mAnimationMode == 2) {
      return;
    }
    if (mClose == null)
    {
      killMode();
      return;
    }
    finishAnimation();
    mAnimationMode = 2;
    mCurrentAnimation = makeOutAnimation();
    mCurrentAnimation.start();
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle()
  {
    return mSubtitle;
  }
  
  public CharSequence getTitle()
  {
    return mTitle;
  }
  
  public boolean hideOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.hideOverflowMenu();
    }
    return false;
  }
  
  public void initForMode(ActionMode paramActionMode)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (mClose == null)
    {
      mClose = LayoutInflater.from(getContext()).inflate(mCloseItemLayout, this, false);
      addView(mClose);
      mClose.findViewById(R.id.action_mode_close_button).setOnClickListener(new ActionBarContextView.1(this, paramActionMode));
      paramActionMode = (MenuBuilder)paramActionMode.getMenu();
      if (mActionMenuPresenter != null) {
        mActionMenuPresenter.dismissPopupMenus();
      }
      mActionMenuPresenter = new ActionMenuPresenter(getContext());
      mActionMenuPresenter.setReserveOverflow(true);
      localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      if (mSplitActionBar) {
        break label192;
      }
      paramActionMode.a(mActionMenuPresenter, mPopupContext);
      mMenuView = ((ActionMenuView)mActionMenuPresenter.getMenuView(this));
      mMenuView.setBackgroundDrawable(null);
      addView(mMenuView, localLayoutParams);
    }
    for (;;)
    {
      mAnimateInOnLayout = true;
      return;
      if (mClose.getParent() != null) {
        break;
      }
      addView(mClose);
      break;
      label192:
      mActionMenuPresenter.setWidthLimit(getContextgetResourcesgetDisplayMetricswidthPixels, true);
      mActionMenuPresenter.setItemLimit(Integer.MAX_VALUE);
      width = -1;
      height = mContentHeight;
      paramActionMode.a(mActionMenuPresenter, mPopupContext);
      mMenuView = ((ActionMenuView)mActionMenuPresenter.getMenuView(this));
      mMenuView.setBackgroundDrawable(mSplitBackground);
      mSplitView.addView(mMenuView, localLayoutParams);
    }
  }
  
  public boolean isOverflowMenuShowing()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.isOverflowMenuShowing();
    }
    return false;
  }
  
  public boolean isTitleOptional()
  {
    return mTitleOptional;
  }
  
  public void killMode()
  {
    finishAnimation();
    removeAllViews();
    if (mSplitView != null) {
      mSplitView.removeView(mMenuView);
    }
    mCustomView = null;
    mMenuView = null;
    mAnimateInOnLayout = false;
  }
  
  public void onAnimationCancel(View paramView) {}
  
  public void onAnimationEnd(View paramView)
  {
    if (mAnimationMode == 2) {
      killMode();
    }
    mAnimationMode = 0;
  }
  
  public void onAnimationStart(View paramView) {}
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mActionMenuPresenter != null)
    {
      mActionMenuPresenter.hideOverflowMenu();
      mActionMenuPresenter.hideSubMenus();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent.setSource(this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(mTitle);
      }
    }
    else {
      return;
    }
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = ViewUtils.isLayoutRtl(this);
    int i;
    int j;
    int k;
    Object localObject;
    if (paramBoolean)
    {
      i = paramInt3 - paramInt1 - getPaddingRight();
      j = getPaddingTop();
      k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
      paramInt2 = i;
      if (mClose != null)
      {
        paramInt2 = i;
        if (mClose.getVisibility() != 8)
        {
          localObject = (ViewGroup.MarginLayoutParams)mClose.getLayoutParams();
          if (!paramBoolean) {
            break label297;
          }
          paramInt2 = rightMargin;
          label89:
          if (!paramBoolean) {
            break label306;
          }
          paramInt4 = leftMargin;
          label100:
          paramInt2 = next(i, paramInt2, paramBoolean);
          paramInt4 = next(positionChild(mClose, paramInt2, j, k, paramBoolean) + paramInt2, paramInt4, paramBoolean);
          paramInt2 = paramInt4;
          if (mAnimateInOnLayout)
          {
            mAnimationMode = 1;
            mCurrentAnimation = makeInAnimation();
            mCurrentAnimation.start();
            mAnimateInOnLayout = false;
            paramInt2 = paramInt4;
          }
        }
      }
      paramInt4 = paramInt2;
      if (mTitleLayout != null)
      {
        paramInt4 = paramInt2;
        if (mCustomView == null)
        {
          paramInt4 = paramInt2;
          if (mTitleLayout.getVisibility() != 8) {
            paramInt4 = paramInt2 + positionChild(mTitleLayout, paramInt2, j, k, paramBoolean);
          }
        }
      }
      if (mCustomView != null) {
        positionChild(mCustomView, paramInt4, j, k, paramBoolean);
      }
      if (!paramBoolean) {
        break label316;
      }
      paramInt1 = getPaddingLeft();
      label255:
      if (mMenuView != null)
      {
        localObject = mMenuView;
        if (paramBoolean) {
          break label329;
        }
      }
    }
    label297:
    label306:
    label316:
    label329:
    for (paramBoolean = true;; paramBoolean = false)
    {
      positionChild((View)localObject, paramInt1, j, k, paramBoolean);
      return;
      i = getPaddingLeft();
      break;
      paramInt2 = leftMargin;
      break label89;
      paramInt4 = rightMargin;
      break label100;
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
      break label255;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 1073741824;
    int m = 0;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
    }
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i;
    int n;
    int j;
    if (mContentHeight > 0)
    {
      i = mContentHeight;
      int i2 = getPaddingTop() + getPaddingBottom();
      paramInt1 = i1 - getPaddingLeft() - getPaddingRight();
      n = i - i2;
      j = View.MeasureSpec.makeMeasureSpec(n, Integer.MIN_VALUE);
      paramInt2 = paramInt1;
      Object localObject;
      if (mClose != null)
      {
        paramInt1 = measureChildView(mClose, paramInt1, j, 0);
        localObject = (ViewGroup.MarginLayoutParams)mClose.getLayoutParams();
        paramInt2 = leftMargin;
        paramInt2 = paramInt1 - (rightMargin + paramInt2);
      }
      paramInt1 = paramInt2;
      if (mMenuView != null)
      {
        paramInt1 = paramInt2;
        if (mMenuView.getParent() == this) {
          paramInt1 = measureChildView(mMenuView, paramInt2, j, 0);
        }
      }
      paramInt2 = paramInt1;
      if (mTitleLayout != null)
      {
        paramInt2 = paramInt1;
        if (mCustomView == null)
        {
          if (!mTitleOptional) {
            break label512;
          }
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          mTitleLayout.measure(paramInt2, j);
          int i3 = mTitleLayout.getMeasuredWidth();
          if (i3 > paramInt1) {
            break label500;
          }
          j = 1;
          label307:
          paramInt2 = paramInt1;
          if (j != 0) {
            paramInt2 = paramInt1 - i3;
          }
          localObject = mTitleLayout;
          if (j == 0) {
            break label506;
          }
          paramInt1 = 0;
          label332:
          ((LinearLayout)localObject).setVisibility(paramInt1);
        }
      }
      label338:
      if (mCustomView != null)
      {
        localObject = mCustomView.getLayoutParams();
        if (width == -2) {
          break label528;
        }
        paramInt1 = 1073741824;
        label368:
        j = paramInt2;
        if (width >= 0) {
          j = Math.min(width, paramInt2);
        }
        if (height == -2) {
          break label535;
        }
        paramInt2 = k;
        label403:
        if (height < 0) {
          break label542;
        }
        k = Math.min(height, n);
        label423:
        mCustomView.measure(View.MeasureSpec.makeMeasureSpec(j, paramInt1), View.MeasureSpec.makeMeasureSpec(k, paramInt2));
      }
      if (mContentHeight > 0) {
        break label557;
      }
      j = getChildCount();
      paramInt1 = 0;
      paramInt2 = m;
      label460:
      if (paramInt2 >= j) {
        break label549;
      }
      i = getChildAt(paramInt2).getMeasuredHeight() + i2;
      if (i <= paramInt1) {
        break label565;
      }
      paramInt1 = i;
    }
    label500:
    label506:
    label512:
    label528:
    label535:
    label542:
    label549:
    label557:
    label565:
    for (;;)
    {
      paramInt2 += 1;
      break label460;
      i = View.MeasureSpec.getSize(paramInt2);
      break;
      j = 0;
      break label307;
      paramInt1 = 8;
      break label332;
      paramInt2 = measureChildView(mTitleLayout, paramInt1, j, 0);
      break label338;
      paramInt1 = Integer.MIN_VALUE;
      break label368;
      paramInt2 = Integer.MIN_VALUE;
      break label403;
      k = n;
      break label423;
      setMeasuredDimension(i1, paramInt1);
      return;
      setMeasuredDimension(i1, i);
      return;
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    mContentHeight = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    if (mCustomView != null) {
      removeView(mCustomView);
    }
    mCustomView = paramView;
    if (mTitleLayout != null)
    {
      removeView(mTitleLayout);
      mTitleLayout = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSplitToolbar(boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams;
    ViewGroup localViewGroup;
    if (mSplitActionBar != paramBoolean) {
      if (mActionMenuPresenter != null)
      {
        localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (paramBoolean) {
          break label91;
        }
        mMenuView = ((ActionMenuView)mActionMenuPresenter.getMenuView(this));
        mMenuView.setBackgroundDrawable(null);
        localViewGroup = (ViewGroup)mMenuView.getParent();
        if (localViewGroup != null) {
          localViewGroup.removeView(mMenuView);
        }
        addView(mMenuView, localLayoutParams);
      }
    }
    for (;;)
    {
      super.setSplitToolbar(paramBoolean);
      return;
      label91:
      mActionMenuPresenter.setWidthLimit(getContextgetResourcesgetDisplayMetricswidthPixels, true);
      mActionMenuPresenter.setItemLimit(Integer.MAX_VALUE);
      width = -1;
      height = mContentHeight;
      mMenuView = ((ActionMenuView)mActionMenuPresenter.getMenuView(this));
      mMenuView.setBackgroundDrawable(mSplitBackground);
      localViewGroup = (ViewGroup)mMenuView.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(mMenuView);
      }
      mSplitView.addView(mMenuView, localLayoutParams);
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    mSubtitle = paramCharSequence;
    initTitle();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mTitle = paramCharSequence;
    initTitle();
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != mTitleOptional) {
      requestLayout();
    }
    mTitleOptional = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public boolean showOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.showOverflowMenu();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarContextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */