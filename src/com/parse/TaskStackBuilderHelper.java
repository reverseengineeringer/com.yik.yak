package com.parse;

import android.app.Activity;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;

class TaskStackBuilderHelper
{
  public static void startActivities(Context paramContext, Class<? extends Activity> paramClass, Intent paramIntent)
  {
    paramContext = TaskStackBuilder.create(paramContext);
    paramContext.addParentStack(paramClass);
    paramContext.addNextIntent(paramIntent);
    paramContext.startActivities();
  }
}

/* Location:
 * Qualified Name:     com.parse.TaskStackBuilderHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */