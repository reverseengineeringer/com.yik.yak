package com.facebook.internal;

import android.os.Bundle;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

public class PendingCallStore
{
  private static final String CALL_ID_ARRAY_KEY = "com.facebook.internal.PendingCallStore.callIdArrayKey";
  private static final String CALL_KEY_PREFIX = "com.facebook.internal.PendingCallStore.";
  private static PendingCallStore mInstance;
  private Map<String, FacebookDialog.PendingCall> pendingCallMap = new HashMap();
  
  private static void createInstance()
  {
    try
    {
      if (mInstance == null) {
        mInstance = new PendingCallStore();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static PendingCallStore getInstance()
  {
    if (mInstance == null) {
      createInstance();
    }
    return mInstance;
  }
  
  private String getSavedStateKeyForPendingCallId(String paramString)
  {
    return "com.facebook.internal.PendingCallStore." + paramString;
  }
  
  public FacebookDialog.PendingCall getPendingCallById(UUID paramUUID)
  {
    if (paramUUID == null) {
      return null;
    }
    return (FacebookDialog.PendingCall)pendingCallMap.get(paramUUID.toString());
  }
  
  public void restoreFromSavedInstanceState(Bundle paramBundle)
  {
    Object localObject = paramBundle.getStringArrayList("com.facebook.internal.PendingCallStore.callIdArrayKey");
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        FacebookDialog.PendingCall localPendingCall = (FacebookDialog.PendingCall)paramBundle.getParcelable(getSavedStateKeyForPendingCallId((String)((Iterator)localObject).next()));
        if (localPendingCall != null) {
          pendingCallMap.put(localPendingCall.getCallId().toString(), localPendingCall);
        }
      }
    }
  }
  
  public void saveInstanceState(Bundle paramBundle)
  {
    paramBundle.putStringArrayList("com.facebook.internal.PendingCallStore.callIdArrayKey", new ArrayList(pendingCallMap.keySet()));
    Iterator localIterator = pendingCallMap.values().iterator();
    while (localIterator.hasNext())
    {
      FacebookDialog.PendingCall localPendingCall = (FacebookDialog.PendingCall)localIterator.next();
      paramBundle.putParcelable(getSavedStateKeyForPendingCallId(localPendingCall.getCallId().toString()), localPendingCall);
    }
  }
  
  public void stopTrackingPendingCall(UUID paramUUID)
  {
    if (paramUUID != null) {
      pendingCallMap.remove(paramUUID.toString());
    }
  }
  
  public void trackPendingCall(FacebookDialog.PendingCall paramPendingCall)
  {
    if (paramPendingCall != null) {
      pendingCallMap.put(paramPendingCall.getCallId().toString(), paramPendingCall);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.PendingCallStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */