package com.amplitude.api;

import java.util.concurrent.atomic.AtomicBoolean;

class AmplitudeClient$8
  implements Runnable
{
  AmplitudeClient$8(AmplitudeClient paramAmplitudeClient) {}
  
  public void run()
  {
    AmplitudeClient.access$1800(this$0).set(false);
    this$0.updateServer();
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */