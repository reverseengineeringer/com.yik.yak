package com.amplitude.api;

class AmplitudeClient$1
  implements Runnable
{
  AmplitudeClient$1(AmplitudeClient paramAmplitudeClient) {}
  
  public void run()
  {
    this$0.deviceId = AmplitudeClient.access$000(this$0);
    AmplitudeClient.access$102(this$0, AmplitudeClient.access$200(this$0).getAdvertisingId());
    AmplitudeClient.access$302(this$0, AmplitudeClient.access$200(this$0).getVersionName());
    AmplitudeClient.access$402(this$0, AmplitudeClient.access$200(this$0).getOSName());
    AmplitudeClient.access$502(this$0, AmplitudeClient.access$200(this$0).getOSVersion());
    AmplitudeClient.access$602(this$0, AmplitudeClient.access$200(this$0).getBrand());
    AmplitudeClient.access$702(this$0, AmplitudeClient.access$200(this$0).getManufacturer());
    AmplitudeClient.access$802(this$0, AmplitudeClient.access$200(this$0).getModel());
    AmplitudeClient.access$902(this$0, AmplitudeClient.access$200(this$0).getCarrier());
    AmplitudeClient.access$1002(this$0, AmplitudeClient.access$200(this$0).getCountry());
    AmplitudeClient.access$1102(this$0, AmplitudeClient.access$200(this$0).getLanguage());
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */