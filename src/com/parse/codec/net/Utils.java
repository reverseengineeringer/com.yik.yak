package com.parse.codec.net;

import com.parse.codec.DecoderException;

class Utils
{
  static int digit16(byte paramByte)
  {
    int i = Character.digit((char)paramByte, 16);
    if (i == -1) {
      throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + paramByte);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.parse.codec.net.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */