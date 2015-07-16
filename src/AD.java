import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

class ad
  extends FileOutputStream
{
  public static final FilenameFilter a = new ae();
  private final String b;
  private File c;
  private File d;
  private boolean e = false;
  
  public ad(File paramFile, String paramString)
  {
    super(new File(paramFile, paramString + ".cls_temp"));
    b = (paramFile + File.separator + paramString);
    c = new File(b + ".cls_temp");
  }
  
  public void a()
  {
    if (e) {
      return;
    }
    e = true;
    super.flush();
    super.close();
  }
  
  public void close()
  {
    File localFile;
    try
    {
      boolean bool = e;
      if (bool) {}
      for (;;)
      {
        return;
        e = true;
        super.flush();
        super.close();
        localFile = new File(b + ".cls");
        if (!c.renameTo(localFile)) {
          break;
        }
        c = null;
        d = localFile;
      }
      str = "";
    }
    finally {}
    String str;
    if (localFile.exists()) {
      str = " (target already exists)";
    }
    for (;;)
    {
      throw new IOException("Could not rename temp file: " + c + " -> " + localFile + str);
      if (!c.exists()) {
        str = " (source does not exist)";
      }
    }
  }
}

/* Location:
 * Qualified Name:     ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */