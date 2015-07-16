import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public final class xs
{
  private final String[] a;
  
  private xs(xu paramxu)
  {
    a = ((String[])xu.a(paramxu).toArray(new String[xu.a(paramxu).size()]));
  }
  
  private static String a(String[] paramArrayOfString, String paramString)
  {
    int i = paramArrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(paramArrayOfString[i])) {
        return paramArrayOfString[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public int a()
  {
    return a.length / 2;
  }
  
  public String a(int paramInt)
  {
    paramInt *= 2;
    if ((paramInt < 0) || (paramInt >= a.length)) {
      return null;
    }
    return a[paramInt];
  }
  
  public String a(String paramString)
  {
    return a(a, paramString);
  }
  
  public String b(int paramInt)
  {
    paramInt = paramInt * 2 + 1;
    if ((paramInt < 0) || (paramInt >= a.length)) {
      return null;
    }
    return a[paramInt];
  }
  
  public Date b(String paramString)
  {
    paramString = a(paramString);
    if (paramString != null) {
      return yz.a(paramString);
    }
    return null;
  }
  
  public xu b()
  {
    xu localxu = new xu();
    xu.a(localxu).addAll(Arrays.asList(a));
    return localxu;
  }
  
  public List<String> c(String paramString)
  {
    int j = a();
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if (paramString.equalsIgnoreCase(a(i)))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(2);
        }
        ((List)localObject2).add(b(i));
      }
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      return Collections.unmodifiableList((List)localObject1);
    }
    return Collections.emptyList();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = a();
    while (i < j)
    {
      localStringBuilder.append(a(i)).append(": ").append(b(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     xs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */