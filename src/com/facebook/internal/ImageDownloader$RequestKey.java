package com.facebook.internal;

import java.net.URI;

class ImageDownloader$RequestKey
{
  private static final int HASH_MULTIPLIER = 37;
  private static final int HASH_SEED = 29;
  Object tag;
  URI uri;
  
  ImageDownloader$RequestKey(URI paramURI, Object paramObject)
  {
    uri = paramURI;
    tag = paramObject;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof RequestKey))
      {
        paramObject = (RequestKey)paramObject;
        bool1 = bool2;
        if (uri == uri)
        {
          bool1 = bool2;
          if (tag == tag) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return (uri.hashCode() + 1073) * 37 + tag.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ImageDownloader.RequestKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */