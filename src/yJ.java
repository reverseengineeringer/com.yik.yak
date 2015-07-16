import java.util.concurrent.ThreadFactory;

final class yj
  implements ThreadFactory
{
  yj(String paramString, boolean paramBoolean) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, a);
    paramRunnable.setDaemon(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     yj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */