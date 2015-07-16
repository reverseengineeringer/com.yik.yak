package com.yik.yak.ui.activity;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

public abstract class FragmentContainerActivity
  extends BaseAppCompatActivity
{
  private Toolbar c;
  
  protected abstract Fragment a();
  
  protected abstract String c();
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    c = ((Toolbar)findViewById(2131558500));
    setSupportActionBar(c);
    getSupportActionBar().setDisplayShowHomeEnabled(true);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(c());
    if (paramBundle == null)
    {
      paramBundle = a();
      getSupportFragmentManager().beginTransaction().add(2131558513, paramBundle).commit();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    super.onBackPressed();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.FragmentContainerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */