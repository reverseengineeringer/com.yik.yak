package com.facebook.android;

public class DialogError
  extends Throwable
{
  private static final long serialVersionUID = 1L;
  private int mErrorCode;
  private String mFailingUrl;
  
  @Deprecated
  public DialogError(String paramString1, int paramInt, String paramString2)
  {
    super(paramString1);
    mErrorCode = paramInt;
    mFailingUrl = paramString2;
  }
  
  @Deprecated
  public int getErrorCode()
  {
    return mErrorCode;
  }
  
  @Deprecated
  public String getFailingUrl()
  {
    return mFailingUrl;
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.DialogError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */