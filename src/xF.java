import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class xf
{
  private final Map<String, List<KC>> a = new LinkedHashMap();
  
  public xd a()
  {
    return new xd(this, null);
  }
  
  public xf a(String paramString, String... paramVarArgs)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("hostname == null");
    }
    ArrayList localArrayList = new ArrayList();
    paramString = (List)a.put(paramString, Collections.unmodifiableList(localArrayList));
    if (paramString != null) {
      localArrayList.addAll(paramString);
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      if (!paramString.startsWith("sha1/")) {
        throw new IllegalArgumentException("pins must start with 'sha1/': " + paramString);
      }
      KC localKC = KC.b(paramString.substring("sha1/".length()));
      if (localKC == null) {
        throw new IllegalArgumentException("pins must be base64: " + paramString);
      }
      localArrayList.add(localKC);
      i += 1;
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     xf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */