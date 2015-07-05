package com.parse;

import com.parse.entity.mime.HttpMultipartMode;
import com.parse.entity.mime.MultipartEntity;
import java.io.OutputStream;
import java.nio.charset.Charset;

class CountingMultipartEntity
  extends MultipartEntity
{
  private final ProgressCallback progressCallback;
  
  public CountingMultipartEntity(ProgressCallback paramProgressCallback)
  {
    progressCallback = paramProgressCallback;
  }
  
  public CountingMultipartEntity(HttpMultipartMode paramHttpMultipartMode, ProgressCallback paramProgressCallback)
  {
    super(paramHttpMultipartMode);
    progressCallback = paramProgressCallback;
  }
  
  public CountingMultipartEntity(HttpMultipartMode paramHttpMultipartMode, String paramString, Charset paramCharset, ProgressCallback paramProgressCallback)
  {
    super(paramHttpMultipartMode, paramString, paramCharset);
    progressCallback = paramProgressCallback;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    super.writeTo(new CountingMultipartEntity.CountingOutputStream(paramOutputStream, progressCallback, getContentLength()));
  }
}

/* Location:
 * Qualified Name:     com.parse.CountingMultipartEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */