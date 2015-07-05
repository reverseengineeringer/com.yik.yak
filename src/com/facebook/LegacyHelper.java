package com.facebook;

import android.os.Bundle;

public class LegacyHelper
{
  @Deprecated
  public static void extendTokenCompleted(Session paramSession, Bundle paramBundle)
  {
    paramSession.extendTokenCompleted(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.LegacyHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */