package com.parse.signpost;

import com.parse.signpost.http.HttpRequest;
import com.parse.signpost.http.HttpResponse;

public abstract interface OAuthProviderListener
{
  public abstract boolean onResponseReceived(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse);
  
  public abstract void prepareRequest(HttpRequest paramHttpRequest);
  
  public abstract void prepareSubmission(HttpRequest paramHttpRequest);
}

/* Location:
 * Qualified Name:     com.parse.signpost.OAuthProviderListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */