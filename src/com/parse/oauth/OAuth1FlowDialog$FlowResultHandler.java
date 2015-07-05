package com.parse.oauth;

public abstract interface OAuth1FlowDialog$FlowResultHandler
{
  public abstract void onCancel();
  
  public abstract void onComplete(String paramString);
  
  public abstract void onError(int paramInt, String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.parse.oauth.OAuth1FlowDialog.FlowResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */