package com.parse.codec;

public abstract interface BinaryEncoder
  extends Encoder
{
  public abstract byte[] encode(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     com.parse.codec.BinaryEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */