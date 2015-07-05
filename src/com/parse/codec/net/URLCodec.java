package com.parse.codec.net;

import com.parse.codec.BinaryDecoder;
import com.parse.codec.BinaryEncoder;
import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import com.parse.codec.StringDecoder;
import com.parse.codec.StringEncoder;
import com.parse.codec.binary.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;

public class URLCodec
  implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder
{
  protected static final byte ESCAPE_CHAR = 37;
  static final int RADIX = 16;
  protected static final BitSet WWW_FORM_URL = new BitSet(256);
  protected String charset;
  
  static
  {
    int i = 97;
    while (i <= 122)
    {
      WWW_FORM_URL.set(i);
      i += 1;
    }
    i = 65;
    while (i <= 90)
    {
      WWW_FORM_URL.set(i);
      i += 1;
    }
    i = 48;
    while (i <= 57)
    {
      WWW_FORM_URL.set(i);
      i += 1;
    }
    WWW_FORM_URL.set(45);
    WWW_FORM_URL.set(95);
    WWW_FORM_URL.set(46);
    WWW_FORM_URL.set(42);
    WWW_FORM_URL.set(32);
  }
  
  public URLCodec()
  {
    this("UTF-8");
  }
  
  public URLCodec(String paramString)
  {
    charset = paramString;
  }
  
  public static final byte[] decodeUrl(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      if (j == 43) {
        localByteArrayOutputStream.write(32);
      }
      for (;;)
      {
        i += 1;
        break;
        if (j == 37)
        {
          i += 1;
          try
          {
            j = Utils.digit16(paramArrayOfByte[i]);
            i += 1;
            localByteArrayOutputStream.write((char)((j << 4) + Utils.digit16(paramArrayOfByte[i])));
          }
          catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
          {
            throw new DecoderException("Invalid URL encoding: ", paramArrayOfByte);
          }
        }
        else
        {
          localByteArrayOutputStream.write(j);
        }
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static final byte[] encodeUrl(BitSet paramBitSet, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    BitSet localBitSet = paramBitSet;
    if (paramBitSet == null) {
      localBitSet = WWW_FORM_URL;
    }
    paramBitSet = new ByteArrayOutputStream();
    int j = 0;
    if (j < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte[j];
      int i = k;
      if (k < 0) {
        i = k + 256;
      }
      if (localBitSet.get(i))
      {
        k = i;
        if (i == 32) {
          k = 43;
        }
        paramBitSet.write(k);
      }
      for (;;)
      {
        j += 1;
        break;
        paramBitSet.write(37);
        k = Character.toUpperCase(Character.forDigit(i >> 4 & 0xF, 16));
        i = Character.toUpperCase(Character.forDigit(i & 0xF, 16));
        paramBitSet.write(k);
        paramBitSet.write(i);
      }
    }
    return paramBitSet.toByteArray();
  }
  
  public Object decode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof byte[])) {
      return decode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return decode((String)paramObject);
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL decoded");
  }
  
  public String decode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = decode(paramString, getDefaultCharset());
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new DecoderException(paramString.getMessage(), paramString);
    }
  }
  
  public String decode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    return new String(decode(StringUtils.getBytesUsAscii(paramString1)), paramString2);
  }
  
  public byte[] decode(byte[] paramArrayOfByte)
  {
    return decodeUrl(paramArrayOfByte);
  }
  
  public Object encode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof byte[])) {
      return encode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return encode((String)paramObject);
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL encoded");
  }
  
  public String encode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = encode(paramString, getDefaultCharset());
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new EncoderException(paramString.getMessage(), paramString);
    }
  }
  
  public String encode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    return StringUtils.newStringUsAscii(encode(paramString1.getBytes(paramString2)));
  }
  
  public byte[] encode(byte[] paramArrayOfByte)
  {
    return encodeUrl(WWW_FORM_URL, paramArrayOfByte);
  }
  
  public String getDefaultCharset()
  {
    return charset;
  }
  
  public String getEncoding()
  {
    return charset;
  }
}

/* Location:
 * Qualified Name:     com.parse.codec.net.URLCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */