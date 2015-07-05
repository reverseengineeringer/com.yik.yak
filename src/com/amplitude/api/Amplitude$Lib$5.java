package com.amplitude.api;

class Amplitude$Lib$5
  implements Runnable
{
  Amplitude$Lib$5(Amplitude.Lib paramLib, long paramLong) {}
  
  public void run()
  {
    this$0.logThread.removeCallbacks(Amplitude.Lib.access$1600(this$0));
    long l1 = Amplitude.Lib.access$1700(this$0);
    long l2 = Amplitude.Lib.access$1800(this$0);
    if ((l1 != -1L) && (val$now - l2 < 15000L)) {
      DatabaseHelper.getDatabaseHelper(Amplitude.Lib.access$1900(this$0)).removeEvent(l1);
    }
    Amplitude.Lib.access$2000(this$0, val$now);
    Amplitude.Lib.access$2100(this$0);
    Amplitude.Lib.access$2200(this$0, val$now);
    this$0.uploadEvents();
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude.Lib.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */