package com.parse;

import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;

class NotificationCompat$NotificationCompatPostJellyBean
  implements NotificationCompat.NotificationCompatImpl
{
  private Notification.Builder postJellyBeanBuilder;
  
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    postJellyBeanBuilder = new Notification.Builder(mContext);
    Object localObject = postJellyBeanBuilder.setContentTitle(mContentTitle).setContentText(mContentText).setSmallIcon(mNotification.icon, mNotification.iconLevel).setContentIntent(mContentIntent).setDeleteIntent(mNotification.deleteIntent);
    if ((mNotification.flags & 0x10) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      ((Notification.Builder)localObject).setAutoCancel(bool).setLargeIcon(mLargeIcon).setDefaults(mNotification.defaults);
      if ((mStyle != null) && ((mStyle instanceof NotificationCompat.Builder.BigTextStyle)))
      {
        paramBuilder = (NotificationCompat.Builder.BigTextStyle)mStyle;
        localObject = new Notification.BigTextStyle(postJellyBeanBuilder).setBigContentTitle(mBigContentTitle).bigText(mBigText);
        if (mSummaryTextSet) {
          ((Notification.BigTextStyle)localObject).setSummaryText(mSummaryText);
        }
      }
      return postJellyBeanBuilder.build();
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.NotificationCompat.NotificationCompatPostJellyBean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */