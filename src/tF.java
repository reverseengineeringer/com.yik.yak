import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

class tf
{
  private final Executor a = Executors.newSingleThreadExecutor();
  
  public Future<SharedPreferences> a(Context paramContext, String paramString, th paramth)
  {
    paramContext = new FutureTask(new tg(paramContext, paramString, paramth));
    a.execute(paramContext);
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     tf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */