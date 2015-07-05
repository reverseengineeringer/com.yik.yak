package com.yik.yak.ui.view;

import Fl;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class NoDefaultSpinner
  extends Spinner
{
  private Context a;
  
  public NoDefaultSpinner(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
  }
  
  public NoDefaultSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
  }
  
  public NoDefaultSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = paramContext;
  }
  
  protected SpinnerAdapter a(SpinnerAdapter paramSpinnerAdapter)
  {
    ClassLoader localClassLoader = paramSpinnerAdapter.getClass().getClassLoader();
    paramSpinnerAdapter = new Fl(this, paramSpinnerAdapter);
    return (SpinnerAdapter)Proxy.newProxyInstance(localClassLoader, new Class[] { SpinnerAdapter.class }, paramSpinnerAdapter);
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    super.setAdapter(a(paramSpinnerAdapter));
    try
    {
      paramSpinnerAdapter = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", new Class[] { Integer.TYPE });
      paramSpinnerAdapter.setAccessible(true);
      paramSpinnerAdapter.invoke(this, new Object[] { Integer.valueOf(-1) });
      paramSpinnerAdapter = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", new Class[] { Integer.TYPE });
      paramSpinnerAdapter.setAccessible(true);
      paramSpinnerAdapter.invoke(this, new Object[] { Integer.valueOf(-1) });
      return;
    }
    catch (Exception paramSpinnerAdapter)
    {
      throw new RuntimeException(paramSpinnerAdapter);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.NoDefaultSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */