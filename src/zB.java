import java.util.List;
import java.util.Map;

final class zb
{
  private final Kx a;
  
  zb(Kx paramKx)
  {
    a = paramKx;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
    {
      a.a(paramInt3 | paramInt1);
      return;
    }
    a.a(paramInt3 | paramInt2);
    paramInt1 -= paramInt2;
    while (paramInt1 >= 128)
    {
      a.a(paramInt1 & 0x7F | 0x80);
      paramInt1 >>>= 7;
    }
    a.a(paramInt1);
  }
  
  void a(KC paramKC)
  {
    a(paramKC.e(), 127, 0);
    a.a(paramKC);
  }
  
  void a(List<yX> paramList)
  {
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      KC localKC = geth.d();
      Integer localInteger = (Integer)yZ.b().get(localKC);
      if (localInteger != null)
      {
        a(localInteger.intValue() + 1, 15, 0);
        a(geti);
      }
      for (;;)
      {
        i += 1;
        break;
        a.a(0);
        a(localKC);
        a(geti);
      }
    }
  }
}

/* Location:
 * Qualified Name:     zb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */