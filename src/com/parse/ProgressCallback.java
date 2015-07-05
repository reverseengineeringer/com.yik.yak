package com.parse;

public abstract class ProgressCallback
  extends ParseCallback<Integer>
{
  Integer maxProgressSoFar = Integer.valueOf(0);
  
  public abstract void done(Integer paramInteger);
  
  final void internalDone(Integer paramInteger, ParseException paramParseException)
  {
    if (paramInteger.intValue() > maxProgressSoFar.intValue())
    {
      maxProgressSoFar = paramInteger;
      done(paramInteger);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ProgressCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */