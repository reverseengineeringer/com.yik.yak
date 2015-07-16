package com.amplitude.api;

class AmplitudeClient$3
  implements Runnable
{
  AmplitudeClient$3(AmplitudeClient paramAmplitudeClient, long paramLong) {}
  
  public void run()
  {
    this$0.logThread.removeCallbacks(AmplitudeClient.access$1200(this$0));
    long l1 = this$0.getEndSessionId();
    long l2 = this$0.getEndSessionTime();
    if ((l1 != -1L) && (val$now - l2 < AmplitudeClient.access$1300(this$0))) {
      DatabaseHelper.getDatabaseHelper(this$0.context).removeEvent(l1);
    }
    AmplitudeClient.access$1400(this$0, val$now);
    AmplitudeClient.access$1500(this$0);
    this$0.setLastEventTime(val$now);
    this$0.uploadEvents();
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */