package com.parse.codec;

public abstract interface BinaryDecoder
  extends Decoder
{
  public abstract byte[] decode(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     com.parse.codec.BinaryDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */