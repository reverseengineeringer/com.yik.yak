package com.parse;

public abstract class RequestPasswordResetCallback
  extends ParseCallback<Void>
{
  public abstract void done(ParseException paramParseException);
  
  final void internalDone(Void paramVoid, ParseException paramParseException)
  {
    done(paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.RequestPasswordResetCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */