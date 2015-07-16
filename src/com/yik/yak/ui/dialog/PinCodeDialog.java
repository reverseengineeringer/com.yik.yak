package com.yik.yak.ui.dialog;

import Du;
import Dv;
import Dw;
import Dx;
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
  private View.OnClickListener d = new Du(this);
  private String e = "";
  
  private void a()
  {
    Dx localDx = new Dx(this);
    new Handler().postDelayed(localDx, 250L);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
    requestWindowFeature(1);
    setContentView(2130903108);
    paramBundle = (TextView)findViewById(2131558631);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      paramBundle.setText(localBundle.getString("title", getResources().getString(2131231048)));
      e = localBundle.getString("pin", "");
    }
    for (;;)
    {
      a = this;
      findViewById(2131558654).setOnClickListener(d);
      findViewById(2131558644).setOnClickListener(d);
      findViewById(2131558645).setOnClickListener(d);
      findViewById(2131558646).setOnClickListener(d);
      findViewById(2131558647).setOnClickListener(d);
      findViewById(2131558648).setOnClickListener(d);
      findViewById(2131558649).setOnClickListener(d);
      findViewById(2131558650).setOnClickListener(d);
      findViewById(2131558651).setOnClickListener(d);
      findViewById(2131558652).setOnClickListener(d);
      findViewById(2131558653).setOnClickListener(d);
      findViewById(2131558655).setOnClickListener(d);
      b = ((Vibrator)a.getSystemService("vibrator"));
      findViewById(2131558657).setOnClickListener(new Dv(this));
      findViewById(2131558660);
      findViewById(2131558658);
      findViewById(2131558659).setOnClickListener(new Dw(this));
      return;
      paramBundle.setText(getResources().getString(2131231048));
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.dialog.PinCodeDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */