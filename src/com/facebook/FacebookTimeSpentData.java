package com.facebook;

import android.os.Bundle;
import com.facebook.internal.Logger;
import java.io.Serializable;

class FacebookTimeSpentData
  implements Serializable
{
  private static final long APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS = 300000L;
  private static final long FIRST_TIME_LOAD_RESUME_TIME = -1L;
  private static final long[] INACTIVE_SECONDS_QUANTA = { 300000L, 900000L, 1800000L, 3600000L, 21600000L, 43200000L, 86400000L, 172800000L, 259200000L, 604800000L, 1209600000L, 1814400000L, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L };
  private static final long INTERRUPTION_THRESHOLD_MILLISECONDS = 1000L;
  private static final long NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION = 60000L;
  private static final String TAG = AppEventsLogger.class.getCanonicalName();
  private static final long serialVersionUID = 1L;
  private String firstOpenSourceApplication;
  private int interruptionCount;
  private boolean isAppActive;
  private boolean isWarmLaunch;
  private long lastActivateEventLoggedTime;
  private long lastResumeTime;
  private long lastSuspendTime;
  private long millisecondsSpentInSession;
  
  FacebookTimeSpentData()
  {
    resetSession();
  }
  
  private FacebookTimeSpentData(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    resetSession();
    lastResumeTime = paramLong1;
    lastSuspendTime = paramLong2;
    millisecondsSpentInSession = paramLong3;
    interruptionCount = paramInt;
  }
  
  private FacebookTimeSpentData(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString)
  {
    resetSession();
    lastResumeTime = paramLong1;
    lastSuspendTime = paramLong2;
    millisecondsSpentInSession = paramLong3;
    interruptionCount = paramInt;
    firstOpenSourceApplication = paramString;
  }
  
  private static int getQuantaIndex(long paramLong)
  {
    int i = 0;
    while ((i < INACTIVE_SECONDS_QUANTA.length) && (INACTIVE_SECONDS_QUANTA[i] < paramLong)) {
      i += 1;
    }
    return i;
  }
  
  private boolean isColdLaunch()
  {
    if (!isWarmLaunch) {}
    for (boolean bool = true;; bool = false)
    {
      isWarmLaunch = true;
      return bool;
    }
  }
  
  private void logAppDeactivatedEvent(AppEventsLogger paramAppEventsLogger, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("fb_mobile_app_interruptions", interruptionCount);
    localBundle.putString("fb_mobile_time_between_sessions", String.format("session_quanta_%d", new Object[] { Integer.valueOf(getQuantaIndex(paramLong)) }));
    localBundle.putString("fb_mobile_launch_source", firstOpenSourceApplication);
    paramAppEventsLogger.logEvent("fb_mobile_deactivate_app", millisecondsSpentInSession / 1000L, localBundle);
    resetSession();
  }
  
  private void resetSession()
  {
    isAppActive = false;
    lastResumeTime = -1L;
    lastSuspendTime = -1L;
    interruptionCount = 0;
    millisecondsSpentInSession = 0L;
  }
  
  private boolean wasSuspendedEver()
  {
    return lastSuspendTime != -1L;
  }
  
  private Object writeReplace()
  {
    return new FacebookTimeSpentData.SerializationProxyV2(lastResumeTime, lastSuspendTime, millisecondsSpentInSession, interruptionCount, firstOpenSourceApplication);
  }
  
  void onResume(AppEventsLogger paramAppEventsLogger, long paramLong, String paramString)
  {
    long l2 = 0L;
    if ((isColdLaunch()) || (paramLong - lastActivateEventLoggedTime > 300000L))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("fb_mobile_launch_source", paramString);
      paramAppEventsLogger.logEvent("fb_mobile_activate_app", localBundle);
      lastActivateEventLoggedTime = paramLong;
    }
    if (isAppActive)
    {
      Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Resume for active app");
      return;
    }
    long l1;
    if (wasSuspendedEver())
    {
      l1 = paramLong - lastSuspendTime;
      if (l1 >= 0L) {
        break label178;
      }
      Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
      l1 = l2;
    }
    label178:
    for (;;)
    {
      if (l1 > 60000L) {
        logAppDeactivatedEvent(paramAppEventsLogger, l1);
      }
      for (;;)
      {
        if (interruptionCount == 0) {
          firstOpenSourceApplication = paramString;
        }
        lastResumeTime = paramLong;
        isAppActive = true;
        return;
        l1 = 0L;
        break;
        if (l1 > 1000L) {
          interruptionCount += 1;
        }
      }
    }
  }
  
  void onSuspend(AppEventsLogger paramAppEventsLogger, long paramLong)
  {
    long l1 = 0L;
    if (!isAppActive)
    {
      Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Suspend for inactive app");
      return;
    }
    long l2 = paramLong - lastResumeTime;
    if (l2 < 0L) {
      Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
    }
    for (;;)
    {
      millisecondsSpentInSession = (l1 + millisecondsSpentInSession);
      lastSuspendTime = paramLong;
      isAppActive = false;
      return;
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookTimeSpentData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */