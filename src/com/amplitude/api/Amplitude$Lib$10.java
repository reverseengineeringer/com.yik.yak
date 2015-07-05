package com.amplitude.api;

import java.util.concurrent.atomic.AtomicBoolean;

class Amplitude$Lib$10
  implements Runnable
{
  Amplitude$Lib$10(Amplitude.Lib paramLib, long paramLong) {}
  
  public void run()
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.getDatabaseHelper(Amplitude.Lib.access$1900(this$0));
    localDatabaseHelper.removeEvents(val$maxId);
    Amplitude.Lib.access$2800(this$0).set(false);
    if (localDatabaseHelper.getEventCount() > 30L) {
      this$0.logThread.post(new Amplitude.Lib.10.1(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude.Lib.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */