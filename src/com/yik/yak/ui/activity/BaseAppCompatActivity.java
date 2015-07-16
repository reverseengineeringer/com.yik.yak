package com.yik.yak.ui.activity;

import AX;
import Ha;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

public class BaseAppCompatActivity
  extends AppCompatActivity
{
  protected Toolbar a;
  protected boolean b = true;
  
  protected void a(EditText paramEditText)
  {
    new Handler(Looper.getMainLooper()).post(new AX(this, paramEditText));
  }
  
  protected void a(String paramString)
  {
    a = ((Toolbar)findViewById(2131558500));
    if (a != null)
    {
      b(paramString);
      setSupportActionBar(a);
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
  }
  
  public void b()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(findViewById(16908290).getRootView().getWindowToken(), 0);
  }
  
  public void b(String paramString)
  {
    a.setTitle(paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Build.VERSION.SDK_INT > 21) {
      getWindow().addFlags(Integer.MIN_VALUE);
    }
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      onBackPressed();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if (b) {
      Ha.a().h();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (b) {
      Ha.a().g();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.BaseAppCompatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */