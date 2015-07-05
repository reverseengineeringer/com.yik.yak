import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

public class tc
{
  private final Executor a = Executors.newSingleThreadExecutor();
  
  public Future<SharedPreferences> a(Context paramContext, String paramString, te paramte)
  {
    paramContext = new FutureTask(new td(paramContext, paramString, paramte));
    a.execute(paramContext);
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     tc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */