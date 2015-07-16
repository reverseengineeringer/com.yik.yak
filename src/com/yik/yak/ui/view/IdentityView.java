package com.yik.yak.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;

public class IdentityView
  extends RelativeLayout
{
  protected ImageView a;
  protected ImageView b;
  
  public IdentityView(Context paramContext)
  {
    super(paramContext);
  }
  
  public IdentityView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public IdentityView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ImageView a()
  {
    if (a == null) {
      a = ((ImageView)findViewById(2131558846));
    }
    return a;
  }
  
  public ImageView b()
  {
    if (b == null) {
      b = ((ImageView)findViewById(2131558847));
    }
    return b;
  }
  
  public void setUrlForBackground(String paramString)
  {
    Picasso.with(getContext()).load(paramString).into(a());
  }
  
  public void setUrlForForeground(String paramString)
  {
    Picasso.with(getContext()).load(paramString).into(b());
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.IdentityView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */