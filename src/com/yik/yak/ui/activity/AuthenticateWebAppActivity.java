package com.yik.yak.ui.activity;

import AD;
import AW;
import Hm;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yik.yak.data.http.request.AuthenticateWebTokenRequest;

public class AuthenticateWebAppActivity
  extends BaseAppCompatActivity
  implements View.OnClickListener
{
  private Dialog c;
  private EditText d;
  private Toolbar e;
  
  private void a(int paramInt)
  {
    new AuthenticateWebTokenRequest(AD.a().b(), paramInt).execute(this, new AW(this));
  }
  
  private void c()
  {
    setContentView(2130903065);
    d = ((EditText)findViewById(2131558501));
    findViewById(2131558502).setOnClickListener(this);
    a();
  }
  
  private void d()
  {
    String str = d.getText().toString();
    try
    {
      i = Integer.valueOf(str).intValue();
      Hm.a(this, new Object[] { "token: " + i });
      if (i != -1)
      {
        a(i);
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        int i = -1;
      }
      c = new AlertDialog.Builder(this).setTitle("ZOMG!").setMessage("Make sure you type in a valid number for a Token! Noob.").setNeutralButton("Okay", null).create();
      c.show();
      Hm.a(this, new Object[] { "Something went wrong with the token parsing." });
    }
  }
  
  protected void a()
  {
    e = ((Toolbar)findViewById(2131558500));
    e.setTitleTextColor(-1);
    setSupportActionBar(e);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    super.onBackPressed();
    return false;
  }
  
  protected void onPause()
  {
    super.onPause();
    if (c != null) {
      c.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.AuthenticateWebAppActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */