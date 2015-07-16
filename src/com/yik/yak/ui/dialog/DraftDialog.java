package com.yik.yak.ui.dialog;

import Dq;
import Dr;
import Ds;
import Dt;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;

public class DraftDialog
  extends Activity
{
  private void a()
  {
    Dt localDt = new Dt(this);
    new Handler().postDelayed(localDt, 250L);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(17170445);
    setFinishOnTouchOutside(false);
    setContentView(2130903107);
    findViewById(2131558631);
    findViewById(2131558633).setOnClickListener(new Dq(this));
    findViewById(2131558637).setOnClickListener(new Dr(this));
    findViewById(2131558635).setOnClickListener(new Ds(this));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.dialog.DraftDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */