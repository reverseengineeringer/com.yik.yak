package com.yik.yak.ui.fragment;

import AH;
import CU;
import DL;
import Ha;
import Hi;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.yik.yak.ui.activity.MainActivity;

public class BaseFragment
  extends Fragment
{
  protected String a = "";
  protected boolean b = false;
  
  public void a(CU paramCU, Fragment paramFragment)
  {
    h().a(paramCU, paramFragment);
  }
  
  protected void a(EditText paramEditText)
  {
    new Handler().postDelayed(new DL(this, paramEditText), 200L);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public MainActivity h()
  {
    if ((getActivity() instanceof MainActivity)) {
      return (MainActivity)getActivity();
    }
    throw new AH();
  }
  
  protected void i()
  {
    try
    {
      ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getActivity().findViewById(16908290).getRootView().getWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void j()
  {
    if (!b)
    {
      b = true;
      try
      {
        getFragmentManager().executePendingTransactions();
        int j = getFragmentManager().getBackStackEntryCount();
        int i = 0;
        while (i < j)
        {
          getFragmentManager().popBackStack();
          i += 1;
        }
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localIllegalStateException.printStackTrace();
        b = false;
      }
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!Hi.a(a)) {
      Ha.a().a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.BaseFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */