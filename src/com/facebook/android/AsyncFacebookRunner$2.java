package com.facebook.android;

import android.os.Bundle;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;

class AsyncFacebookRunner$2
  extends Thread
{
  AsyncFacebookRunner$2(AsyncFacebookRunner paramAsyncFacebookRunner, String paramString1, Bundle paramBundle, String paramString2, AsyncFacebookRunner.RequestListener paramRequestListener, Object paramObject) {}
  
  public void run()
  {
    try
    {
      String str = this$0.fb.requestImpl(val$graphPath, val$parameters, val$httpMethod);
      val$listener.onComplete(str, val$state);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      val$listener.onFileNotFoundException(localFileNotFoundException, val$state);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      val$listener.onMalformedURLException(localMalformedURLException, val$state);
      return;
    }
    catch (IOException localIOException)
    {
      val$listener.onIOException(localIOException, val$state);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.AsyncFacebookRunner.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */