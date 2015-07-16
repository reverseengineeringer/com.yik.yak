import android.content.Context;
import java.util.UUID;

class bz
  extends Jf<bC>
{
  private JR g;
  
  bz(Context paramContext, bF parambF, Ij paramIj, Jo paramJo)
  {
    super(paramContext, parambF, paramIj, paramJo, 100);
  }
  
  protected String a()
  {
    UUID localUUID = UUID.randomUUID();
    return "sa" + "_" + localUUID.toString() + "_" + c.a() + ".tap";
  }
  
  void a(JR paramJR)
  {
    g = paramJR;
  }
  
  protected int b()
  {
    if (g == null) {
      return super.b();
    }
    return g.e;
  }
  
  protected int c()
  {
    if (g == null) {
      return super.c();
    }
    return g.c;
  }
}

/* Location:
 * Qualified Name:     bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */