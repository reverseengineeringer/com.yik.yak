package com.parse;

import P;
import Q;
import R;
import java.util.Set;

class PushService$5
  implements Q<Set<String>, Void>
{
  PushService$5(PushService paramPushService, P paramP, PushConnection paramPushConnection) {}
  
  public Void then(R<Set<String>> paramR)
  {
    Boolean localBoolean = (Boolean)val$forceEnabledCapture.a();
    boolean bool = ManifestInfo.getPushUsesBroadcastReceivers();
    paramR = (Set)paramR.e();
    if (!bool)
    {
      if ((paramR == null) || (paramR.size() != 0)) {
        break label110;
      }
      paramR = "Not starting PushService because this device has no subscriptions";
    }
    for (;;)
    {
      if (paramR != null)
      {
        Parse.logI("com.parse.PushService", paramR);
        this$0.stopSelf();
        return null;
        if (ParseInstallation.getCurrentInstallation().getObjectId() == null)
        {
          paramR = "Not starting PushService because this device is not registered for push notifications.";
          continue;
        }
        if ((localBoolean != null) && (!localBoolean.booleanValue())) {
          paramR = "Not starting PushService because push has been manually disabled.";
        }
      }
      else
      {
        Parse.logD("com.parse.PushService", "Starting PushService.");
        val$conn.start();
        return null;
      }
      label110:
      paramR = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */