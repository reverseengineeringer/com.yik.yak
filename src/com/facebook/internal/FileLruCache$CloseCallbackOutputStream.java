package com.facebook.internal;

import java.io.OutputStream;

class FileLruCache$CloseCallbackOutputStream
  extends OutputStream
{
  final FileLruCache.StreamCloseCallback callback;
  final OutputStream innerStream;
  
  FileLruCache$CloseCallbackOutputStream(OutputStream paramOutputStream, FileLruCache.StreamCloseCallback paramStreamCloseCallback)
  {
    innerStream = paramOutputStream;
    callback = paramStreamCloseCallback;
  }
  
  public void close()
  {
    try
    {
      innerStream.close();
      return;
    }
    finally
    {
      callback.onClose();
    }
  }
  
  public void flush()
  {
    innerStream.flush();
  }
  
  public void write(int paramInt)
  {
    innerStream.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    innerStream.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    innerStream.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FileLruCache.CloseCallbackOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */