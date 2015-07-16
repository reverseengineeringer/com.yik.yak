import java.io.File;
import java.io.FilenameFilter;

final class ae
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".cls_temp");
  }
}

/* Location:
 * Qualified Name:     ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */