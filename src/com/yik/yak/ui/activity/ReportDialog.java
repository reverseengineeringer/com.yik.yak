package com.yik.yak.ui.activity;

import BD;
import BF;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import butterknife.ButterKnife;
import butterknife.InjectView;
import butterknife.OnClick;

public class ReportDialog
  extends Activity
{
  @InjectView(2131558656)
  protected CheckBox blockYakkerCheckBox;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(17170445);
    setFinishOnTouchOutside(false);
    setContentView(2130903105);
    ButterKnife.inject(this);
    findViewById(2131558624).setOnClickListener(new BD(this));
  }
  
  @OnClick({2131558648, 2131558650, 2131558652, 2131558654})
  public void onReportClick(View paramView)
  {
    paramView = paramView.getTag().toString();
    Intent localIntent = new Intent();
    localIntent.putExtra("result", paramView);
    localIntent.putExtra("KEY_SHOULD_BLOCK_YAKKER", blockYakkerCheckBox.isChecked());
    setResult(1, localIntent);
    paramView = new BF(this);
    new Handler().postDelayed(paramView, 250L);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.ReportDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */