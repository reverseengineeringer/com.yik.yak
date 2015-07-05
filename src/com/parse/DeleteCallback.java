package com.parse;

public abstract class DeleteCallback
  extends ParseCallback<Void>
{
  public abstract void done(ParseException paramParseException);
  
  final void internalDone(Void paramVoid, ParseException paramParseException)
  {
    done(paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.DeleteCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */