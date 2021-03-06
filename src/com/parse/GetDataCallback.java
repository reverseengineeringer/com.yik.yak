package com.parse;

public abstract class GetDataCallback
  extends ParseCallback<byte[]>
{
  public abstract void done(byte[] paramArrayOfByte, ParseException paramParseException);
  
  final void internalDone(byte[] paramArrayOfByte, ParseException paramParseException)
  {
    done(paramArrayOfByte, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.GetDataCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */