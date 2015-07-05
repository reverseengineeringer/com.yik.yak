package com.parse;

abstract class ParseCallback<T>
{
  abstract void internalDone(T paramT, ParseException paramParseException);
}

/* Location:
 * Qualified Name:     com.parse.ParseCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */