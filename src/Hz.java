import android.os.Looper;

public final class hZ
{
  public static void a(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("null reference");
    }
  }
  
  public static void a(String paramString)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      new StringBuilder().append("checkMainThread: current thread ").append(Thread.currentThread()).append(" IS NOT the main thread ").append(Looper.getMainLooper().getThread()).append("!").toString();
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void b(String paramString)
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      new StringBuilder().append("checkNotMainThread: current thread ").append(Thread.currentThread()).append(" IS the main thread ").append(Looper.getMainLooper().getThread()).append("!").toString();
      throw new IllegalStateException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     hZ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */