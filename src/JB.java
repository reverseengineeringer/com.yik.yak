import android.content.Context;

public class jb
{
  private final Context a;
  private final String b;
  private final jw<jn> c;
  private final String d;
  private jc e;
  
  private jb(Context paramContext, String paramString1, String paramString2, jw<jn> paramjw)
  {
    a = paramContext;
    b = paramString1;
    c = paramjw;
    e = null;
    d = paramString2;
  }
  
  public static jb a(Context paramContext, String paramString1, String paramString2, jw<jn> paramjw)
  {
    return new jb(paramContext, paramString1, paramString2, paramjw);
  }
}

/* Location:
 * Qualified Name:     jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */