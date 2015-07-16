import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class zl
{
  private final KH a = new KH(new zm(this, paramKB), new zn(this));
  private int b;
  private final KB c = KI.a(a);
  
  public zl(KB paramKB) {}
  
  private KC b()
  {
    int i = c.m();
    return c.c(i);
  }
  
  private void c()
  {
    if (b > 0)
    {
      a.a();
      if (b != 0) {
        throw new IOException("compressedLimit > 0: " + b);
      }
    }
  }
  
  public List<yX> a(int paramInt)
  {
    b += paramInt;
    int i = c.m();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      KC localKC1 = b().d();
      KC localKC2 = b();
      if (localKC1.e() == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new yX(localKC1, localKC2));
      paramInt += 1;
    }
    c();
    return localArrayList;
  }
  
  public void a()
  {
    c.close();
  }
}

/* Location:
 * Qualified Name:     zl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */