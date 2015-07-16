import java.util.concurrent.CountDownLatch;

class as
{
  private boolean b = false;
  private final CountDownLatch c = new CountDownLatch(1);
  
  private as(ah paramah) {}
  
  void a(boolean paramBoolean)
  {
    b = paramBoolean;
    c.countDown();
  }
  
  boolean a()
  {
    return b;
  }
  
  void b()
  {
    try
    {
      c.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */