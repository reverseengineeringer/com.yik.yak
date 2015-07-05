package com.parse.oauth;

public class OAuth1FlowException
  extends Exception
{
  private static final long serialVersionUID = 4272662026279290823L;
  private final String description;
  private final int errorCode;
  private final String failingUrl;
  
  public OAuth1FlowException(int paramInt, String paramString1, String paramString2)
  {
    super(String.format("OAuth Flow Error %d: Url: %s Description: %s", new Object[] { Integer.valueOf(paramInt), paramString2, paramString1 }));
    errorCode = paramInt;
    description = paramString1;
    failingUrl = paramString2;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public int getErrorCode()
  {
    return errorCode;
  }
  
  public String getFailingUrl()
  {
    return failingUrl;
  }
}

/* Location:
 * Qualified Name:     com.parse.oauth.OAuth1FlowException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */