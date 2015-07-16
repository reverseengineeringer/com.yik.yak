package com.parse;

import N;
import android.content.Context;
import android.content.Intent;

class GcmRegistrar
{
  private static final String ERROR_EXTRA = "error";
  public static final String REGISTER_ACTION = "com.google.android.c2dm.intent.REGISTER";
  public static final String REGISTER_RESPONSE_ACTION = "com.google.android.c2dm.intent.REGISTRATION";
  private static final String REGISTRATION_ID_EXTRA = "registration_id";
  private static final String SENDER_ID = "1076345567071";
  private static final String TAG = "com.parse.GcmRegistrar";
  private Context context = null;
  private Object lock = new Object();
  private GcmRegistrar.Request request = null;
  
  GcmRegistrar(Context paramContext)
  {
    context = paramContext;
  }
  
  public static GcmRegistrar getInstance()
  {
    return GcmRegistrar.Singleton.INSTANCE;
  }
  
  private void sendRegistrationRequest()
  {
    synchronized (lock)
    {
      if (request == null)
      {
        request = GcmRegistrar.Request.createAndSend(context, "1076345567071");
        request.getTask().a(new GcmRegistrar.2(this));
      }
      return;
    }
  }
  
  public static void updateAsync()
  {
    N.a(new GcmRegistrar.1());
  }
  
  int getRequestIdentifier()
  {
    for (;;)
    {
      synchronized (lock)
      {
        if (request != null)
        {
          i = GcmRegistrar.Request.access$200(request);
          return i;
        }
      }
      int i = 0;
    }
  }
  
  public void handleRegistrationIntent(Intent paramIntent)
  {
    if (isRegistrationIntent(paramIntent))
    {
      ??? = paramIntent.getStringExtra("registration_id");
      if ((??? != null) && (((String)???).length() > 0))
      {
        ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
        localParseInstallation.setPushType(PushType.GCM);
        localParseInstallation.setDeviceToken((String)???);
        localParseInstallation.saveEventually();
      }
      synchronized (lock)
      {
        if (request != null) {
          request.onReceiveResponseIntent(paramIntent);
        }
        return;
      }
    }
  }
  
  public boolean isRegistrationIntent(Intent paramIntent)
  {
    return (paramIntent != null) && ("com.google.android.c2dm.intent.REGISTRATION".equals(paramIntent.getAction()));
  }
  
  public void register()
  {
    if (ManifestInfo.getPushType() == PushType.GCM) {
      synchronized (lock)
      {
        ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
        if ((localParseInstallation.getDeviceToken() == null) || (localParseInstallation.isDeviceTokenStale()))
        {
          if (localParseInstallation.getPushType() != PushType.GCM)
          {
            localParseInstallation.setPushType(PushType.GCM);
            localParseInstallation.saveEventually();
          }
          sendRegistrationRequest();
        }
        return;
      }
    }
  }
  
  public void update()
  {
    if ((ParseInstallation.hasCurrentInstallation()) && (ManifestInfo.getPushType() == PushType.GCM)) {
      synchronized (lock)
      {
        ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
        if ((localParseInstallation.getPushType() == PushType.GCM) && ((localParseInstallation.getDeviceToken() == null) || (localParseInstallation.isDeviceTokenStale()))) {
          sendRegistrationRequest();
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.GcmRegistrar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */