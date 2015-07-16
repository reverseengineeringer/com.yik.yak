import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

class at
{
  private final ExecutorService a;
  
  public at(ExecutorService paramExecutorService)
  {
    a = paramExecutorService;
  }
  
  <T> T a(Callable<T> paramCallable)
  {
    try
    {
      if (Looper.getMainLooper() == Looper.myLooper()) {
        return (T)a.submit(paramCallable).get(4L, TimeUnit.SECONDS);
      }
      paramCallable = a.submit(paramCallable).get();
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      HA.g();
      return null;
    }
    catch (Exception paramCallable)
    {
      HA.g();
    }
    return null;
  }
  
  Future<?> a(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = a.submit(new au(this, paramRunnable));
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      HA.g();
    }
    return null;
  }
  
  <T> Future<T> b(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = a.submit(new av(this, paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      HA.g();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */