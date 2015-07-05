package com.adjust.sdk.plugin;

import android.content.Context;
import java.util.Map.Entry;

public abstract interface Plugin
{
  public abstract Map.Entry<String, String> getParameter(Context paramContext);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.plugin.Plugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */