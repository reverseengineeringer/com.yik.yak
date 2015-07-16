import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

class tg
  implements Callable<SharedPreferences>
{
  private final Context a;
  private final String b;
  private final th c;
  
  public tg(Context paramContext, String paramString, th paramth)
  {
    a = paramContext;
    b = paramString;
    c = paramth;
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
 * Qualified Name:     tg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */