package com.amplitude.api;

import java.util.concurrent.atomic.AtomicBoolean;

class AmplitudeClient$10
  implements Runnable
{
  AmplitudeClient$10(AmplitudeClient paramAmplitudeClient, long paramLong) {}
  
  public void run()
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.getDatabaseHelper(this$0.context);
    localDatabaseHelper.removeEvents(val$maxId);
    AmplitudeClient.access$1900(this$0).set(false);
    if (localDatabaseHelper.getEventCount() > AmplitudeClient.access$2000(this$0)) {
      this$0.logThread.post(new AmplitudeClient.10.1(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */