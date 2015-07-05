package com.parse.gdata;

public abstract class UnicodeEscaper
  implements Escaper
{
  private static final int DEST_PAD = 32;
  private static final ThreadLocal<char[]> DEST_TL = new UnicodeEscaper.2();
  
  protected static final int codePointAt(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      int j = paramInt1 + 1;
      int i = paramCharSequence.charAt(paramInt1);
      if ((i < 55296) || (i > 57343)) {
        return i;
      }
      if (i <= 56319)
      {
        if (j == paramInt2) {
          return -i;
        }
        char c = paramCharSequence.charAt(j);
        if (Character.isLowSurrogate(c)) {
          return Character.toCodePoint(i, c);
        }
        throw new IllegalArgumentException("Expected low surrogate but got char '" + c + "' with value " + c + " at index " + j);
      }
      throw new IllegalArgumentException("Unexpected low surrogate character '" + i + "' with value " + i + " at index " + (j - 1));
    }
    throw new IndexOutOfBoundsException("Index exceeds specified range");
  }
  
  private static final char[] growBuffer(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    if (paramInt1 > 0) {
      System.arraycopy(paramArrayOfChar, 0, arrayOfChar, 0, paramInt1);
    }
    return arrayOfChar;
  }
  
  public Appendable escape(Appendable paramAppendable)
  {
    Preconditions.checkNotNull(paramAppendable);
    return new UnicodeEscaper.1(this, paramAppendable);
  }
  
  public String escape(String paramString)
  {
    int i = paramString.length();
    int j = nextEscapeIndex(paramString, 0, i);
    if (j == i) {
      return paramString;
    }
    return escapeSlow(paramString, j);
  }
  
  protected abstract char[] escape(int paramInt);
  
  protected final String escapeSlow(String paramString, int paramInt)
  {
    int n = paramString.length();
    Object localObject1 = (char[])DEST_TL.get();
    int m = 0;
    int i = 0;
    int k = paramInt;
    paramInt = i;
    if (k < n)
    {
      int i1 = codePointAt(paramString, k, n);
      if (i1 < 0) {
        throw new IllegalArgumentException("Trailing high surrogate at end of input");
      }
      char[] arrayOfChar = escape(i1);
      i = paramInt;
      Object localObject3 = localObject1;
      if (arrayOfChar != null)
      {
        i = k - m;
        j = paramInt + i + arrayOfChar.length;
        localObject2 = localObject1;
        if (localObject1.length < j) {
          localObject2 = growBuffer((char[])localObject1, paramInt, j + (n - k) + 32);
        }
        j = paramInt;
        if (i > 0)
        {
          paramString.getChars(m, k, (char[])localObject2, paramInt);
          j = paramInt + i;
        }
        i = j;
        localObject3 = localObject2;
        if (arrayOfChar.length > 0)
        {
          System.arraycopy(arrayOfChar, 0, localObject2, j, arrayOfChar.length);
          i = j + arrayOfChar.length;
          localObject3 = localObject2;
        }
      }
      if (Character.isSupplementaryCodePoint(i1)) {}
      for (paramInt = 2;; paramInt = 1)
      {
        m = paramInt + k;
        k = nextEscapeIndex(paramString, m, n);
        paramInt = i;
        localObject1 = localObject3;
        break;
      }
    }
    int j = n - m;
    i = paramInt;
    Object localObject2 = localObject1;
    if (j > 0)
    {
      i = j + paramInt;
      localObject2 = localObject1;
      if (localObject1.length < i) {
        localObject2 = growBuffer((char[])localObject1, paramInt, i);
      }
      paramString.getChars(m, n, (char[])localObject2, paramInt);
    }
    return new String((char[])localObject2, 0, i);
  }
  
  protected int nextEscapeIndex(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      i = codePointAt(paramCharSequence, paramInt1, paramInt2);
      if ((i >= 0) && (escape(i) == null)) {}
    }
    else
    {
      return paramInt1;
    }
    if (Character.isSupplementaryCodePoint(i)) {}
    for (int i = 2;; i = 1)
    {
      paramInt1 += i;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.gdata.UnicodeEscaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */