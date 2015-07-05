import java.util.ArrayList;

class vi
  implements vb
{
  private vd a;
  private vj b;
  private int c;
  
  public vi(vd paramvd, vj paramvj, int paramInt)
  {
    a = paramvd;
    b = paramvj;
    c = paramInt;
  }
  
  private void c(va paramva)
  {
    if (a.b) {
      return;
    }
    int j = b.c.size();
    int i = 0;
    label24:
    vh localvh;
    if (i < j)
    {
      localvh = (vh)b.c.get(i);
      if ((b == c) && (a.a == paramva)) {
        paramva.b(this);
      }
    }
    for (paramva = localvh;; paramva = null)
    {
      b.c.remove(paramva);
      if (b.c.size() != 0) {
        break;
      }
      b.a.a();
      vd.a(a).add(b.a);
      return;
      i += 1;
      break label24;
    }
  }
  
  public void a(va paramva)
  {
    if (c == 0) {
      c(paramva);
    }
  }
  
  public void b(va paramva)
  {
    if (c == 1) {
      c(paramva);
    }
  }
}

/* Location:
 * Qualified Name:     vi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */