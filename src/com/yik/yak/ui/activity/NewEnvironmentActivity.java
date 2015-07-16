package com.yik.yak.ui.activity;

import AM;
import Bp;
import Bq;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.data.db.helper.EnvironmentTableHelper;
import com.yik.yak.data.models.Environment;
import wF;
import wG;

public class NewEnvironmentActivity
  extends BaseAppCompatActivity
{
  protected EditText c;
  public EditText d;
  protected EditText e;
  protected EditText f;
  protected EditText g;
  protected EditText h;
  
  private boolean a()
  {
    return (!c.getText().toString().equals("")) && (!e.getText().toString().equals("")) && (!f.getText().toString().equals("")) && (!g.getText().toString().equals("")) && (!h.getText().toString().equals(""));
  }
  
  private void c()
  {
    Environment localEnvironment = AM.a().c();
    e.setText(localEnvironment.getMainApiEndpoint());
    f.setText(localEnvironment.getNotificationEndpoint());
    g.setText(localEnvironment.getImageUploadUrl());
    h.setText(localEnvironment.getBasecampEndpoint());
  }
  
  private void d()
  {
    Environment localEnvironment = new Environment();
    localEnvironment.setName(c.getText().toString());
    localEnvironment.setShortName(d.toString());
    localEnvironment.setMainApiEndpoint(e.getText().toString());
    localEnvironment.setNotificationEndpoint(f.getText().toString());
    localEnvironment.setImageUploadEndpoint(g.getText().toString());
    localEnvironment.setBasecampEndpoint(h.getText().toString());
    EnvironmentTableHelper.insertEnvironments(new Environment[] { localEnvironment });
  }
  
  private void e()
  {
    setContentView(2130903070);
    a("New Environment");
    TextView localTextView = (TextView)findViewById(2131558563);
    localTextView.setText(getString(2131231081));
    localTextView.setOnClickListener(new Bp(this));
    c = ((EditText)findViewById(2131558518));
    d = ((EditText)findViewById(2131558519));
    e = ((EditText)findViewById(2131558520));
    f = ((EditText)findViewById(2131558521));
    g = ((EditText)findViewById(2131558522));
    h = ((EditText)findViewById(2131558523));
    c.addTextChangedListener(new Bq(this));
  }
  
  private void f()
  {
    if (a())
    {
      d();
      finish();
      return;
    }
    wF.a(Snackbar.a(this).a(wG.b).a("You must fill in all required fields!"), this);
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