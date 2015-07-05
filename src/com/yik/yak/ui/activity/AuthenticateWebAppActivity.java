package com.yik.yak.ui.activity;

import AJ;
import Aq;
import GF;
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
  private Dialog b;
  private EditText c;
  private Toolbar d;
  
  private void a(int paramInt)
  {
    new AuthenticateWebTokenRequest(Aq.a().b(), paramInt).execute(this, new AJ(this));
  }
  
  private void c()
  {
    setContentView(2130903065);
    c = ((EditText)findViewById(2131558500));
    findViewById(2131558501).setOnClickListener(this);
    a();
  }
  
  private void d()
  {
    String str = c.getText().toString();
    try
    {
      i = Integer.valueOf(str).intValue();
      GF.a(this, new Object[] { "token: " + i });
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
      b = new AlertDialog.Builder(this).setTitle("ZOMG!").setMessage("Make sure you type in a valid number for a Token! Noob.").setNeutralButton("Okay", null).create();
      b.show();
      GF.a(this, new Object[] { "Something went wrong with the token parsing." });
    }
  }
  
  protected void a()
  {
    d = ((Toolbar)findViewById(2131558499));
    d.setTitleTextColor(-1);
    setSupportActionBar(d);
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
    if (b != null) {
      b.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.AuthenticateWebAppActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */