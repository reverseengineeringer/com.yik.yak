package com.facebook.android;

import android.os.Bundle;

public abstract interface Facebook$ServiceListener
{
  public abstract void onComplete(Bundle paramBundle);
  
  public abstract void onError(Error paramError);
  
  public abstract void onFacebookError(FacebookError paramFacebookError);
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook.ServiceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */