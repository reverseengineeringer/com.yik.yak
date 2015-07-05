package com.parse;

public abstract class ConfigCallback
  extends ParseCallback<ParseConfig>
{
  public abstract void done(ParseConfig paramParseConfig, ParseException paramParseException);
  
  final void internalDone(ParseConfig paramParseConfig, ParseException paramParseException)
  {
    done(paramParseConfig, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.ConfigCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */