import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class bp
  implements bk
{
  private final File a;
  private final Map<String, String> b;
  
  public bp(File paramFile)
  {
    this(paramFile, Collections.emptyMap());
  }
  
  public bp(File paramFile, Map<String, String> paramMap)
  {
    a = paramFile;
    b = new HashMap(paramMap);
    if (a.length() == 0L) {
      b.putAll(bl.a);
    }
  }
  
  public boolean a()
  {
    HA.g();
    new StringBuilder().append("Removing report at ").append(a.getPath()).toString();
    return a.delete();
  }
  
  public String b()
  {
    return d().getName();
  }
  
  public String c()
  {
    String str = b();
    return str.substring(0, str.lastIndexOf('.'));
  }
  
  public File d()
  {
    return a;
  }
  
  public Map<String, String> e()
  {
    return Collections.unmodifiableMap(b);
  }
}

/* Location:
 * Qualified Name:     bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */