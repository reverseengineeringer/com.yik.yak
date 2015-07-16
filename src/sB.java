import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class sb
  extends FilterOutputStream
{
  private boolean a;
  private int b;
  private byte[] c;
  private int d;
  private int e;
  private boolean f;
  private byte[] g;
  private boolean h;
  private int i;
  private byte[] j;
  
  public sb(OutputStream paramOutputStream, int paramInt)
  {
    super(paramOutputStream);
    boolean bool1;
    if ((paramInt & 0x8) != 0)
    {
      bool1 = true;
      f = bool1;
      if ((paramInt & 0x1) == 0) {
        break label106;
      }
      bool1 = bool2;
      label34:
      a = bool1;
      if (!a) {
        break label112;
      }
    }
    label106:
    label112:
    for (int k = 3;; k = 4)
    {
      d = k;
      c = new byte[d];
      b = 0;
      e = 0;
      h = false;
      g = new byte[4];
      i = paramInt;
      j = sa.a(paramInt);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label34;
    }
  }
  
  public void a()
  {
    if (b > 0)
    {
      if (a)
      {
        out.write(sa.a(g, c, b, i));
        b = 0;
      }
    }
    else {
      return;
    }
    throw new IOException("Base64 input not properly padded.");
  }
  
  public void close()
  {
    a();
    super.close();
    c = null;
    out = null;
  }
  
  public void write(int paramInt)
  {
    if (h) {
      out.write(paramInt);
    }
    do
    {
      do
      {
        do
        {
          return;
          if (!a) {
            break;
          }
          arrayOfByte = c;
          k = b;
          b = (k + 1);
          arrayOfByte[k] = ((byte)paramInt);
        } while (b < d);
        out.write(sa.a(g, c, d, i));
        e += 4;
        if ((f) && (e >= 76))
        {
          out.write(10);
          e = 0;
        }
        b = 0;
        return;
        if (j[(paramInt & 0x7F)] <= -5) {
          break;
        }
        byte[] arrayOfByte = c;
        int k = b;
        b = (k + 1);
        arrayOfByte[k] = ((byte)paramInt);
      } while (b < d);
      paramInt = sa.a(c, 0, g, 0, i);
      out.write(g, 0, paramInt);
      b = 0;
      return;
    } while (j[(paramInt & 0x7F)] == -5);
    throw new IOException("Invalid character in Base64 data.");
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (h) {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      return;
      int k = 0;
      while (k < paramInt2)
      {
        write(paramArrayOfByte[(paramInt1 + k)]);
        k += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     sb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */