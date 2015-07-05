package com.facebook.android;

public class FacebookError
  extends RuntimeException
{
  private static final long serialVersionUID = 1L;
  private int mErrorCode = 0;
  private String mErrorType;
  
  @Deprecated
  public FacebookError(String paramString)
  {
    super(paramString);
  }
  
  @Deprecated
  public FacebookError(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1);
    mErrorType = paramString2;
    mErrorCode = paramInt;
  }
  
  @Deprecated
  public int getErrorCode()
  {
    return mErrorCode;
  }
  
  @Deprecated
  public String getErrorType()
  {
    return mErrorType;
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.FacebookError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */