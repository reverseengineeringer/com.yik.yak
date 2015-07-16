package com.yik.yak.ui.dialog;

import DC;
import Hu;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.CheckBox;

public class ReportDialog
  extends Activity
  implements View.OnClickListener
{
  protected CheckBox a;
  private final int b = 250;
  
  private void a()
  {
    a = ((CheckBox)findViewById(2131558669));
  }
  
  private void a(View paramView)
  {
    paramView = paramView.getTag().toString();
    Intent localIntent = new Intent();
    localIntent.putExtra("result", paramView);
    localIntent.putExtra("KEY_SHOULD_BLOCK_YAKKER", a.isChecked());
    setResult(1, localIntent);
    c();
  }
  
  private void b()
  {
    a.setOnClickListener(this);
    Hu.a(this, this, new int[] { 2131558637, 2131558661, 2131558663, 2131558665, 2131558667 });
  }
  
  private void c()
  {
    new Handler().postDelayed(new DC(this), 250L);
  }
  
  private void d()
  {
    setResult(0);
    c();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131558661: 
    case 2131558663: 
    case 2131558665: 
    case 2131558667: 
      a(paramView);
      return;
    }
    d();
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
    setContentView(2130903109);
    a();
    b();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.dialog.ReportDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */