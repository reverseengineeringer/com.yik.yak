package com.parse.entity.mime.content;

public abstract interface ContentDescriptor
{
  public abstract String getCharset();
  
  public abstract long getContentLength();
  
  public abstract String getMediaType();
  
  public abstract String getMimeType();
  
  public abstract String getSubType();
  
  public abstract String getTransferEncoding();
}

/* Location:
 * Qualified Name:     com.parse.entity.mime.content.ContentDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */