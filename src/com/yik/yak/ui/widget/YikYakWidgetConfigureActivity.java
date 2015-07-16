package com.yik.yak.ui.widget;

import GZ;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

public class YikYakWidgetConfigureActivity
  extends Activity
{
  public int a = 0;
  View.OnClickListener b = new GZ(this);
  public EditText c;
  
  static String a(Context paramContext, int paramInt)
  {
    String str = paramContext.getSharedPreferences("com.yik.yak.ui.widget.YikYakWidget", 0).getString("appwidget_" + paramInt, null);
    if (str != null) {
      return str;
    }
    return paramContext.getString(2131230843);
  }
  
  public static void a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("com.yik.yak.ui.widget.YikYakWidget", 0).edit();
    paramContext.putString("appwidget_" + paramInt, paramString);
    paramContext.commit();
  }
  
  static void b(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("com.yik.yak.ui.widget.YikYakWidget", 0).edit();
    paramContext.remove("appwidget_" + paramInt);
    paramContext.commit();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setResult(0);
    setContentView(2130903169);
    c = ((EditText)findViewById(2131558875));
    findViewById(2131558876).setOnClickListener(b);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null) {
      a = paramBundle.getInt("appWidgetId", 0);
    }
    if (a == 0)
    {
      finish();
      return;
    }
    c.setText(a(this, a));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.widget.YikYakWidgetConfigureActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */