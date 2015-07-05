import java.util.SortedSet;
import java.util.TreeSet;

public class fo
{
  private static final fo d = new fo();
  private SortedSet<fp> a = new TreeSet();
  private StringBuilder b = new StringBuilder();
  private boolean c = false;
  
  public static fo a()
  {
    return d;
  }
  
  public void a(fp paramfp)
  {
    try
    {
      if (!c)
      {
        a.add(paramfp);
        b.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramfp.ordinal()));
      }
      return;
    }
    finally
    {
      paramfp = finally;
      throw paramfp;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      c = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String b()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      int j = 6;
      int i = 0;
      while (a.size() > 0)
      {
        fp localfp = (fp)a.first();
        a.remove(localfp);
        int k = localfp.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << localfp.ordinal() % 6);
      }
      if ((i > 0) || (((StringBuilder)localObject1).length() == 0)) {
        ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
      }
      a.clear();
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    finally {}
  }
  
  public String c()
  {
    try
    {
      if (b.length() > 0) {
        b.insert(0, ".");
      }
      String str = b.toString();
      b = new StringBuilder();
      return str;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */