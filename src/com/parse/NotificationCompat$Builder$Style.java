package com.parse;

import android.app.Notification;

public abstract class NotificationCompat$Builder$Style
{
  CharSequence mBigContentTitle;
  NotificationCompat.Builder mBuilder;
  CharSequence mSummaryText;
  boolean mSummaryTextSet = false;
  
  public Notification build()
  {
    Notification localNotification = null;
    if (mBuilder != null) {
      localNotification = mBuilder.build();
    }
    return localNotification;
  }
  
  public void setBuilder(NotificationCompat.Builder paramBuilder)
  {
    if (mBuilder != paramBuilder)
    {
      mBuilder = paramBuilder;
      if (mBuilder != null) {
        mBuilder.setStyle(this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.NotificationCompat.Builder.Style
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */