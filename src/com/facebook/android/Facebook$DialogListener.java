package com.facebook.android;

import android.os.Bundle;

public abstract interface Facebook$DialogListener
{
  public abstract void onCancel();
  
  public abstract void onComplete(Bundle paramBundle);
  
  public abstract void onError(DialogError paramDialogError);
  
  public abstract void onFacebookError(FacebookError paramFacebookError);
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook.DialogListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */