package com.parse.signpost.commonshttp;

import com.parse.signpost.AbstractOAuthConsumer;
import org.apache.http.client.methods.HttpUriRequest;

public class CommonsHttpOAuthConsumer
  extends AbstractOAuthConsumer
{
  private static final long serialVersionUID = 1L;
  
  public CommonsHttpOAuthConsumer(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  protected com.parse.signpost.http.HttpRequest wrap(Object paramObject)
  {
    if (!(paramObject instanceof org.apache.http.HttpRequest)) {
      throw new IllegalArgumentException("This consumer expects requests of type " + org.apache.http.HttpRequest.class.getCanonicalName());
    }
    return new HttpRequestAdapter((HttpUriRequest)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.signpost.commonshttp.CommonsHttpOAuthConsumer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */