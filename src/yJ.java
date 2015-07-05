import java.net.Socket;

abstract class yj
  implements Kl
{
  protected boolean a;
  
  private yj(yh paramyh) {}
  
  protected final void a()
  {
    xY.a(yh.f(b).d());
    yh.a(b, 6);
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (yh.c(b) != 5) {
      throw new IllegalStateException("state: " + yh.c(b));
    }
    yh.a(b, 0);
    if ((paramBoolean) && (yh.d(b) == 1))
    {
      yh.b(b, 0);
      xM.b.a(yh.e(b), yh.f(b));
    }
    while (yh.d(b) != 2) {
      return;
    }
    yh.a(b, 6);
    yh.f(b).d().close();
  }
  
  public Km b()
  {
    return yh.b(b).b();
  }
}

/* Location:
 * Qualified Name:     yj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */