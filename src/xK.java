import java.util.ArrayList;
import java.util.List;

public final class xk
{
  private final List<String> a = new ArrayList(20);
  
  private xk c(String paramString1, String paramString2)
  {
    a.add(paramString1);
    a.add(paramString2.trim());
    return this;
  }
  
  public xi a()
  {
    return new xi(this, null);
  }
  
  xk a(String paramString)
  {
    int i = paramString.indexOf(":", 1);
    if (i != -1) {
      return c(paramString.substring(0, i), paramString.substring(i + 1));
    }
    if (paramString.startsWith(":")) {
      return c("", paramString.substring(1));
    }
    return c("", paramString);
  }
  
  public xk a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("name == null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("value == null");
    }
    if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1)) {
      throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
    }
    return c(paramString1, paramString2);
  }
  
  public xk b(String paramString)
  {
    int j;
    for (int i = 0; i < a.size(); i = j + 2)
    {
      j = i;
      if (paramString.equalsIgnoreCase((String)a.get(i)))
      {
        a.remove(i);
        a.remove(i);
        j = i - 2;
      }
    }
    return this;
  }
  
  public xk b(String paramString1, String paramString2)
  {
    b(paramString1);
    a(paramString1, paramString2);
    return this;
  }
  
  public String c(String paramString)
  {
    int i = a.size() - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase((String)a.get(i))) {
        return (String)a.get(i + 1);
      }
      i -= 2;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     xk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */