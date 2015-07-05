package com.yik.yak.ui.view.navigation;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.TextView;
import zQ;

public class YikYakMainToolbar
  extends Toolbar
{
  private TextView a;
  
  public YikYakMainToolbar(Context paramContext)
  {
    super(paramContext);
  }
  
  public YikYakMainToolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public YikYakMainToolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(2131558834));
  }
  
  public void setActionButtonText(String paramString)
  {
    a.setText(paramString);
  }
  
  public void setActionButtonToYakarma()
  {
    setActionButtonToYakarma(zQ.g());
  }
  
  public void setActionButtonToYakarma(int paramInt)
  {
    a.setText(String.valueOf(paramInt));
  }
  
  public void setOnActionButtonClickedListener(View.OnClickListener paramOnClickListener)
  {
    a.setOnClickListener(paramOnClickListener);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.navigation.YikYakMainToolbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */