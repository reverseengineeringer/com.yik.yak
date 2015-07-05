import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class zb
{
  private final JZ a = new JZ(new zc(this, paramJT), new zd(this));
  private int b;
  private final JT c = Ka.a(a);
  
  public zb(JT paramJT) {}
  
  private JU b()
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
  
  public List<yN> a(int paramInt)
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
      JU localJU1 = b().d();
      JU localJU2 = b();
      if (localJU1.e() == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new yN(localJU1, localJU2));
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
 * Qualified Name:     zb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */