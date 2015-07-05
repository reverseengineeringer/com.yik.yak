package com.yik.yak.ui.activity;

import AK;
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
  
  protected void a(EditText paramEditText)
  {
    new Handler(Looper.getMainLooper()).post(new AK(this, paramEditText));
  }
  
  protected void a(String paramString)
  {
    a = ((Toolbar)findViewById(2131558499));
    if (a != null)
    {
      a.setTitle(paramString);
      setSupportActionBar(a);
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
  }
  
  public void b()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(findViewById(16908290).getRootView().getWindowToken(), 0);
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
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.BaseAppCompatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */