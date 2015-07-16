package com.yik.yak.ui.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;

public class YikYakWidget
  extends AppWidgetProvider
{
  private static Context a;
  private boolean b = false;
  
  public static void a(Context paramContext, AppWidgetManager paramAppWidgetManager, int paramInt)
  {
    a = paramContext;
    YikYakWidgetConfigureActivity.a(paramContext, paramInt);
    paramAppWidgetManager.updateAppWidget(paramInt, new RemoteViews(paramContext.getPackageName(), 2130903168));
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    a = paramContext;
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      YikYakWidgetConfigureActivity.b(paramContext, paramArrayOfInt[i]);
      i += 1;
    }
  }
  
  public void onDisabled(Context paramContext)
  {
    a = paramContext;
  }
  
  public void onEnabled(Context paramContext)
  {
    a = paramContext;
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    a = paramContext;
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      a(paramContext, paramAppWidgetManager, paramArrayOfInt[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.widget.YikYakWidget
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */