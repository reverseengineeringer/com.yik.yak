package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  private static final int DEFAULT_FADE_COLOR = -858993460;
  private static final int DEFAULT_OVERHANG_SIZE = 32;
  static final SlidingPaneLayout.SlidingPanelLayoutImpl IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplBase();
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "SlidingPaneLayout";
  private boolean mCanSlide;
  private int mCoveredFadeColor;
  private final ViewDragHelper mDragHelper;
  private boolean mFirstLayout = true;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private boolean mIsUnableToDrag;
  private final int mOverhangSize;
  private SlidingPaneLayout.PanelSlideListener mPanelSlideListener;
  private int mParallaxBy;
  private float mParallaxOffset;
  private final ArrayList<SlidingPaneLayout.DisableLayerRunnable> mPostedRunnables = new ArrayList();
  private boolean mPreservedOpenState;
  private Drawable mShadowDrawableLeft;
  private Drawable mShadowDrawableRight;
  private float mSlideOffset;
  private int mSlideRange;
  private View mSlideableView;
  private int mSliderFadeColor = -858993460;
  private final Rect mTmpRect = new Rect();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJBMR1();
      return;
    }
    if (i >= 16)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJB();
      return;
    }
  }
  
  public SlidingPaneLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f = getResourcesgetDisplayMetricsdensity;
    mOverhangSize = ((int)(32.0F * f + 0.5F));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new SlidingPaneLayout.AccessibilityDelegate(this));
    ViewCompat.setImportantForAccessibility(this, 1);
    mDragHelper = ViewDragHelper.create(this, 0.5F, new SlidingPaneLayout.DragHelperCallback(this, null));
    mDragHelper.setMinVelocity(f * 400.0F);
  }
  
  private boolean closePane(View paramView, int paramInt)
  {
    boolean bool = false;
    if ((mFirstLayout) || (smoothSlideTo(0.0F, paramInt)))
    {
      mPreservedOpenState = false;
      bool = true;
    }
    return bool;
  }
  
  private void dimChildView(View paramView, float paramFloat, int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (dimPaint == null) {
        dimPaint = new Paint();
      }
      dimPaint.setColorFilter(new PorterDuffColorFilter(i << 24 | 0xFFFFFF & paramInt, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.getLayerType(paramView) != 2) {
        ViewCompat.setLayerType(paramView, 2, dimPaint);
      }
      invalidateChildRegion(paramView);
    }
    while (ViewCompat.getLayerType(paramView) == 0)
    {
      int i;
      return;
    }
    if (dimPaint != null) {
      dimPaint.setColorFilter(null);
    }
    paramView = new SlidingPaneLayout.DisableLayerRunnable(this, paramView);
    mPostedRunnables.add(paramView);
    ViewCompat.postOnAnimation(this, paramView);
  }
  
  private void invalidateChildRegion(View paramView)
  {
    IMPL.invalidateChildRegion(this, paramView);
  }
  
  private boolean isLayoutRtlSupport()
  {
    return ViewCompat.getLayoutDirection(this) == 1;
  }
  
  private void onPanelDragged(int paramInt)
  {
    if (mSlideableView == null)
    {
      mSlideOffset = 0.0F;
      return;
    }
    boolean bool = isLayoutRtlSupport();
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)mSlideableView.getLayoutParams();
    int j = mSlideableView.getWidth();
    int i = paramInt;
    if (bool) {
      i = getWidth() - paramInt - j;
    }
    if (bool)
    {
      paramInt = getPaddingRight();
      if (!bool) {
        break label148;
      }
    }
    label148:
    for (j = rightMargin;; j = leftMargin)
    {
      mSlideOffset = ((i - (j + paramInt)) / mSlideRange);
      if (mParallaxBy != 0) {
        parallaxOtherViews(mSlideOffset);
      }
      if (dimWhenOffset) {
        dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
      }
      dispatchOnPanelSlide(mSlideableView);
      return;
      paramInt = getPaddingLeft();
      break;
    }
  }
  
  private boolean openPane(View paramView, int paramInt)
  {
    if ((mFirstLayout) || (smoothSlideTo(1.0F, paramInt)))
    {
      mPreservedOpenState = true;
      return true;
    }
    return false;
  }
  
  private void parallaxOtherViews(float paramFloat)
  {
    boolean bool = isLayoutRtlSupport();
    Object localObject = (SlidingPaneLayout.LayoutParams)mSlideableView.getLayoutParams();
    int i;
    label43:
    int j;
    if (dimWhenOffset) {
      if (bool)
      {
        i = rightMargin;
        if (i > 0) {
          break label94;
        }
        i = 1;
        int n = getChildCount();
        j = 0;
        label52:
        if (j >= n) {
          return;
        }
        localObject = getChildAt(j);
        if (localObject != mSlideableView) {
          break label99;
        }
      }
    }
    label94:
    label99:
    do
    {
      j += 1;
      break label52;
      i = leftMargin;
      break;
      i = 0;
      break label43;
      int k = (int)((1.0F - mParallaxOffset) * mParallaxBy);
      mParallaxOffset = paramFloat;
      int m = k - (int)((1.0F - paramFloat) * mParallaxBy);
      k = m;
      if (bool) {
        k = -m;
      }
      ((View)localObject).offsetLeftAndRight(k);
    } while (i == 0);
    if (bool) {}
    for (float f = mParallaxOffset - 1.0F;; f = 1.0F - mParallaxOffset)
    {
      dimChildView((View)localObject, f, mCoveredFadeColor);
      break;
    }
  }
  
  private static boolean viewIsOpaque(View paramView)
  {
    if (ViewCompat.isOpaque(paramView)) {}
    do
    {
      return true;
      if (Build.VERSION.SDK_INT >= 18) {
        return false;
      }
      paramView = paramView.getBackground();
      if (paramView == null) {
        break;
      }
    } while (paramView.getOpacity() == -1);
    return false;
    return false;
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      i = localViewGroup.getChildCount() - 1;
      if (i >= 0)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j < localView.getLeft()) || (paramInt2 + j >= localView.getRight()) || (paramInt3 + k < localView.getTop()) || (paramInt3 + k >= localView.getBottom()) || (!canScroll(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {}
      }
    }
    for (;;)
    {
      return true;
      i -= 1;
      break;
      if (paramBoolean) {
        if (!isLayoutRtlSupport()) {
          break label165;
        }
      }
      while (!ViewCompat.canScrollHorizontally(paramView, paramInt1))
      {
        return false;
        label165:
        paramInt1 = -paramInt1;
      }
    }
  }
  
  @Deprecated
  public boolean canSlide()
  {
    return mCanSlide;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof SlidingPaneLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public boolean closePane()
  {
    return closePane(mSlideableView, 0);
  }
  
  public void computeScroll()
  {
    if (mDragHelper.continueSettling(true))
    {
      if (!mCanSlide) {
        mDragHelper.abort();
      }
    }
    else {
      return;
    }
    ViewCompat.postInvalidateOnAnimation(this);
  }
  
  void dispatchOnPanelClosed(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelClosed(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  void dispatchOnPanelOpened(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelOpened(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  void dispatchOnPanelSlide(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelSlide(paramView, mSlideOffset);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    if (isLayoutRtlSupport())
    {
      localDrawable = mShadowDrawableRight;
      if (getChildCount() <= 1) {
        break label53;
      }
    }
    label53:
    for (View localView = getChildAt(1);; localView = null)
    {
      if ((localView != null) && (localDrawable != null)) {
        break label59;
      }
      return;
      localDrawable = mShadowDrawableLeft;
      break;
    }
    label59:
    int k = localView.getTop();
    int m = localView.getBottom();
    int n = localDrawable.getIntrinsicWidth();
    int j;
    int i;
    if (isLayoutRtlSupport())
    {
      j = localView.getRight();
      i = j + n;
    }
    for (;;)
    {
      localDrawable.setBounds(j, k, i, m);
      localDrawable.draw(paramCanvas);
      return;
      i = localView.getLeft();
      j = i - n;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i = paramCanvas.save(2);
    boolean bool;
    if ((mCanSlide) && (!slideable) && (mSlideableView != null))
    {
      paramCanvas.getClipBounds(mTmpRect);
      if (isLayoutRtlSupport())
      {
        mTmpRect.left = Math.max(mTmpRect.left, mSlideableView.getRight());
        paramCanvas.clipRect(mTmpRect);
      }
    }
    else
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label140;
      }
      bool = super.drawChild(paramCanvas, paramView, paramLong);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i);
      return bool;
      mTmpRect.right = Math.min(mTmpRect.right, mSlideableView.getLeft());
      break;
      label140:
      if ((dimWhenOffset) && (mSlideOffset > 0.0F))
      {
        if (!paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(true);
        }
        Bitmap localBitmap = paramView.getDrawingCache();
        if (localBitmap != null)
        {
          paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), dimPaint);
          bool = false;
        }
        else
        {
          new StringBuilder().append("drawChild: child view ").append(paramView).append(" returned null drawing cache").toString();
          bool = super.drawChild(paramCanvas, paramView, paramLong);
        }
      }
      else
      {
        if (paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(false);
        }
        bool = super.drawChild(paramCanvas, paramView, paramLong);
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new SlidingPaneLayout.LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new SlidingPaneLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new SlidingPaneLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new SlidingPaneLayout.LayoutParams(paramLayoutParams);
  }
  
  public int getCoveredFadeColor()
  {
    return mCoveredFadeColor;
  }
  
  public int getParallaxDistance()
  {
    return mParallaxBy;
  }
  
  public int getSliderFadeColor()
  {
    return mSliderFadeColor;
  }
  
  boolean isDimmed(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((mCanSlide) && (dimWhenOffset) && (mSlideOffset > 0.0F)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean isOpen()
  {
    return (!mCanSlide) || (mSlideOffset == 1.0F);
  }
  
  public boolean isSlideable()
  {
    return mCanSlide;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    mFirstLayout = true;
    int j = mPostedRunnables.size();
    int i = 0;
    while (i < j)
    {
      ((SlidingPaneLayout.DisableLayerRunnable)mPostedRunnables.get(i)).run();
      i += 1;
    }
    mPostedRunnables.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((!mCanSlide) && (i == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        if (mDragHelper.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label108;
        }
      }
    }
    label108:
    for (boolean bool1 = true;; bool1 = false)
    {
      mPreservedOpenState = bool1;
      if ((mCanSlide) && ((!mIsUnableToDrag) || (i == 0))) {
        break;
      }
      mDragHelper.cancel();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i == 3) || (i == 1))
    {
      mDragHelper.cancel();
      return false;
    }
    switch (i)
    {
    }
    label164:
    float f1;
    float f2;
    do
    {
      for (i = 0;; i = 1)
      {
        if (!mDragHelper.shouldInterceptTouchEvent(paramMotionEvent))
        {
          bool1 = bool2;
          if (i == 0) {
            break;
          }
        }
        return true;
        mIsUnableToDrag = false;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        mInitialMotionX = f1;
        mInitialMotionY = f2;
        if ((!mDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2)) || (!isDimmed(mSlideableView))) {
          break label164;
        }
      }
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      f2 = Math.abs(f2 - mInitialMotionX);
      f1 = Math.abs(f1 - mInitialMotionY);
    } while ((f2 <= mDragHelper.getTouchSlop()) || (f1 <= f2));
    mDragHelper.cancel();
    mIsUnableToDrag = true;
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = isLayoutRtlSupport();
    int k;
    label35:
    label46:
    int n;
    int m;
    if (bool)
    {
      mDragHelper.setEdgeTrackingEnabled(2);
      k = paramInt3 - paramInt1;
      if (!bool) {
        break label154;
      }
      paramInt1 = getPaddingRight();
      if (!bool) {
        break label162;
      }
      paramInt4 = getPaddingLeft();
      n = getPaddingTop();
      m = getChildCount();
      if (mFirstLayout) {
        if ((!mCanSlide) || (!mPreservedOpenState)) {
          break label171;
        }
      }
    }
    View localView;
    label154:
    label162:
    label171:
    for (float f = 1.0F;; f = 0.0F)
    {
      mSlideOffset = f;
      int i = 0;
      for (paramInt2 = paramInt1;; paramInt2 = paramInt3)
      {
        if (i >= m) {
          break label451;
        }
        localView = getChildAt(i);
        if (localView.getVisibility() != 8) {
          break;
        }
        paramInt3 = paramInt1;
        paramInt1 = paramInt2;
        paramInt2 = paramInt3;
        i += 1;
        paramInt3 = paramInt1;
        paramInt1 = paramInt2;
      }
      mDragHelper.setEdgeTrackingEnabled(1);
      break;
      paramInt1 = getPaddingLeft();
      break label35;
      paramInt4 = getPaddingRight();
      break label46;
    }
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
    int i1 = localView.getMeasuredWidth();
    int j;
    if (slideable)
    {
      paramInt3 = leftMargin;
      j = rightMargin;
      j = Math.min(paramInt1, k - paramInt4 - mOverhangSize) - paramInt2 - (paramInt3 + j);
      mSlideRange = j;
      if (bool)
      {
        paramInt3 = rightMargin;
        label258:
        if (paramInt2 + paramInt3 + j + i1 / 2 <= k - paramInt4) {
          break label388;
        }
        paramBoolean = true;
        label280:
        dimWhenOffset = paramBoolean;
        j = (int)(j * mSlideOffset);
        paramInt2 += paramInt3 + j;
        mSlideOffset = (j / mSlideRange);
        paramInt3 = 0;
        label321:
        if (!bool) {
          break label435;
        }
        j = k - paramInt2 + paramInt3;
        paramInt3 = j - i1;
      }
    }
    for (;;)
    {
      localView.layout(paramInt3, n, j, localView.getMeasuredHeight() + n);
      paramInt3 = localView.getWidth() + paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      break;
      paramInt3 = leftMargin;
      break label258;
      label388:
      paramBoolean = false;
      break label280;
      if ((mCanSlide) && (mParallaxBy != 0))
      {
        paramInt3 = (int)((1.0F - mSlideOffset) * mParallaxBy);
        paramInt2 = paramInt1;
        break label321;
      }
      paramInt3 = 0;
      paramInt2 = paramInt1;
      break label321;
      label435:
      paramInt3 = paramInt2 - paramInt3;
      j = paramInt3 + i1;
    }
    label451:
    if (mFirstLayout)
    {
      if (!mCanSlide) {
        break label526;
      }
      if (mParallaxBy != 0) {
        parallaxOtherViews(mSlideOffset);
      }
      if (mSlideableView.getLayoutParams()).dimWhenOffset) {
        dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
      }
    }
    for (;;)
    {
      updateObscuredViewsVisibility(mSlideableView);
      mFirstLayout = false;
      return;
      label526:
      paramInt1 = 0;
      while (paramInt1 < m)
      {
        dimChildView(getChildAt(paramInt1), 0.0F, mSliderFadeColor);
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    if (k != 1073741824) {
      if (isInEditMode()) {
        if (k == Integer.MIN_VALUE)
        {
          paramInt2 = i;
          i = j;
        }
      }
    }
    for (;;)
    {
      label85:
      boolean bool1;
      int i2;
      int i3;
      int i1;
      float f1;
      label121:
      View localView;
      SlidingPaneLayout.LayoutParams localLayoutParams;
      switch (i)
      {
      default: 
        paramInt1 = 0;
        k = -1;
        bool1 = false;
        i2 = paramInt2 - getPaddingLeft() - getPaddingRight();
        i3 = getChildCount();
        mSlideableView = null;
        i1 = 0;
        j = i2;
        f1 = 0.0F;
        if (i1 >= i3) {
          break label602;
        }
        localView = getChildAt(i1);
        localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
        if (localView.getVisibility() == 8)
        {
          dimWhenOffset = false;
          m = j;
          j = paramInt1;
          paramInt1 = m;
        }
        break;
      }
      float f2;
      for (;;)
      {
        i1 += 1;
        m = j;
        j = paramInt1;
        paramInt1 = m;
        break label121;
        if (k != 0) {
          break label1090;
        }
        i = j;
        paramInt2 = 300;
        break;
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        if (j != 0) {
          break label1090;
        }
        if (isInEditMode())
        {
          if (j != 0) {
            break label1090;
          }
          j = Integer.MIN_VALUE;
          paramInt2 = i;
          paramInt1 = 300;
          i = j;
          break;
        }
        throw new IllegalStateException("Height must not be UNSPECIFIED");
        paramInt1 = paramInt1 - getPaddingTop() - getPaddingBottom();
        k = paramInt1;
        break label85;
        k = getPaddingTop();
        m = getPaddingBottom();
        j = 0;
        k = paramInt1 - k - m;
        paramInt1 = j;
        break label85;
        f2 = f1;
        if (weight <= 0.0F) {
          break label358;
        }
        f1 += weight;
        f2 = f1;
        if (width != 0) {
          break label358;
        }
        m = paramInt1;
        paramInt1 = j;
        j = m;
      }
      label358:
      int m = leftMargin + rightMargin;
      label394:
      int n;
      label414:
      int i4;
      if (width == -2)
      {
        m = View.MeasureSpec.makeMeasureSpec(i2 - m, Integer.MIN_VALUE);
        if (height != -2) {
          break label558;
        }
        n = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
        localView.measure(m, n);
        n = localView.getMeasuredWidth();
        i4 = localView.getMeasuredHeight();
        m = paramInt1;
        if (i == Integer.MIN_VALUE)
        {
          m = paramInt1;
          if (i4 > paramInt1) {
            m = Math.min(i4, k);
          }
        }
        paramInt1 = j - n;
        if (paramInt1 >= 0) {
          break label596;
        }
      }
      label558:
      label596:
      for (boolean bool2 = true;; bool2 = false)
      {
        slideable = bool2;
        if (slideable) {
          mSlideableView = localView;
        }
        j = m;
        bool1 = bool2 | bool1;
        f1 = f2;
        break;
        if (width == -1)
        {
          m = View.MeasureSpec.makeMeasureSpec(i2 - m, 1073741824);
          break label394;
        }
        m = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
        break label394;
        if (height == -1)
        {
          n = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
          break label414;
        }
        n = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
        break label414;
      }
      label602:
      if ((bool1) || (f1 > 0.0F))
      {
        i1 = i2 - mOverhangSize;
        m = 0;
        if (m < i3)
        {
          localView = getChildAt(m);
          if (localView.getVisibility() == 8) {}
          for (;;)
          {
            m += 1;
            break;
            localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
            if (localView.getVisibility() != 8)
            {
              if ((width == 0) && (weight > 0.0F))
              {
                i = 1;
                label700:
                if (i == 0) {
                  break label796;
                }
                n = 0;
                label708:
                if ((!bool1) || (localView == mSlideableView)) {
                  break label860;
                }
                if ((width >= 0) || ((n <= i1) && (weight <= 0.0F))) {
                  continue;
                }
                if (i == 0) {
                  break label844;
                }
                if (height != -2) {
                  break label806;
                }
                i = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
              }
              for (;;)
              {
                localView.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), i);
                break;
                i = 0;
                break label700;
                label796:
                n = localView.getMeasuredWidth();
                break label708;
                label806:
                if (height == -1)
                {
                  i = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
                }
                else
                {
                  i = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                  continue;
                  label844:
                  i = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                }
              }
              label860:
              if (weight > 0.0F)
              {
                if (width == 0) {
                  if (height == -2) {
                    i = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
                  }
                }
                for (;;)
                {
                  if (!bool1) {
                    break label1006;
                  }
                  i4 = leftMargin;
                  i4 = i2 - (rightMargin + i4);
                  int i5 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                  if (n == i4) {
                    break;
                  }
                  localView.measure(i5, i);
                  break;
                  if (height == -1)
                  {
                    i = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
                  }
                  else
                  {
                    i = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                    continue;
                    i = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                  }
                }
                label1006:
                i4 = Math.max(0, j);
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(weight * i4 / f1) + n, 1073741824), i);
              }
            }
          }
        }
      }
      setMeasuredDimension(paramInt2, getPaddingTop() + paramInt1 + getPaddingBottom());
      mCanSlide = bool1;
      if ((mDragHelper.getViewDragState() != 0) && (!bool1)) {
        mDragHelper.abort();
      }
      return;
      label1090:
      paramInt2 = i;
      i = j;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SlidingPaneLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (isOpen) {
      openPane();
    }
    for (;;)
    {
      mPreservedOpenState = isOpen;
      return;
      closePane();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SlidingPaneLayout.SavedState localSavedState = new SlidingPaneLayout.SavedState(super.onSaveInstanceState());
    if (isSlideable()) {}
    for (boolean bool = isOpen();; bool = mPreservedOpenState)
    {
      isOpen = bool;
      return localSavedState;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      mFirstLayout = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (!mCanSlide) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    float f1;
    float f2;
    do
    {
      int i;
      boolean bool2;
      float f3;
      float f4;
      do
      {
        do
        {
          return bool1;
          mDragHelper.processTouchEvent(paramMotionEvent);
          i = paramMotionEvent.getAction();
          bool2 = true;
          switch (i & 0xFF)
          {
          default: 
            return true;
          case 0: 
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            mInitialMotionX = f1;
            mInitialMotionY = f2;
            return true;
          }
          bool1 = bool2;
        } while (!isDimmed(mSlideableView));
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        f3 = f1 - mInitialMotionX;
        f4 = f2 - mInitialMotionY;
        i = mDragHelper.getTouchSlop();
        bool1 = bool2;
      } while (f3 * f3 + f4 * f4 >= i * i);
      bool1 = bool2;
    } while (!mDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2));
    closePane(mSlideableView, 0);
    return true;
  }
  
  public boolean openPane()
  {
    return openPane(mSlideableView, 0);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!mCanSlide)) {
      if (paramView1 != mSlideableView) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      mPreservedOpenState = bool;
      return;
    }
  }
  
  void setAllChildrenVisible()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i += 1;
    }
  }
  
  public void setCoveredFadeColor(int paramInt)
  {
    mCoveredFadeColor = paramInt;
  }
  
  public void setPanelSlideListener(SlidingPaneLayout.PanelSlideListener paramPanelSlideListener)
  {
    mPanelSlideListener = paramPanelSlideListener;
  }
  
  public void setParallaxDistance(int paramInt)
  {
    mParallaxBy = paramInt;
    requestLayout();
  }
  
  @Deprecated
  public void setShadowDrawable(Drawable paramDrawable)
  {
    setShadowDrawableLeft(paramDrawable);
  }
  
  public void setShadowDrawableLeft(Drawable paramDrawable)
  {
    mShadowDrawableLeft = paramDrawable;
  }
  
  public void setShadowDrawableRight(Drawable paramDrawable)
  {
    mShadowDrawableRight = paramDrawable;
  }
  
  @Deprecated
  public void setShadowResource(@DrawableRes int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceLeft(int paramInt)
  {
    setShadowDrawableLeft(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceRight(int paramInt)
  {
    setShadowDrawableRight(getResources().getDrawable(paramInt));
  }
  
  public void setSliderFadeColor(int paramInt)
  {
    mSliderFadeColor = paramInt;
  }
  
  @Deprecated
  public void smoothSlideClosed()
  {
    closePane();
  }
  
  @Deprecated
  public void smoothSlideOpen()
  {
    openPane();
  }
  
  boolean smoothSlideTo(float paramFloat, int paramInt)
  {
    if (!mCanSlide) {
      return false;
    }
    boolean bool = isLayoutRtlSupport();
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)mSlideableView.getLayoutParams();
    int i;
    int j;
    if (bool)
    {
      paramInt = getPaddingRight();
      i = rightMargin;
      j = mSlideableView.getWidth();
    }
    for (paramInt = (int)(getWidth() - (i + paramInt + mSlideRange * paramFloat + j)); mDragHelper.smoothSlideViewTo(mSlideableView, paramInt, mSlideableView.getTop()); paramInt = (int)(leftMargin + paramInt + mSlideRange * paramFloat))
    {
      setAllChildrenVisible();
      ViewCompat.postInvalidateOnAnimation(this);
      return true;
      paramInt = getPaddingLeft();
    }
    return false;
  }
  
  void updateObscuredViewsVisibility(View paramView)
  {
    boolean bool = isLayoutRtlSupport();
    int i;
    int j;
    label31:
    int i4;
    int i5;
    int i6;
    int i1;
    int n;
    int m;
    int k;
    if (bool)
    {
      i = getWidth() - getPaddingRight();
      if (!bool) {
        break label123;
      }
      j = getPaddingLeft();
      i4 = getPaddingTop();
      i5 = getHeight();
      i6 = getPaddingBottom();
      if ((paramView == null) || (!viewIsOpaque(paramView))) {
        break label136;
      }
      i1 = paramView.getLeft();
      n = paramView.getRight();
      m = paramView.getTop();
      k = paramView.getBottom();
    }
    int i2;
    View localView;
    for (;;)
    {
      int i7 = getChildCount();
      i2 = 0;
      if (i2 < i7)
      {
        localView = getChildAt(i2);
        if (localView != paramView) {
          break label151;
        }
      }
      return;
      i = getPaddingLeft();
      break;
      label123:
      j = getWidth() - getPaddingRight();
      break label31;
      label136:
      k = 0;
      m = 0;
      n = 0;
      i1 = 0;
    }
    label151:
    if (bool)
    {
      i3 = j;
      label159:
      int i8 = Math.max(i3, localView.getLeft());
      int i9 = Math.max(i4, localView.getTop());
      if (!bool) {
        break label271;
      }
      i3 = i;
      label191:
      i3 = Math.min(i3, localView.getRight());
      int i10 = Math.min(i5 - i6, localView.getBottom());
      if ((i8 < i1) || (i9 < m) || (i3 > n) || (i10 > k)) {
        break label277;
      }
    }
    label271:
    label277:
    for (int i3 = 4;; i3 = 0)
    {
      localView.setVisibility(i3);
      i2 += 1;
      break;
      i3 = i;
      break label159;
      i3 = j;
      break label191;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */