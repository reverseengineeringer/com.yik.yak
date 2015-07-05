package com.yik.yak.ui.activity;

import Bu;
import Bv;
import Bw;
import Bx;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class PinCodeDialog
  extends Activity
{
  private Context a;
  private Vibrator b;
  private String c = "";
  private View.OnClickListener d = new Bu(this);
  private String e = "";
  
  private void a()
  {
    Bx localBx = new Bx(this);
    new Handler().postDelayed(localBx, 250L);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
    requestWindowFeature(1);
    setContentView(2130903104);
    paramBundle = (TextView)findViewById(2131558618);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      paramBundle.setText(localBundle.getString("title", getResources().getString(2131231016)));
      e = localBundle.getString("pin", "");
    }
    for (;;)
    {
      a = this;
      findViewById(2131558641).setOnClickListener(d);
      findViewById(2131558631).setOnClickListener(d);
      findViewById(2131558632).setOnClickListener(d);
      findViewById(2131558633).setOnClickListener(d);
      findViewById(2131558634).setOnClickListener(d);
      findViewById(2131558635).setOnClickListener(d);
      findViewById(2131558636).setOnClickListener(d);
      findViewById(2131558637).setOnClickListener(d);
      findViewById(2131558638).setOnClickListener(d);
      findViewById(2131558639).setOnClickListener(d);
      findViewById(2131558640).setOnClickListener(d);
      findViewById(2131558642).setOnClickListener(d);
      b = ((Vibrator)a.getSystemService("vibrator"));
      findViewById(2131558644).setOnClickListener(new Bv(this));
      findViewById(2131558647);
      findViewById(2131558645);
      findViewById(2131558646).setOnClickListener(new Bw(this));
      return;
      paramBundle.setText(getResources().getString(2131231016));
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PinCodeDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */