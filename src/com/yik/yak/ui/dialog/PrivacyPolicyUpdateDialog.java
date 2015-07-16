package com.yik.yak.ui.dialog;

import DA;
import DB;
import Dy;
import Dz;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;

public class PrivacyPolicyUpdateDialog
  extends Activity
{
  private Context a;
  private TextView b = null;
  private TextView c = null;
  private Bundle d = null;
  
  private void a()
  {
    DB localDB = new DB(this);
    new Handler().postDelayed(localDB, 250L);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = this;
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(17170445);
    setFinishOnTouchOutside(false);
    setContentView(2130903111);
    d = getIntent().getExtras();
    if (d != null)
    {
      setTitle(d.getString("title", "Dialog"));
      b = ((TextView)findViewById(2131558677));
      b.setVisibility(0);
      b.setText(getString(2131231054));
      b.setOnClickListener(new Dy(this));
      c = ((TextView)findViewById(2131558678));
      c.setVisibility(0);
      c.setText(getString(2131231128));
      c.setOnClickListener(new Dz(this));
      ((TextView)findViewById(2131558631)).setText(d.getString("title", "Dialog"));
      ((TextView)findViewById(2131558675)).setText(d.getString("message", "Message"));
      ((TextView)findViewById(2131558684)).setText(d.getString("okText", "OK"));
      ((TextView)findViewById(2131558680)).setText(d.getString("cancelText", "CANCEL"));
      ((LinearLayout)findViewById(2131558683)).setOnClickListener(new DA(this));
      ((LinearLayout)findViewById(2131558679)).setVisibility(8);
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.dialog.PrivacyPolicyUpdateDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */