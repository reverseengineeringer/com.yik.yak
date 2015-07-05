package com.yik.yak.ui.activity;

import CA;
import CB;
import CC;
import CD;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class YikYakDialog
  extends Activity
{
  private EditText a = null;
  private String b = null;
  private Bundle c = null;
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = new Intent(paramContext, YikYakDialog.class);
    paramContext.putExtra("title", paramString1);
    paramContext.putExtra("message", paramString2);
    paramContext.putExtra("okText", paramString3);
    paramContext.putExtra("okOnly", true);
    return paramContext;
  }
  
  private void a()
  {
    CD localCD = new CD(this);
    new Handler().postDelayed(localCD, 250L);
  }
  
  private void b()
  {
    try
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(a.getWindowToken(), 0);
      return;
    }
    catch (Exception localException) {}
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
    setContentView(2130903106);
    c = getIntent().getExtras();
    if (c != null)
    {
      setTitle(c.getString("title", "Dialog"));
      a = ((EditText)findViewById(2131558659));
      if (!c.containsKey("editText")) {
        break label478;
      }
      a.setFocusableInTouchMode(true);
      a.requestFocus();
      a.setText(c.getString("editText", ""));
      a.setSelection(a.getText().length());
      ((InputMethodManager)getSystemService("input_method")).toggleSoftInput(2, 1);
    }
    for (;;)
    {
      if (c.containsKey("value")) {
        b = c.getString("value", "");
      }
      ((TextView)findViewById(2131558618)).setText(c.getString("title", "Dialog"));
      paramBundle = (TextView)findViewById(2131558658);
      paramBundle.setText(c.getString("message", "Message"));
      if ((c.containsKey("align")) && (c.getString("align", "").equals("left"))) {
        paramBundle.setGravity(8388627);
      }
      ((TextView)findViewById(2131558665)).setText(c.getString("okText", "OK"));
      ((TextView)findViewById(2131558661)).setText(c.getString("cancelText", "CANCEL"));
      if ((c.containsKey("maybeText")) || (!c.getString("maybeText", "").equals("")))
      {
        paramBundle = (LinearLayout)findViewById(2131558662);
        paramBundle.setVisibility(0);
        ((TextView)findViewById(2131558663)).setText(c.getString("maybeText", ""));
        paramBundle.setOnClickListener(new CA(this));
      }
      ((LinearLayout)findViewById(2131558664)).setOnClickListener(new CB(this));
      paramBundle = (LinearLayout)findViewById(2131558660);
      paramBundle.setOnClickListener(new CC(this));
      if (c.containsKey("okOnly")) {
        paramBundle.setVisibility(8);
      }
      return;
      a();
      return;
      label478:
      a.setVisibility(8);
    }
  }
  
  public void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.YikYakDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */