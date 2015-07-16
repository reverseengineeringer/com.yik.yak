package com.parse;

import L;
import M;
import N;
import java.util.Set;

class PushService$5
  implements M<Set<String>, Void>
{
  PushService$5(PushService paramPushService, L paramL, PushConnection paramPushConnection) {}
  
  public Void then(N<Set<String>> paramN)
  {
    Boolean localBoolean = (Boolean)val$forceEnabledCapture.a();
    boolean bool = ManifestInfo.getPushUsesBroadcastReceivers();
    paramN = (Set)paramN.e();
    if (!bool)
    {
      if ((paramN == null) || (paramN.size() != 0)) {
        break label110;
      }
      paramN = "Not starting PushService because this device has no subscriptions";
    }
    for (;;)
    {
      if (paramN != null)
      {
        Parse.logI("com.parse.PushService", paramN);
        this$0.stopSelf();
        return null;
        if (ParseInstallation.getCurrentInstallation().getObjectId() == null)
        {
          paramN = "Not starting PushService because this device is not registered for push notifications.";
          continue;
        }
        if ((localBoolean != null) && (!localBoolean.booleanValue())) {
          paramN = "Not starting PushService because push has been manually disabled.";
        }
      }
      else
      {
        Parse.logD("com.parse.PushService", "Starting PushService.");
        val$conn.start();
        return null;
      }
      label110:
      paramN = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */