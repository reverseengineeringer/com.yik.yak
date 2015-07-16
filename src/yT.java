import java.net.Socket;

abstract class yt
  implements KT
{
  protected boolean a;
  
  private yt(yr paramyr) {}
  
  protected final void a()
  {
    yi.a(yr.f(b).d());
    yr.a(b, 6);
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (yr.c(b) != 5) {
      throw new IllegalStateException("state: " + yr.c(b));
    }
    yr.a(b, 0);
    if ((paramBoolean) && (yr.d(b) == 1))
    {
      yr.b(b, 0);
      xW.b.a(yr.e(b), yr.f(b));
    }
    while (yr.d(b) != 2) {
      return;
    }
    yr.a(b, 6);
    yr.f(b).d().close();
  }
  
  public KU b()
  {
    return yr.b(b).b();
  }
}

/* Location:
 * Qualified Name:     yt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */