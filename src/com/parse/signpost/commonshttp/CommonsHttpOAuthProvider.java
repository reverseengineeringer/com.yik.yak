package com.parse.signpost.commonshttp;

import com.parse.signpost.AbstractOAuthProvider;
import com.parse.signpost.http.HttpRequest;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

public class CommonsHttpOAuthProvider
  extends AbstractOAuthProvider
{
  private static final long serialVersionUID = 1L;
  private transient HttpClient httpClient;
  
  public CommonsHttpOAuthProvider(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2, paramString3);
    httpClient = new DefaultHttpClient();
  }
  
  public CommonsHttpOAuthProvider(String paramString1, String paramString2, String paramString3, HttpClient paramHttpClient)
  {
    super(paramString1, paramString2, paramString3);
    httpClient = paramHttpClient;
  }
  
  protected void closeConnection(HttpRequest paramHttpRequest, com.parse.signpost.http.HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse != null)
    {
      paramHttpRequest = ((org.apache.http.HttpResponse)paramHttpResponse.unwrap()).getEntity();
      if (paramHttpRequest == null) {}
    }
    try
    {
      paramHttpRequest.consumeContent();
      return;
    }
    catch (IOException paramHttpRequest)
    {
      paramHttpRequest.printStackTrace();
    }
  }
  
  protected HttpRequest createRequest(String paramString)
  {
    return new HttpRequestAdapter(new HttpPost(paramString));
  }
  
  protected com.parse.signpost.http.HttpResponse sendRequest(HttpRequest paramHttpRequest)
  {
    return new HttpResponseAdapter(httpClient.execute((HttpUriRequest)paramHttpRequest.unwrap()));
  }
  
  public void setHttpClient(HttpClient paramHttpClient)
  {
    httpClient = paramHttpClient;
  }
}

/* Location:
 * Qualified Name:     com.parse.signpost.commonshttp.CommonsHttpOAuthProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */