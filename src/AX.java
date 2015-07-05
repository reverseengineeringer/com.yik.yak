import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

class ax
{
  private final ExecutorService a;
  
  public ax(ExecutorService paramExecutorService)
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
      GS.g();
      return null;
    }
    catch (Exception paramCallable)
    {
      GS.g();
    }
    return null;
  }
  
  Future<?> a(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = a.submit(new ay(this, paramRunnable));
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      GS.g();
    }
    return null;
  }
  
  <T> Future<T> b(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = a.submit(new az(this, paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      GS.g();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */