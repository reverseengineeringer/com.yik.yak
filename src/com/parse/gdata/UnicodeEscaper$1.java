package com.parse.gdata;

class UnicodeEscaper$1
  implements Appendable
{
  char[] decodedChars = new char[2];
  int pendingHighSurrogate = -1;
  
  UnicodeEscaper$1(UnicodeEscaper paramUnicodeEscaper, Appendable paramAppendable) {}
  
  private void outputChars(char[] paramArrayOfChar, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      val$out.append(paramArrayOfChar[i]);
      i += 1;
    }
  }
  
  public Appendable append(char paramChar)
  {
    if (pendingHighSurrogate != -1)
    {
      if (!Character.isLowSurrogate(paramChar)) {
        throw new IllegalArgumentException("Expected low surrogate character but got '" + paramChar + "' with value " + paramChar);
      }
      arrayOfChar = this$0.escape(Character.toCodePoint((char)pendingHighSurrogate, paramChar));
      if (arrayOfChar != null) {
        outputChars(arrayOfChar, arrayOfChar.length);
      }
      for (;;)
      {
        pendingHighSurrogate = -1;
        return this;
        val$out.append((char)pendingHighSurrogate);
        val$out.append(paramChar);
      }
    }
    if (Character.isHighSurrogate(paramChar))
    {
      pendingHighSurrogate = paramChar;
      return this;
    }
    if (Character.isLowSurrogate(paramChar)) {
      throw new IllegalArgumentException("Unexpected low surrogate character '" + paramChar + "' with value " + paramChar);
    }
    char[] arrayOfChar = this$0.escape(paramChar);
    if (arrayOfChar != null)
    {
      outputChars(arrayOfChar, arrayOfChar.length);
      return this;
    }
    val$out.append(paramChar);
    return this;
  }
  
  public Appendable append(CharSequence paramCharSequence)
  {
    return append(paramCharSequence, 0, paramCharSequence.length());
  }
  
  public Appendable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i;
    char[] arrayOfChar;
    if (paramInt1 < paramInt2)
    {
      if (pendingHighSurrogate == -1) {
        break label257;
      }
      i = paramInt1 + 1;
      char c = paramCharSequence.charAt(paramInt1);
      if (!Character.isLowSurrogate(c)) {
        throw new IllegalArgumentException("Expected low surrogate character but got " + c);
      }
      arrayOfChar = this$0.escape(Character.toCodePoint((char)pendingHighSurrogate, c));
      if (arrayOfChar == null) {
        break label146;
      }
      outputChars(arrayOfChar, arrayOfChar.length);
      paramInt1 += 1;
      pendingHighSurrogate = -1;
    }
    for (;;)
    {
      i = this$0.nextEscapeIndex(paramCharSequence, i, paramInt2);
      if (i > paramInt1) {
        val$out.append(paramCharSequence, paramInt1, i);
      }
      if (i == paramInt2)
      {
        return this;
        label146:
        val$out.append((char)pendingHighSurrogate);
        break;
      }
      paramInt1 = UnicodeEscaper.codePointAt(paramCharSequence, i, paramInt2);
      if (paramInt1 < 0)
      {
        pendingHighSurrogate = (-paramInt1);
        return this;
      }
      arrayOfChar = this$0.escape(paramInt1);
      if (arrayOfChar != null)
      {
        outputChars(arrayOfChar, arrayOfChar.length);
        label208:
        if (!Character.isSupplementaryCodePoint(paramInt1)) {
          break label252;
        }
      }
      label252:
      for (paramInt1 = 2;; paramInt1 = 1)
      {
        paramInt1 = i + paramInt1;
        i = paramInt1;
        break;
        int j = Character.toChars(paramInt1, decodedChars, 0);
        outputChars(decodedChars, j);
        break label208;
      }
      label257:
      i = paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.gdata.UnicodeEscaper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */