package android.support.v4.text;

import android.os.Build.VERSION;

public class ICUCompat
{
  private static final ICUCompat.ICUCompatImpl IMPL = new ICUCompat.ICUCompatImplBase();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new ICUCompat.ICUCompatImplIcs();
      return;
    }
  }
  
  public static String addLikelySubtags(String paramString)
  {
    return IMPL.addLikelySubtags(paramString);
  }
  
  public static String getScript(String paramString)
  {
    return IMPL.getScript(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.ICUCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */