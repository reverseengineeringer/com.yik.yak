package com.yik.yak.ui.activity;

import AL;
import AM;
import AN;
import AO;
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
    AO localAO = new AO(this);
    new Handler().postDelayed(localAO, 250L);
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
    setContentView(2130903103);
    findViewById(2131558618);
    findViewById(2131558620).setOnClickListener(new AL(this));
    findViewById(2131558624).setOnClickListener(new AM(this));
    findViewById(2131558622).setOnClickListener(new AN(this));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.DraftDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */