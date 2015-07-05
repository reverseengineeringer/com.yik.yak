import java.util.concurrent.CountDownLatch;

public final class ze
{
  private final CountDownLatch a = new CountDownLatch(1);
  private long b = -1L;
  private long c = -1L;
  
  void a()
  {
    if (b != -1L) {
      throw new IllegalStateException();
    }
    b = System.nanoTime();
  }
  
  void b()
  {
    if ((c != -1L) || (b == -1L)) {
      throw new IllegalStateException();
    }
    c = System.nanoTime();
    a.countDown();
  }
  
  void c()
  {
    if ((c != -1L) || (b == -1L)) {
      throw new IllegalStateException();
    }
    c = (b - 1L);
    a.countDown();
  }
}

/* Location:
 * Qualified Name:     ze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */