package com.parse.twitter;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.parse.signpost.OAuthProvider;
import com.parse.signpost.http.HttpParameters;

class Twitter$1$1$1
  extends AsyncTask<Void, Void, HttpParameters>
{
  private Throwable error;
  
  Twitter$1$1$1(Twitter.1.1 param1, String paramString) {}
  
  protected HttpParameters doInBackground(Void... paramVarArgs)
  {
    try
    {
      this$2.this$1.val$provider.retrieveAccessToken(this$2.this$1.val$consumer, val$verifier);
      return this$2.this$1.val$provider.getResponseParameters();
    }
    catch (Throwable paramVarArgs)
    {
      for (;;)
      {
        error = paramVarArgs;
      }
    }
  }
  
  /* Error */
  protected void onPostExecute(HttpParameters paramHttpParameters)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 63	android/os/AsyncTask:onPostExecute	(Ljava/lang/Object;)V
    //   5: aload_0
    //   6: getfield 53	com/parse/twitter/Twitter$1$1$1:error	Ljava/lang/Throwable;
    //   9: ifnull +36 -> 45
    //   12: aload_0
    //   13: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   16: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   19: getfield 67	com/parse/twitter/Twitter$1:val$callback	Lcom/parse/internal/AsyncCallback;
    //   22: aload_0
    //   23: getfield 53	com/parse/twitter/Twitter$1$1$1:error	Ljava/lang/Throwable;
    //   26: invokeinterface 73 2 0
    //   31: aload_0
    //   32: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   35: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   38: getfield 77	com/parse/twitter/Twitter$1:val$progress	Landroid/app/ProgressDialog;
    //   41: invokevirtual 82	android/app/ProgressDialog:dismiss	()V
    //   44: return
    //   45: aload_0
    //   46: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   49: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   52: getfield 86	com/parse/twitter/Twitter$1:this$0	Lcom/parse/twitter/Twitter;
    //   55: aload_0
    //   56: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   59: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   62: getfield 41	com/parse/twitter/Twitter$1:val$consumer	Lcom/parse/signpost/OAuthConsumer;
    //   65: invokeinterface 92 1 0
    //   70: invokevirtual 98	com/parse/twitter/Twitter:setAuthToken	(Ljava/lang/String;)V
    //   73: aload_0
    //   74: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   77: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   80: getfield 86	com/parse/twitter/Twitter$1:this$0	Lcom/parse/twitter/Twitter;
    //   83: aload_0
    //   84: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   87: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   90: getfield 41	com/parse/twitter/Twitter$1:val$consumer	Lcom/parse/signpost/OAuthConsumer;
    //   93: invokeinterface 101 1 0
    //   98: invokevirtual 104	com/parse/twitter/Twitter:setAuthTokenSecret	(Ljava/lang/String;)V
    //   101: aload_0
    //   102: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   105: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   108: getfield 86	com/parse/twitter/Twitter$1:this$0	Lcom/parse/twitter/Twitter;
    //   111: aload_1
    //   112: ldc 106
    //   114: invokevirtual 112	com/parse/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   117: invokevirtual 115	com/parse/twitter/Twitter:setScreenName	(Ljava/lang/String;)V
    //   120: aload_0
    //   121: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   124: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   127: getfield 86	com/parse/twitter/Twitter$1:this$0	Lcom/parse/twitter/Twitter;
    //   130: aload_1
    //   131: ldc 117
    //   133: invokevirtual 112	com/parse/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   136: invokevirtual 120	com/parse/twitter/Twitter:setUserId	(Ljava/lang/String;)V
    //   139: aload_0
    //   140: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   143: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   146: getfield 67	com/parse/twitter/Twitter$1:val$callback	Lcom/parse/internal/AsyncCallback;
    //   149: aload_0
    //   150: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   153: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   156: getfield 86	com/parse/twitter/Twitter$1:this$0	Lcom/parse/twitter/Twitter;
    //   159: invokeinterface 123 2 0
    //   164: aload_0
    //   165: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   168: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   171: getfield 77	com/parse/twitter/Twitter$1:val$progress	Landroid/app/ProgressDialog;
    //   174: invokevirtual 82	android/app/ProgressDialog:dismiss	()V
    //   177: return
    //   178: astore_1
    //   179: aload_0
    //   180: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   183: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   186: getfield 67	com/parse/twitter/Twitter$1:val$callback	Lcom/parse/internal/AsyncCallback;
    //   189: aload_1
    //   190: invokeinterface 73 2 0
    //   195: aload_0
    //   196: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   199: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   202: getfield 77	com/parse/twitter/Twitter$1:val$progress	Landroid/app/ProgressDialog;
    //   205: invokevirtual 82	android/app/ProgressDialog:dismiss	()V
    //   208: return
    //   209: astore_1
    //   210: aload_0
    //   211: getfield 15	com/parse/twitter/Twitter$1$1$1:this$2	Lcom/parse/twitter/Twitter$1$1;
    //   214: getfield 31	com/parse/twitter/Twitter$1$1:this$1	Lcom/parse/twitter/Twitter$1;
    //   217: getfield 77	com/parse/twitter/Twitter$1:val$progress	Landroid/app/ProgressDialog;
    //   220: invokevirtual 82	android/app/ProgressDialog:dismiss	()V
    //   223: aload_1
    //   224: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	this	1
    //   0	225	1	paramHttpParameters	HttpParameters
    // Exception table:
    //   from	to	target	type
    //   45	139	178	java/lang/Throwable
    //   5	31	209	finally
    //   45	139	209	finally
    //   139	164	209	finally
    //   179	195	209	finally
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    this$2.this$1.val$progress.show();
  }
}

/* Location:
 * Qualified Name:     com.parse.twitter.Twitter.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */