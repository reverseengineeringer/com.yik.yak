package com.parse;

import Q;
import R;

class GcmRegistrar$2
  implements Q<String, Void>
{
  GcmRegistrar$2(GcmRegistrar paramGcmRegistrar) {}
  
  public Void then(R<String> arg1)
  {
    ??? = ???.f();
    if (??? != null) {
      Parse.logE("com.parse.GcmRegistrar", "Got error when trying to register for GCM push", ???);
    }
    synchronized (GcmRegistrar.access$000(this$0))
    {
      GcmRegistrar.access$102(this$0, null);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.GcmRegistrar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */