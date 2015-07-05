import java.net.URL;
import java.util.List;

class yu
  implements xm
{
  private final int b;
  private final xt c;
  private int d;
  
  yu(yr paramyr, int paramInt, xt paramxt)
  {
    b = paramInt;
    c = paramxt;
  }
  
  public xt a()
  {
    return c;
  }
  
  public xz a(xt paramxt)
  {
    d += 1;
    Object localObject1;
    Object localObject2;
    if (b > 0)
    {
      localObject1 = (xl)a.a.v().get(b - 1);
      localObject2 = b().c().a();
      if ((!paramxt.a().getHost().equals(((wD)localObject2).a())) || (xY.a(paramxt.a()) != ((wD)localObject2).b())) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
      }
      if (d > 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
    }
    if (b < a.a.v().size())
    {
      paramxt = new yu(a, b + 1, paramxt);
      localObject1 = (xl)a.a.v().get(b);
      localObject2 = ((xl)localObject1).a(paramxt);
      if (d != 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
      return (xz)localObject2;
    }
    yr.b(a).a(paramxt);
    if ((a.c()) && (paramxt.f() != null))
    {
      localObject1 = Ka.a(yr.b(a).a(paramxt, paramxt.f().b()));
      paramxt.f().a((JS)localObject1);
      ((JS)localObject1).close();
    }
    return yr.c(a);
  }
  
  public wZ b()
  {
    return yr.a(a);
  }
}

/* Location:
 * Qualified Name:     yu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */