package com.facebook;

public class FacebookGraphObjectException
  extends FacebookException
{
  static final long serialVersionUID = 1L;
  
  public FacebookGraphObjectException() {}
  
  public FacebookGraphObjectException(String paramString)
  {
    super(paramString);
  }
  
  public FacebookGraphObjectException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public FacebookGraphObjectException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookGraphObjectException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */