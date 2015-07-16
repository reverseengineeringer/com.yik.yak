package com.parse;

import N;
import Z;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

abstract class ParseRequest<Response, Result>
{
  private static final int CORE_POOL_SIZE = CPU_COUNT * 2 + 1;
  private static final int CPU_COUNT;
  protected static final int DEFAULT_MAX_RETRIES = 4;
  private static final long KEEP_ALIVE_TIME = 1L;
  private static final int MAX_POOL_SIZE = CPU_COUNT * 2 * 2 + 1;
  private static final int MAX_QUEUE_SIZE = 128;
  static final ExecutorService NETWORK_EXECUTOR = newThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), sThreadFactory);
  private static final int SOCKET_OPERATION_TIMEOUT = 10000;
  private static volatile String UserAgent;
  private static HttpClient defaultClient = null;
  private static long defaultInitialRetryDelay = 1000L;
  private static final ThreadFactory sThreadFactory = new ParseRequest.1();
  private HttpClient client = defaultClient;
  private AtomicReference<N<Result>.Z> currentTask = new AtomicReference();
  protected int maxRetries = 4;
  protected int method;
  private HttpUriRequest request;
  protected String url;
  
  static
  {
    CPU_COUNT = Runtime.getRuntime().availableProcessors();
  }
  
  public ParseRequest(int paramInt, String paramString)
  {
    method = paramInt;
    url = paramString;
  }
  
  public ParseRequest(String paramString)
  {
    this(0, paramString);
  }
  
  private N<Response> executeAsync(int paramInt, long paramLong, ProgressCallback paramProgressCallback)
  {
    return sendOneRequestAsync(paramProgressCallback).b(new ParseRequest.8(this, paramInt, paramLong, paramProgressCallback));
  }
  
  public static HttpClient getDefaultClient()
  {
    if (defaultClient == null) {
      throw new IllegalStateException("Can't send Parse HTTPS request before Parse.initialize()");
    }
    return defaultClient;
  }
  
  public static long getDefaultInitialRetryDelay()
  {
    return defaultInitialRetryDelay;
  }
  
  private static String getUserAgent(Context paramContext)
  {
    String str1;
    if (UserAgent == null) {
      str1 = "unknown";
    }
    try
    {
      String str2 = paramContext.getPackageName();
      int i = getPackageManagergetPackageInfo0versionCode;
      paramContext = str2 + "/" + i;
      UserAgent = "Parse Android SDK 1.7.1 (" + paramContext + ") API Level " + Build.VERSION.SDK_INT;
      return UserAgent;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = str1;
      }
    }
  }
  
  public static void initialize(Context paramContext)
  {
    if (defaultClient == null) {
      defaultClient = newHttpClient(paramContext);
    }
  }
  
  private static HttpClient newHttpClient(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context passed to newHttpClient should not be null.");
    }
    Object localObject1 = paramContext.getApplicationContext();
    paramContext = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(paramContext, false);
    HttpConnectionParams.setConnectionTimeout(paramContext, 10000);
    HttpConnectionParams.setSoTimeout(paramContext, 10000);
    HttpConnectionParams.setSocketBufferSize(paramContext, 8192);
    HttpClientParams.setRedirecting(paramContext, false);
    Object localObject2 = new SSLSessionCache((Context)localObject1);
    HttpProtocolParams.setUserAgent(paramContext, getUserAgent((Context)localObject1));
    localObject1 = new SchemeRegistry();
    ((SchemeRegistry)localObject1).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    ((SchemeRegistry)localObject1).register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(10000, (SSLSessionCache)localObject2), 443));
    ConnManagerParams.setMaxConnectionsPerRoute(paramContext, new ConnPerRouteBean(20));
    ConnManagerParams.setMaxTotalConnections(paramContext, 20);
    localObject2 = System.getProperty("http.proxyHost");
    String str = System.getProperty("http.proxyPort");
    if ((localObject2 != null) && (((String)localObject2).length() != 0) && (str != null) && (str.length() != 0)) {
      paramContext.setParameter("http.route.default-proxy", new HttpHost((String)localObject2, Integer.parseInt(str), "http"));
    }
    return new DefaultHttpClient(new ThreadSafeClientConnManager(paramContext, (SchemeRegistry)localObject1), paramContext);
  }
  
  private static ThreadPoolExecutor newThreadPoolExecutor(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue<Runnable> paramBlockingQueue, ThreadFactory paramThreadFactory)
  {
    paramTimeUnit = new ThreadPoolExecutor(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue, paramThreadFactory);
    if (Build.VERSION.SDK_INT >= 9) {
      paramTimeUnit.allowCoreThreadTimeOut(true);
    }
    return paramTimeUnit;
  }
  
  private N<Response> sendOneRequestAsync(ProgressCallback paramProgressCallback)
  {
    if (((Z)currentTask.get()).a().c()) {
      return N.h();
    }
    return N.a(new ParseRequest.3(this, paramProgressCallback), NETWORK_EXECUTOR).b(new ParseRequest.2(this), N.a);
  }
  
  public static void setDefaultClient(HttpClient paramHttpClient)
  {
    defaultClient = paramHttpClient;
  }
  
  public static void setDefaultInitialRetryDelay(long paramLong)
  {
    defaultInitialRetryDelay = paramLong;
  }
  
  public void cancel()
  {
    Z localZ = (Z)currentTask.get();
    if (localZ != null) {
      localZ.b();
    }
    if (request != null) {
      request.abort();
    }
  }
  
  protected ParseException connectionFailed(String paramString, Exception paramException)
  {
    return new ParseException(100, paramString + ": " + paramException.getClass().getName() + ": " + paramException.getMessage());
  }
  
  public N<Result> executeAsync()
  {
    return executeAsync(null);
  }
  
  public N<Result> executeAsync(ProgressCallback paramProgressCallback)
  {
    Z localZ = N.a();
    currentTask.set(localZ);
    N.a(null).b(new ParseRequest.7(this)).d(new ParseRequest.6(this, paramProgressCallback)).d(new ParseRequest.5(this)).b(new ParseRequest.4(this, localZ));
    return localZ.a();
  }
  
  protected HttpEntity newEntity()
  {
    return null;
  }
  
  protected HttpUriRequest newRequest()
  {
    if (method == 0) {}
    HttpPost localHttpPost;
    for (Object localObject = new HttpGet(url);; localObject = localHttpPost)
    {
      AndroidHttpClient.modifyRequestToAcceptGzipResponse((HttpRequest)localObject);
      return (HttpUriRequest)localObject;
      if (method != 1) {
        break;
      }
      localHttpPost = null;
      localObject = localHttpPost;
      if (url.contains(".s3.amazonaws.com"))
      {
        Matcher localMatcher = Pattern.compile("^https://([a-zA-Z0-9.]*\\.s3\\.amazonaws\\.com)/?.*").matcher(url);
        localObject = localHttpPost;
        if (localMatcher.matches())
        {
          localObject = localMatcher.group(1);
          url = url.replace((CharSequence)localObject, "s3.amazonaws.com");
        }
      }
      localHttpPost = new HttpPost(url);
      localHttpPost.setEntity(newEntity());
      if (localObject != null) {
        localHttpPost.addHeader("Host", (String)localObject);
      }
    }
    throw new IllegalStateException("Invalid method " + method);
  }
  
  protected N<Result> onPostExecute(N<Response> paramN)
  {
    return paramN.i();
  }
  
  protected N<Void> onPreExecute(N<Void> paramN)
  {
    return null;
  }
  
  protected abstract Response onResponse(HttpResponse paramHttpResponse, ProgressCallback paramProgressCallback);
  
  public void setClient(HttpClient paramHttpClient)
  {
    client = paramHttpClient;
  }
  
  public void setMaxRetries(int paramInt)
  {
    maxRetries = paramInt;
  }
  
  public void setMethod(int paramInt)
  {
    method = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */