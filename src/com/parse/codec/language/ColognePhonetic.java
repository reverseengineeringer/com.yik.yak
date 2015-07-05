package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;
import java.util.Locale;

public class ColognePhonetic
  implements StringEncoder
{
  private static final char[][] PREPROCESS_MAP = { { 196, 65 }, { 220, 85 }, { 214, 79 }, { 223, 83 } };
  
  private static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramArrayOfChar.length)
      {
        if (paramArrayOfChar[i] == paramChar) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private String preprocess(String paramString)
  {
    paramString = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    if (i < paramString.length)
    {
      int j;
      if (paramString[i] > 'Z') {
        j = 0;
      }
      for (;;)
      {
        if (j < PREPROCESS_MAP.length)
        {
          if (paramString[i] == PREPROCESS_MAP[j][0]) {
            paramString[i] = PREPROCESS_MAP[j][1];
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return new String(paramString);
  }
  
  public String colognePhonetic(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = preprocess(paramString);
    paramString = new ColognePhonetic.CologneOutputBuffer(this, ((String)localObject).length() * 2);
    localObject = new ColognePhonetic.CologneInputBuffer(this, ((String)localObject).toCharArray());
    int j = ((ColognePhonetic.CologneInputBuffer)localObject).length();
    int k = 47;
    char c1 = '-';
    if (j > 0)
    {
      char c2 = ((ColognePhonetic.CologneInputBuffer)localObject).removeNext();
      int i = ((ColognePhonetic.CologneInputBuffer)localObject).length();
      char c3;
      if (i > 0)
      {
        c3 = ((ColognePhonetic.CologneInputBuffer)localObject).getNextChar();
        label88:
        if (!arrayContains(new char[] { 65, 69, 73, 74, 79, 85, 89 }, c2)) {
          break label199;
        }
        c1 = '0';
      }
      for (;;)
      {
        if ((c1 != '-') && (((k != c1) && ((c1 != '0') || (k == 47))) || (c1 < '0') || (c1 > '8'))) {
          paramString.addRight(c1);
        }
        k = c1;
        c1 = c2;
        j = i;
        break;
        c3 = '-';
        break label88;
        label199:
        if ((c2 == 'H') || (c2 < 'A') || (c2 > 'Z'))
        {
          j = i;
          if (k == 47) {
            break;
          }
          c1 = '-';
          continue;
        }
        if ((c2 == 'B') || ((c2 == 'P') && (c3 != 'H')))
        {
          c1 = '1';
        }
        else
        {
          if ((c2 == 'D') || (c2 == 'T')) {
            if (!arrayContains(new char[] { 83, 67, 90 }, c3))
            {
              c1 = '2';
              continue;
            }
          }
          if (arrayContains(new char[] { 87, 70, 80, 86 }, c2))
          {
            c1 = '3';
          }
          else if (arrayContains(new char[] { 71, 75, 81 }, c2))
          {
            c1 = '4';
          }
          else
          {
            if (c2 == 'X') {
              if (!arrayContains(new char[] { 67, 75, 81 }, c1))
              {
                ((ColognePhonetic.CologneInputBuffer)localObject).addLeft('S');
                i += 1;
                c1 = '4';
                continue;
              }
            }
            if ((c2 == 'S') || (c2 == 'Z')) {
              c1 = '8';
            } else if (c2 == 'C')
            {
              if (k == 47)
              {
                if (arrayContains(new char[] { 65, 72, 75, 76, 79, 81, 82, 85, 88 }, c3)) {
                  c1 = '4';
                } else {
                  c1 = '8';
                }
              }
              else
              {
                if (!arrayContains(new char[] { 83, 90 }, c1))
                {
                  if (arrayContains(new char[] { 65, 72, 79, 85, 75, 81, 88 }, c3)) {}
                }
                else
                {
                  c1 = '8';
                  continue;
                }
                c1 = '4';
              }
            }
            else if (arrayContains(new char[] { 84, 68, 88 }, c2)) {
              c1 = '8';
            } else if (c2 == 'R') {
              c1 = '7';
            } else if (c2 == 'L') {
              c1 = '5';
            } else if ((c2 == 'M') || (c2 == 'N')) {
              c1 = '6';
            } else {
              c1 = c2;
            }
          }
        }
      }
    }
    return paramString.toString();
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("This method’s parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + paramObject.getClass().getName() + ".");
    }
    return encode((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return colognePhonetic(paramString);
  }
  
  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }
}

/* Location:
 * Qualified Name:     com.parse.codec.language.ColognePhonetic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */