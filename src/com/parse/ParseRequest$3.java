package com.parse;

import java.io.IOException;
import java.util.concurrent.Callable;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;

class ParseRequest$3
  implements Callable<Response>
{
  ParseRequest$3(ParseRequest paramParseRequest, ProgressCallback paramProgressCallback) {}
  
  public Response call()
  {
    try
    {
      Object localObject = ParseRequest.access$100(this$0).execute(ParseRequest.access$000(this$0));
      localObject = this$0.onResponse((HttpResponse)localObject, val$progressCallback);
      return (Response)localObject;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      throw this$0.connectionFailed("bad protocol", localClientProtocolException);
    }
    catch (IOException localIOException)
    {
      throw this$0.connectionFailed("i/o failure", localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */