package com.parse;

public abstract class LogInCallback
  extends ParseCallback<ParseUser>
{
  public abstract void done(ParseUser paramParseUser, ParseException paramParseException);
  
  void internalDone(ParseUser paramParseUser, ParseException paramParseException)
  {
    done(paramParseUser, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.LogInCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */