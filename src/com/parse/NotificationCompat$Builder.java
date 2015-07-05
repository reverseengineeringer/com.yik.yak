package com.parse;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;

public class NotificationCompat$Builder
{
  PendingIntent mContentIntent;
  CharSequence mContentText;
  CharSequence mContentTitle;
  Context mContext;
  Bitmap mLargeIcon;
  Notification mNotification = new Notification();
  int mPriority;
  NotificationCompat.Builder.Style mStyle;
  
  public NotificationCompat$Builder(Context paramContext)
  {
    mContext = paramContext;
    mNotification.when = System.currentTimeMillis();
    mNotification.audioStreamType = -1;
    mPriority = 0;
  }
  
  private void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = mNotification;
      flags |= paramInt;
      return;
    }
    Notification localNotification = mNotification;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public Notification build()
  {
    return NotificationCompat.access$000().build(this);
  }
  
  @Deprecated
  public Notification getNotification()
  {
    return NotificationCompat.access$000().build(this);
  }
  
  public Builder setAutoCancel(boolean paramBoolean)
  {
    setFlag(16, paramBoolean);
    return this;
  }
  
  public Builder setContentIntent(PendingIntent paramPendingIntent)
  {
    mContentIntent = paramPendingIntent;
    return this;
  }
  
  public Builder setContentText(CharSequence paramCharSequence)
  {
    mContentText = paramCharSequence;
    return this;
  }
  
  public Builder setContentTitle(CharSequence paramCharSequence)
  {
    mContentTitle = paramCharSequence;
    return this;
  }
  
  public Builder setDefaults(int paramInt)
  {
    mNotification.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = mNotification;
      flags |= 0x1;
    }
    return this;
  }
  
  public Builder setDeleteIntent(PendingIntent paramPendingIntent)
  {
    mNotification.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public Builder setLargeIcon(Bitmap paramBitmap)
  {
    mLargeIcon = paramBitmap;
    return this;
  }
  
  public Builder setPriority(int paramInt)
  {
    mPriority = paramInt;
    return this;
  }
  
  public Builder setSmallIcon(int paramInt)
  {
    mNotification.icon = paramInt;
    return this;
  }
  
  public Builder setSmallIcon(int paramInt1, int paramInt2)
  {
    mNotification.icon = paramInt1;
    mNotification.iconLevel = paramInt2;
    return this;
  }
  
  public Builder setStyle(NotificationCompat.Builder.Style paramStyle)
  {
    if (mStyle != paramStyle)
    {
      mStyle = paramStyle;
      if (mStyle != null) {
        mStyle.setBuilder(this);
      }
    }
    return this;
  }
  
  public Builder setWhen(long paramLong)
  {
    mNotification.when = paramLong;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.parse.NotificationCompat.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */