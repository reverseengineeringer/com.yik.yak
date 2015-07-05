import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

class td
  implements Callable<SharedPreferences>
{
  private final Context a;
  private final String b;
  private final te c;
  
  public td(Context paramContext, String paramString, te paramte)
  {
    a = paramContext;
    b = paramString;
    c = paramte;
  }
  
  public SharedPreferences a()
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences(b, 0);
    if (c != null) {
      c.a(localSharedPreferences);
    }
    return localSharedPreferences;
  }
}

/* Location:
 * Qualified Name:     td
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */