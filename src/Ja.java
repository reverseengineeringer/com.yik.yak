import android.os.Build.VERSION;

public final class ja
{
  public static boolean a()
  {
    return a(11);
  }
  
  private static boolean a(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  public static boolean b()
  {
    return a(13);
  }
  
  public static boolean c()
  {
    return a(14);
  }
  
  public static boolean d()
  {
    return a(16);
  }
}

/* Location:
 * Qualified Name:     ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */