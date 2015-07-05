package com.facebook.android;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;

class AsyncFacebookRunner$1
  extends Thread
{
  AsyncFacebookRunner$1(AsyncFacebookRunner paramAsyncFacebookRunner, Context paramContext, AsyncFacebookRunner.RequestListener paramRequestListener, Object paramObject) {}
  
  public void run()
  {
    try
    {
      String str = this$0.fb.logoutImpl(val$context);
      if ((str.length() == 0) || (str.equals("false")))
      {
        val$listener.onFacebookError(new FacebookError("auth.expireSession failed"), val$state);
        return;
      }
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
 * Qualified Name:     com.facebook.android.AsyncFacebookRunner.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */