package com.parse.signpost.basic;

import com.parse.signpost.http.HttpResponse;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class HttpURLConnectionResponseAdapter
  implements HttpResponse
{
  private HttpURLConnection connection;
  
  public HttpURLConnectionResponseAdapter(HttpURLConnection paramHttpURLConnection)
  {
    connection = paramHttpURLConnection;
  }
  
  public InputStream getContent()
  {
    return connection.getInputStream();
  }
  
  public String getReasonPhrase()
  {
    return connection.getResponseMessage();
  }
  
  public int getStatusCode()
  {
    return connection.getResponseCode();
  }
  
  public Object unwrap()
  {
    return connection;
  }
}

/* Location:
 * Qualified Name:     com.parse.signpost.basic.HttpURLConnectionResponseAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */