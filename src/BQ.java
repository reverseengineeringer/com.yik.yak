import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class bq
{
  public static void a(File paramFile, FilenameFilter paramFilenameFilter, int paramInt, Comparator<File> paramComparator)
  {
    paramFile = paramFile.listFiles(paramFilenameFilter);
    int j;
    int k;
    int i;
    if ((paramFile != null) && (paramFile.length > paramInt))
    {
      Arrays.sort(paramFile, paramComparator);
      j = paramFile.length;
      k = paramFile.length;
      i = 0;
    }
    for (;;)
    {
      if (i < k)
      {
        paramFilenameFilter = paramFile[i];
        if (j > paramInt) {}
      }
      else
      {
        return;
      }
      paramFilenameFilter.delete();
      j -= 1;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */