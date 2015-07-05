package com.yik.yak.ui.activity;

import Az;
import Bf;
import Bg;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.data.db.helper.EnvironmentTableHelper;
import com.yik.yak.data.models.Environment;
import ww;
import wx;

public class NewEnvironmentActivity
  extends BaseAppCompatActivity
{
  protected EditText b;
  public EditText c;
  protected EditText d;
  protected EditText e;
  protected EditText f;
  protected EditText g;
  
  private boolean a()
  {
    return (!b.getText().toString().equals("")) && (!d.getText().toString().equals("")) && (!e.getText().toString().equals("")) && (!f.getText().toString().equals("")) && (!g.getText().toString().equals(""));
  }
  
  private void c()
  {
    Environment localEnvironment = Az.a().b();
    d.setText(localEnvironment.getMainApiEndpoint());
    e.setText(localEnvironment.getNotificationEndpoint());
    f.setText(localEnvironment.getImageUploadUrl());
    g.setText(localEnvironment.getBasecampEndpoint());
  }
  
  private void d()
  {
    Environment localEnvironment = new Environment();
    localEnvironment.setName(b.getText().toString());
    localEnvironment.setShortName(c.toString());
    localEnvironment.setMainApiEndpoint(d.getText().toString());
    localEnvironment.setNotificationEndpoint(e.getText().toString());
    localEnvironment.setImageUploadEndpoint(f.getText().toString());
    localEnvironment.setBasecampEndpoint(g.getText().toString());
    EnvironmentTableHelper.insertEnvironments(new Environment[] { localEnvironment });
  }
  
  private void e()
  {
    setContentView(2130903070);
    a("New Environment");
    TextView localTextView = (TextView)findViewById(2131558834);
    localTextView.setText(getString(2131231041));
    localTextView.setOnClickListener(new Bf(this));
    b = ((EditText)findViewById(2131558517));
    c = ((EditText)findViewById(2131558518));
    d = ((EditText)findViewById(2131558519));
    e = ((EditText)findViewById(2131558520));
    f = ((EditText)findViewById(2131558521));
    g = ((EditText)findViewById(2131558522));
    b.addTextChangedListener(new Bg(this));
  }
  
  private void f()
  {
    if (a())
    {
      d();
      finish();
      return;
    }
    ww.a(Snackbar.a(this).a(wx.b).a("You must fill in all required fields!"), this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e();
    c();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.NewEnvironmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */