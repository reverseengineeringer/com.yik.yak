import java.util.SortedSet;
import java.util.TreeSet;

public class hm
{
  private static final hm d = new hm();
  private SortedSet<hn> a = new TreeSet();
  private StringBuilder b = new StringBuilder();
  private boolean c = false;
  
  public static hm a()
  {
    return d;
  }
  
  public void a(hn paramhn)
  {
    try
    {
      if (!c)
      {
        a.add(paramhn);
        b.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramhn.ordinal()));
      }
      return;
    }
    finally
    {
      paramhn = finally;
      throw paramhn;
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
        hn localhn = (hn)a.first();
        a.remove(localhn);
        int k = localhn.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << localhn.ordinal() % 6);
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
 * Qualified Name:     hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */