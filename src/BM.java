import java.io.File;
import java.io.FilenameFilter;

final class bm
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return (paramString.endsWith(".cls")) && (!paramString.contains("Session"));
  }
}

/* Location:
 * Qualified Name:     bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */