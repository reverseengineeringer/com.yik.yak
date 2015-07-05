package com.facebook;

final class AppEventsLogger$3
  implements Runnable
{
  public void run()
  {
    if (AppEventsLogger.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
      AppEventsLogger.access$300(AppEventsLogger.FlushReason.TIMER);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.AppEventsLogger.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */