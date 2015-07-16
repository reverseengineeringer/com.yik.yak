package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.internal.jz;
import hC;
import iB;
import iC;

public final class SignInButton
  extends FrameLayout
  implements View.OnClickListener
{
  public static final int COLOR_DARK = 0;
  public static final int COLOR_LIGHT = 1;
  public static final int SIZE_ICON_ONLY = 2;
  public static final int SIZE_STANDARD = 0;
  public static final int SIZE_WIDE = 1;
  private View Jk;
  private View.OnClickListener Jl = null;
  private int mColor;
  private int mSize;
  
  public SignInButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setStyle(0, 0);
  }
  
  private void G(Context paramContext)
  {
    if (Jk != null) {
      removeView(Jk);
    }
    try
    {
      Jk = iC.a(paramContext, mSize, mColor);
      addView(Jk);
      Jk.setEnabled(isEnabled());
      Jk.setOnClickListener(this);
      return;
    }
    catch (hC localhC)
    {
      for (;;)
      {
        Jk = a(paramContext, mSize, mColor);
      }
    }
  }
  
  private static Button a(Context paramContext, int paramInt1, int paramInt2)
  {
    jz localjz = new jz(paramContext);
    localjz.a(paramContext.getResources(), paramInt1, paramInt2);
    return localjz;
  }
  
  public void onClick(View paramView)
  {
    if ((Jl != null) && (paramView == Jk)) {
      Jl.onClick(this);
    }
  }
  
  public void setColorScheme(int paramInt)
  {
    setStyle(mSize, paramInt);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    Jk.setEnabled(paramBoolean);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    Jl = paramOnClickListener;
    if (Jk != null) {
      Jk.setOnClickListener(this);
    }
  }
  
  public void setSize(int paramInt)
  {
    setStyle(paramInt, mColor);
  }
  
  public void setStyle(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < 3))
    {
      bool = true;
      iB.a(bool, "Unknown button size %d", new Object[] { Integer.valueOf(paramInt1) });
      if ((paramInt2 < 0) || (paramInt2 >= 2)) {
        break label80;
      }
    }
    label80:
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool, "Unknown color scheme %s", new Object[] { Integer.valueOf(paramInt2) });
      mSize = paramInt1;
      mColor = paramInt2;
      G(getContext());
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.SignInButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */