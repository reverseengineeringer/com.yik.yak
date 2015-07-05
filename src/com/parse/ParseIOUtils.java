package com.parse;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class ParseIOUtils
{
  private static final int DEFAULT_BUFFER_SIZE = 4096;
  private static final int EOF = -1;
  private static final int SKIP_BUFFER_SIZE = 2048;
  private static byte[] SKIP_BYTE_BUFFER;
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void closeQuietly(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  public static void closeQuietly(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException paramOutputStream) {}
  }
  
  public static int copy(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    long l = copyLarge(paramInputStream, paramOutputStream);
    if (l > 2147483647L) {
      return -1;
    }
    return (int)l;
  }
  
  public static long copyLarge(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    return copyLarge(paramInputStream, paramOutputStream, new byte['က']);
  }
  
  public static long copyLarge(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong1, long paramLong2)
  {
    return copyLarge(paramInputStream, paramOutputStream, paramLong1, paramLong2, new byte['က']);
  }
  
  public static long copyLarge(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong1, long paramLong2, byte[] paramArrayOfByte)
  {
    if (paramLong1 > 0L) {
      skipFully(paramInputStream, paramLong1);
    }
    if (paramLong2 == 0L) {
      return 0L;
    }
    int j = paramArrayOfByte.length;
    if ((paramLong2 > 0L) && (paramLong2 < j)) {}
    for (int i = (int)paramLong2;; i = j)
    {
      paramLong1 = 0L;
      while (i > 0)
      {
        int k = paramInputStream.read(paramArrayOfByte, 0, i);
        if (-1 == k) {
          break;
        }
        paramOutputStream.write(paramArrayOfByte, 0, k);
        long l = paramLong1 + k;
        paramLong1 = l;
        if (paramLong2 > 0L)
        {
          i = (int)Math.min(paramLong2 - l, j);
          paramLong1 = l;
        }
      }
      return paramLong1;
    }
  }
  
  public static long copyLarge(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(paramArrayOfByte);
      if (-1 == i) {
        break;
      }
      paramOutputStream.write(paramArrayOfByte, 0, i);
    }
    return l;
  }
  
  public static long skip(InputStream paramInputStream, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Skip count must be non-negative, actual: " + paramLong);
    }
    if (SKIP_BYTE_BUFFER == null) {
      SKIP_BYTE_BUFFER = new byte['ࠀ'];
    }
    long l2;
    for (long l1 = paramLong;; l1 -= l2) {
      if (l1 > 0L)
      {
        l2 = paramInputStream.read(SKIP_BYTE_BUFFER, 0, (int)Math.min(l1, 2048L));
        if (l2 >= 0L) {}
      }
      else
      {
        return paramLong - l1;
      }
    }
  }
  
  public static void skipFully(InputStream paramInputStream, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Bytes to skip must not be negative: " + paramLong);
    }
    long l = skip(paramInputStream, paramLong);
    if (l != paramLong) {
      throw new EOFException("Bytes to skip: " + paramLong + " actual: " + l);
    }
  }
  
  public static byte[] toByteArray(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    copy(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseIOUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */