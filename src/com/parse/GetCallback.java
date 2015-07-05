package com.parse;

public abstract class GetCallback<T extends ParseObject>
  extends ParseCallback<T>
{
  public abstract void done(T paramT, ParseException paramParseException);
  
  final void internalDone(T paramT, ParseException paramParseException)
  {
    done(paramT, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.GetCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */