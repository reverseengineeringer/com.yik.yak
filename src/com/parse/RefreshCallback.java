package com.parse;

public abstract class RefreshCallback
  extends ParseCallback<ParseObject>
{
  public abstract void done(ParseObject paramParseObject, ParseException paramParseException);
  
  final void internalDone(ParseObject paramParseObject, ParseException paramParseException)
  {
    done(paramParseObject, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.RefreshCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */