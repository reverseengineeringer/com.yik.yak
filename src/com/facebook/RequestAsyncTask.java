package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

public class RequestAsyncTask
  extends AsyncTask<Void, Void, List<Response>>
{
  private static final String TAG = RequestAsyncTask.class.getCanonicalName();
  private static Method executeOnExecutorMethod;
  private final HttpURLConnection connection;
  private Exception exception;
  private final RequestBatch requests;
  
  static
  {
    Method[] arrayOfMethod = AsyncTask.class.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Method localMethod = arrayOfMethod[i];
        if ("executeOnExecutor".equals(localMethod.getName()))
        {
          Class[] arrayOfClass = localMethod.getParameterTypes();
          if ((arrayOfClass.length == 2) && (arrayOfClass[0] == Executor.class) && (arrayOfClass[1].isArray())) {
            executeOnExecutorMethod = localMethod;
          }
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public RequestAsyncTask(RequestBatch paramRequestBatch)
  {
    this(null, paramRequestBatch);
  }
  
  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, RequestBatch paramRequestBatch)
  {
    requests = paramRequestBatch;
    connection = paramHttpURLConnection;
  }
  
  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, Collection<Request> paramCollection)
  {
    this(paramHttpURLConnection, new RequestBatch(paramCollection));
  }
  
  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, Request... paramVarArgs)
  {
    this(paramHttpURLConnection, new RequestBatch(paramVarArgs));
  }
  
  public RequestAsyncTask(Collection<Request> paramCollection)
  {
    this(null, new RequestBatch(paramCollection));
  }
  
  public RequestAsyncTask(Request... paramVarArgs)
  {
    this(null, new RequestBatch(paramVarArgs));
  }
  
  protected List<Response> doInBackground(Void... paramVarArgs)
  {
    try
    {
      if (connection == null) {
        return requests.executeAndWait();
      }
      paramVarArgs = Request.executeConnectionAndWait(connection, requests);
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      exception = paramVarArgs;
    }
    return null;
  }
  
  RequestAsyncTask executeOnSettingsExecutor()
  {
    if (executeOnExecutorMethod != null) {}
    try
    {
      executeOnExecutorMethod.invoke(this, new Object[] { Settings.getExecutor(), null });
      return this;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return this;
    }
    catch (InvocationTargetException localInvocationTargetException) {}
    execute(new Void[0]);
    return this;
    return this;
  }
  
  protected final Exception getException()
  {
    return exception;
  }
  
  protected final RequestBatch getRequests()
  {
    return requests;
  }
  
  protected void onPostExecute(List<Response> paramList)
  {
    super.onPostExecute(paramList);
    if (exception != null) {
      String.format("onPostExecute: exception encountered during request: %s", new Object[] { exception.getMessage() });
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (requests.getCallbackHandler() == null) {
      requests.setCallbackHandler(new Handler());
    }
  }
  
  public String toString()
  {
    return "{RequestAsyncTask: " + " connection: " + connection + ", requests: " + requests + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.RequestAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */