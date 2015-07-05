package com.parse;

public abstract class CountCallback
  extends ParseCallback<Integer>
{
  public abstract void done(int paramInt, ParseException paramParseException);
  
  void internalDone(Integer paramInteger, ParseException paramParseException)
  {
    if (paramParseException == null)
    {
      done(paramInteger.intValue(), null);
      return;
    }
    done(-1, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.CountCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */