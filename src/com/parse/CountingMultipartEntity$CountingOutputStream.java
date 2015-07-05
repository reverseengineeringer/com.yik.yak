package com.parse;

import R;
import java.io.FilterOutputStream;
import java.io.OutputStream;

public class CountingMultipartEntity$CountingOutputStream
  extends FilterOutputStream
{
  private boolean hasReportedDone = false;
  private final ProgressCallback progressCallback;
  private long totalSize;
  private long uploadedSize;
  
  public CountingMultipartEntity$CountingOutputStream(OutputStream paramOutputStream, ProgressCallback paramProgressCallback, long paramLong)
  {
    super(paramOutputStream);
    progressCallback = paramProgressCallback;
    totalSize = paramLong;
    uploadedSize = 0L;
  }
  
  private void notifyCallback()
  {
    if (hasReportedDone) {}
    int i;
    do
    {
      return;
      i = Math.round((float)uploadedSize / (float)totalSize * 100.0F);
      Parse.callbackOnMainThreadAsync(R.a(Integer.valueOf(i)), progressCallback);
    } while (i != 100);
    hasReportedDone = true;
  }
  
  public void write(int paramInt)
  {
    out.write(paramInt);
    uploadedSize += 1L;
    notifyCallback();
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    uploadedSize += paramInt2;
    notifyCallback();
  }
}

/* Location:
 * Qualified Name:     com.parse.CountingMultipartEntity.CountingOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */