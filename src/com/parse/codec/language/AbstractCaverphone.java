package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;

public abstract class AbstractCaverphone
  implements StringEncoder
{
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to Caverphone encode is not of type java.lang.String");
    }
    return encode((String)paramObject);
  }
  
  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return encode(paramString1).equals(encode(paramString2));
  }
}

/* Location:
 * Qualified Name:     com.parse.codec.language.AbstractCaverphone
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */