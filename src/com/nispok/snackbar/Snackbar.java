package com.nispok.snackbar;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.nispok.snackbar.layouts.SnackbarLayout;
import vX;
import wA;
import wd;
import we;
import wf;
import wg;
import wh;
import wi;
import wj;
import wk;
import wl;
import wm;
import wn;
import wo;
import wp;
import wr;
import wt;
import wu;
import wv;
import wx;
import wy;
import wz;

public class Snackbar
  extends SnackbarLayout
{
  private boolean A;
  private boolean B = true;
  private wz C;
  private Typeface D;
  private Typeface E;
  private boolean F = false;
  private boolean G = true;
  private boolean H = false;
  private Rect I = new Rect();
  private Rect J = new Rect();
  private Point K = new Point();
  private Point L = new Point();
  private Activity M;
  private Float N = null;
  private boolean O;
  private Runnable P = new wk(this);
  private Runnable Q = new wl(this);
  private int a = 55536;
  private int b = 55536;
  private wx c = wx.a;
  private wt d = wt.b;
  private CharSequence e;
  private TextView f;
  private int g = a;
  private int h = a;
  private int i;
  private wu j = wu.b;
  private int k = b;
  private int l = 0;
  private int m = 0;
  private int n = 0;
  private int o = 0;
  private long p;
  private long q;
  private long r = -1L;
  private CharSequence s;
  private int t = a;
  private boolean u = true;
  private boolean v = false;
  private boolean w = false;
  private long x = -1L;
  private wy y;
  private boolean z;
  
  private Snackbar(Context paramContext)
  {
    super(paramContext);
    if (Build.VERSION.SDK_INT >= 16) {
      addView(new wv(getContext()));
    }
  }
  
  private static int a(int paramInt, float paramFloat)
  {
    return (int)(paramInt * paramFloat + 0.5F);
  }
  
  public static int a(wu paramwu)
  {
    if (paramwu == wu.a) {
      return wd.sb__top_in;
    }
    return wd.sb__bottom_in;
  }
  
  private ViewGroup.MarginLayoutParams a(Context paramContext, Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    SnackbarLayout localSnackbarLayout = (SnackbarLayout)LayoutInflater.from(paramContext).inflate(wj.sb__template, this, true);
    Resources localResources = getResources();
    int i1;
    float f1;
    if (g != a)
    {
      i1 = g;
      g = i1;
      i = localResources.getDimensionPixelOffset(wg.sb__offset);
      O = paramBoolean;
      f1 = getDisplayMetricsdensity;
      if (!O) {
        break label377;
      }
      localSnackbarLayout.setMinimumHeight(a(c.a(), f1));
      localSnackbarLayout.setMaxHeight(a(c.b(), f1));
      localSnackbarLayout.setBackgroundColor(g);
      paramContext = a(paramViewGroup, -1, -2, j);
      if (k != b) {
        setBackgroundDrawable(localSnackbarLayout, localResources.getDrawable(k));
      }
      f = ((TextView)localSnackbarLayout.findViewById(wi.sb__text));
      f.setText(e);
      f.setTypeface(D);
      if (h != a) {
        f.setTextColor(h);
      }
      f.setMaxLines(c.c());
      paramActivity = (TextView)localSnackbarLayout.findViewById(wi.sb__action);
      if (TextUtils.isEmpty(s)) {
        break label483;
      }
      requestLayout();
      paramActivity.setText(s);
      paramActivity.setTypeface(E);
      if (t != a) {
        paramActivity.setTextColor(t);
      }
      paramActivity.setOnClickListener(new wm(this));
      paramActivity.setMaxLines(c.c());
    }
    for (;;)
    {
      setClickable(true);
      if ((G) && (localResources.getBoolean(we.sb__is_swipeable))) {
        setOnTouchListener(new wA(this, null, new wn(this)));
      }
      return paramContext;
      i1 = localResources.getColor(wf.sb__background);
      break;
      label377:
      c = wx.a;
      localSnackbarLayout.setMinimumWidth(localResources.getDimensionPixelSize(wg.sb__min_width));
      if (N == null) {}
      for (i1 = localResources.getDimensionPixelSize(wg.sb__max_width);; i1 = vX.a(paramActivity, N))
      {
        localSnackbarLayout.setMaxWidth(i1);
        localSnackbarLayout.setBackgroundResource(wh.sb__bg);
        ((GradientDrawable)localSnackbarLayout.getBackground()).setColor(g);
        paramContext = a(paramViewGroup, -2, a(c.b(), f1), j);
        break;
      }
      label483:
      paramActivity.setVisibility(8);
    }
  }
  
  private static ViewGroup.MarginLayoutParams a(ViewGroup paramViewGroup, int paramInt1, int paramInt2, wu paramwu)
  {
    if ((paramViewGroup instanceof FrameLayout))
    {
      paramViewGroup = new FrameLayout.LayoutParams(paramInt1, paramInt2);
      gravity = paramwu.a();
      return paramViewGroup;
    }
    if ((paramViewGroup instanceof RelativeLayout))
    {
      paramViewGroup = new RelativeLayout.LayoutParams(paramInt1, paramInt2);
      if (paramwu == wu.a)
      {
        paramViewGroup.addRule(10, -1);
        return paramViewGroup;
      }
      paramViewGroup.addRule(12, -1);
      return paramViewGroup;
    }
    if ((paramViewGroup instanceof LinearLayout))
    {
      paramViewGroup = new LinearLayout.LayoutParams(paramInt1, paramInt2);
      gravity = paramwu.a();
      return paramViewGroup;
    }
    throw new IllegalStateException("Requires FrameLayout or RelativeLayout for the parent of Snackbar");
  }
  
  public static Snackbar a(Context paramContext)
  {
    return new Snackbar(paramContext);
  }
  
  private void a(long paramLong)
  {
    postDelayed(P, paramLong);
  }
  
  private void a(Activity paramActivity, Rect paramRect)
  {
    bottom = 0;
    right = 0;
    top = 0;
    left = 0;
    if (paramActivity == null) {}
    boolean bool1;
    boolean bool2;
    Point localPoint1;
    Point localPoint2;
    do
    {
      do
      {
        return;
        ViewGroup localViewGroup = (ViewGroup)paramActivity.getWindow().getDecorView();
        Display localDisplay = paramActivity.getWindowManager().getDefaultDisplay();
        bool1 = c(paramActivity);
        bool2 = a(localViewGroup);
        paramActivity = J;
        localPoint1 = L;
        localPoint2 = K;
        localViewGroup.getWindowVisibleDisplayFrame(paramActivity);
        vX.b(localDisplay, localPoint1);
        vX.a(localDisplay, localPoint2);
        if (x >= x) {
          break;
        }
      } while ((!bool1) && (!bool2));
      right = Math.max(Math.min(x - x, x - right), 0);
      return;
    } while ((y >= y) || ((!bool1) && (!bool2)));
    bottom = Math.max(Math.min(y - y, y - bottom), 0);
  }
  
  private void a(Activity paramActivity, ViewGroup.MarginLayoutParams paramMarginLayoutParams, ViewGroup paramViewGroup)
  {
    paramViewGroup.removeView(this);
    paramViewGroup.addView(this, paramMarginLayoutParams);
    bringToFront();
    if (Build.VERSION.SDK_INT < 19)
    {
      paramViewGroup.requestLayout();
      paramViewGroup.invalidate();
    }
    F = true;
    M = paramActivity;
    getViewTreeObserver().addOnPreDrawListener(new wo(this));
    if (!u)
    {
      if (i()) {
        k();
      }
      return;
    }
    paramActivity = AnimationUtils.loadAnimation(getContext(), a(j));
    paramActivity.setAnimationListener(new wp(this));
    startAnimation(paramActivity);
  }
  
  @TargetApi(16)
  private boolean a(ViewGroup paramViewGroup)
  {
    if (Build.VERSION.SDK_INT < 16) {}
    while ((paramViewGroup.getWindowSystemUiVisibility() & 0x200) != 512) {
      return false;
    }
    return true;
  }
  
  public static int b(wu paramwu)
  {
    if (paramwu == wu.a) {
      return wd.sb__top_out;
    }
    return wd.sb__bottom_out;
  }
  
  private void b(boolean paramBoolean)
  {
    if (H) {
      return;
    }
    H = true;
    if (!paramBoolean)
    {
      l();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), b(j));
    localAnimation.setAnimationListener(new wr(this));
    startAnimation(localAnimation);
  }
  
  public static boolean b(Context paramContext)
  {
    if (paramContext == null) {
      return true;
    }
    return paramContext.getResources().getBoolean(we.sb__is_phone);
  }
  
  private boolean c(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT < 19) {}
    while ((getWindowgetAttributesflags & 0x8000000) == 0) {
      return false;
    }
    return true;
  }
  
  private boolean i()
  {
    return !j();
  }
  
  private boolean j()
  {
    return e() == wt.c.a();
  }
  
  private void k()
  {
    postDelayed(P, e());
  }
  
  private void l()
  {
    clearAnimation();
    ViewGroup localViewGroup = (ViewGroup)getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(this);
    }
    F = false;
    v = false;
    M = null;
  }
  
  public static void setBackgroundDrawable(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT < 16)
    {
      paramView.setBackgroundDrawable(paramDrawable);
      return;
    }
    paramView.setBackground(paramDrawable);
  }
  
  public Snackbar a(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public Snackbar a(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    if (f != null) {
      f.setText(e);
    }
    return this;
  }
  
  public Snackbar a(wt paramwt)
  {
    d = paramwt;
    return this;
  }
  
  public Snackbar a(wx paramwx)
  {
    c = paramwx;
    return this;
  }
  
  public Snackbar a(wy paramwy)
  {
    y = paramwy;
    return this;
  }
  
  public Snackbar a(boolean paramBoolean)
  {
    G = paramBoolean;
    return this;
  }
  
  public void a()
  {
    v = true;
    b();
  }
  
  public void a(Activity paramActivity)
  {
    w = true;
    b(paramActivity);
  }
  
  protected void a(Activity paramActivity, ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    if (O)
    {
      topMargin = l;
      rightMargin = o;
      leftMargin = n;
    }
    for (bottomMargin = m;; bottomMargin = (m + i))
    {
      a(paramActivity, I);
      rightMargin += I.right;
      bottomMargin += I.bottom;
      return;
      topMargin = l;
      rightMargin = o;
      leftMargin = (n + i);
    }
  }
  
  public void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    w = true;
    b(paramViewGroup, paramBoolean);
  }
  
  public Snackbar b(CharSequence paramCharSequence)
  {
    s = paramCharSequence;
    return this;
  }
  
  public void b()
  {
    b(u);
  }
  
  public void b(int paramInt)
  {
    c(paramInt);
  }
  
  public void b(Activity paramActivity)
  {
    ViewGroup localViewGroup = (ViewGroup)paramActivity.findViewById(16908290);
    ViewGroup.MarginLayoutParams localMarginLayoutParams = a(paramActivity, paramActivity, localViewGroup, b(paramActivity));
    a(paramActivity, localMarginLayoutParams);
    a(paramActivity, localMarginLayoutParams, localViewGroup);
  }
  
  public void b(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = a(paramViewGroup.getContext(), null, paramViewGroup, paramBoolean);
    a(null, localMarginLayoutParams);
    a(null, localMarginLayoutParams, paramViewGroup);
  }
  
  public void c()
  {
    if (H) {}
    while ((ViewGroup)getParent() == null) {
      return;
    }
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)getLayoutParams();
    a(M, localMarginLayoutParams);
    setLayoutParams(localMarginLayoutParams);
  }
  
  protected void c(int paramInt)
  {
    if (Q != null) {
      post(Q);
    }
  }
  
  public CharSequence d()
  {
    return e;
  }
  
  public long e()
  {
    if (x == -1L) {
      return d.a();
    }
    return x;
  }
  
  public boolean f()
  {
    return F;
  }
  
  public boolean g()
  {
    return H;
  }
  
  public boolean h()
  {
    return !F;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (P != null) {
      removeCallbacks(P);
    }
    if (Q != null) {
      removeCallbacks(Q);
    }
  }
}

/* Location:
 * Qualified Name:     com.nispok.snackbar.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */