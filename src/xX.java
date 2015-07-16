import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class xx
{
  private static final Pattern a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
  private static final Pattern b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  
  private xx(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    c = paramString1;
    d = paramString2;
    e = paramString3;
    f = paramString4;
  }
  
  public static xx a(String paramString)
  {
    Object localObject1 = a.matcher(paramString);
    if (!((Matcher)localObject1).lookingAt()) {}
    String str1;
    String str2;
    Matcher localMatcher;
    int i;
    Object localObject2;
    do
    {
      return null;
      str1 = ((Matcher)localObject1).group(1).toLowerCase(Locale.US);
      str2 = ((Matcher)localObject1).group(2).toLowerCase(Locale.US);
      localMatcher = b.matcher(paramString);
      i = ((Matcher)localObject1).end();
      localObject2 = null;
      if (i >= paramString.length()) {
        break;
      }
      localMatcher.region(i, paramString.length());
    } while (!localMatcher.lookingAt());
    String str3 = localMatcher.group(1);
    localObject1 = localObject2;
    if (str3 != null)
    {
      if (str3.equalsIgnoreCase("charset")) {
        break label124;
      }
      localObject1 = localObject2;
    }
    for (;;)
    {
      i = localMatcher.end();
      localObject2 = localObject1;
      break;
      label124:
      if (localMatcher.group(2) != null) {}
      for (localObject1 = localMatcher.group(2); (localObject2 != null) && (!((String)localObject1).equalsIgnoreCase((String)localObject2)); localObject1 = localMatcher.group(3)) {
        throw new IllegalArgumentException("Multiple different charsets: " + paramString);
      }
    }
    return new xx(paramString, str1, str2, (String)localObject2);
  }
  
  public Charset a()
  {
    if (f != null) {
      return Charset.forName(f);
    }
    return null;
  }
  
  public Charset a(Charset paramCharset)
  {
    if (f != null) {
      paramCharset = Charset.forName(f);
    }
    return paramCharset;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof xx)) && (c.equals(c));
  }
  
  public int hashCode()
  {
    return c.hashCode();
  }
  
  public String toString()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     xx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */