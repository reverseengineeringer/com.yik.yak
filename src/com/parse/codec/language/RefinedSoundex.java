package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;

public class RefinedSoundex
  implements StringEncoder
{
  public static final RefinedSoundex US_ENGLISH = new RefinedSoundex();
  private static final char[] US_ENGLISH_MAPPING = "01360240043788015936020505".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";
  private final char[] soundexMapping;
  
  public RefinedSoundex()
  {
    soundexMapping = US_ENGLISH_MAPPING;
  }
  
  public RefinedSoundex(String paramString)
  {
    soundexMapping = paramString.toCharArray();
  }
  
  public RefinedSoundex(char[] paramArrayOfChar)
  {
    soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, soundexMapping, 0, paramArrayOfChar.length);
  }
  
  public int difference(String paramString1, String paramString2)
  {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    }
    return soundex((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return soundex(paramString);
  }
  
  char getMappingCode(char paramChar)
  {
    if (!Character.isLetter(paramChar)) {
      return '\000';
    }
    return soundexMapping[(Character.toUpperCase(paramChar) - 'A')];
  }
  
  public String soundex(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return null;
    }
    paramString = SoundexUtils.clean(paramString);
    if (paramString.length() == 0) {
      return paramString;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString.charAt(0));
    int j = 42;
    if (i < paramString.length())
    {
      char c = getMappingCode(paramString.charAt(i));
      if (c == j) {}
      for (;;)
      {
        i += 1;
        break;
        if (c != 0) {
          localStringBuffer.append(c);
        }
        j = c;
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.parse.codec.language.RefinedSoundex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */