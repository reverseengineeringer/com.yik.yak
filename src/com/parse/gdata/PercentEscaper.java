package com.parse.gdata;

public class PercentEscaper
  extends UnicodeEscaper
{
  public static final String SAFECHARS_URLENCODER = "-_.*";
  public static final String SAFEPATHCHARS_URLENCODER = "-_.!~*'()@:$&,;=";
  public static final String SAFEQUERYSTRINGCHARS_URLENCODER = "-_.!~*'()@:$,;/?:";
  private static final char[] UPPER_HEX_DIGITS = "0123456789ABCDEF".toCharArray();
  private static final char[] URI_ESCAPED_SPACE = { '+' };
  private final boolean plusForSpace;
  private final boolean[] safeOctets;
  
  public PercentEscaper(String paramString, boolean paramBoolean)
  {
    if (paramString.matches(".*[0-9A-Za-z].*")) {
      throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }
    if ((paramBoolean) && (paramString.contains(" "))) {
      throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
    }
    if (paramString.contains("%")) {
      throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
    }
    plusForSpace = paramBoolean;
    safeOctets = createSafeOctets(paramString);
  }
  
  private static boolean[] createSafeOctets(String paramString)
  {
    int k = 0;
    paramString = paramString.toCharArray();
    int m = paramString.length;
    int i = 0;
    int j = 122;
    while (i < m)
    {
      j = Math.max(paramString[i], j);
      i += 1;
    }
    boolean[] arrayOfBoolean = new boolean[j + 1];
    i = 48;
    while (i <= 57)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    i = 65;
    while (i <= 90)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    i = 97;
    while (i <= 122)
    {
      arrayOfBoolean[i] = true;
      i += 1;
    }
    j = paramString.length;
    i = k;
    while (i < j)
    {
      arrayOfBoolean[paramString[i]] = true;
      i += 1;
    }
    return arrayOfBoolean;
  }
  
  public String escape(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      String str = paramString;
      if (i < j)
      {
        int k = paramString.charAt(i);
        if ((k >= safeOctets.length) || (safeOctets[k] == 0)) {
          str = escapeSlow(paramString, i);
        }
      }
      else
      {
        return str;
      }
      i += 1;
    }
  }
  
  protected char[] escape(int paramInt)
  {
    if ((paramInt < safeOctets.length) && (safeOctets[paramInt] != 0)) {
      return null;
    }
    if ((paramInt == 32) && (plusForSpace)) {
      return URI_ESCAPED_SPACE;
    }
    int i;
    if (paramInt <= 127)
    {
      i = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      return new char[] { '%', UPPER_HEX_DIGITS[(paramInt >>> 4)], i };
    }
    int j;
    int k;
    if (paramInt <= 2047)
    {
      i = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      return new char[] { '%', UPPER_HEX_DIGITS[(paramInt >>> 4 | 0xC)], k, '%', j, i };
    }
    int m;
    if (paramInt <= 65535)
    {
      i = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      m = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      return new char[] { '%', 'E', UPPER_HEX_DIGITS[(paramInt >>> 2)], '%', m, k, '%', j, i };
    }
    if (paramInt <= 1114111)
    {
      i = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      j = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      k = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      m = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      paramInt >>>= 2;
      int n = UPPER_HEX_DIGITS[(paramInt & 0xF)];
      paramInt >>>= 4;
      int i1 = UPPER_HEX_DIGITS[(paramInt & 0x3 | 0x8)];
      return new char[] { '%', 'F', UPPER_HEX_DIGITS[(paramInt >>> 2 & 0x7)], '%', i1, n, '%', m, k, '%', j, i };
    }
    throw new IllegalArgumentException("Invalid unicode character value " + paramInt);
  }
  
  protected int nextEscapeIndex(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      if (paramInt1 < paramInt2)
      {
        int i = paramCharSequence.charAt(paramInt1);
        if ((i < safeOctets.length) && (safeOctets[i] != 0)) {}
      }
      else
      {
        return paramInt1;
      }
      paramInt1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.gdata.PercentEscaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */