import android.app.Activity;
import android.support.annotation.NonNull;
import android.view.ViewGroup;
import com.nispok.snackbar.Snackbar;

public class ww
{
  private static final String a = ww.class.getSimpleName();
  private static Snackbar b;
  
  public static void a()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public static void a(@NonNull Snackbar paramSnackbar, @NonNull Activity paramActivity)
  {
    if (b != null)
    {
      if ((b.f()) && (!b.g()))
      {
        b.a();
        b = paramSnackbar;
        b.a(paramActivity);
        return;
      }
      b.b();
    }
    b = paramSnackbar;
    b.b(paramActivity);
  }
  
  public static void a(@NonNull Snackbar paramSnackbar, @NonNull ViewGroup paramViewGroup)
  {
    a(paramSnackbar, paramViewGroup, Snackbar.b(paramSnackbar.getContext()));
  }
  
  public static void a(@NonNull Snackbar paramSnackbar, @NonNull ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (b != null)
    {
      if ((b.f()) && (!b.g()))
      {
        b.a();
        b = paramSnackbar;
        b.a(paramViewGroup, paramBoolean);
        return;
      }
      b.b();
    }
    b = paramSnackbar;
    b.b(paramViewGroup, paramBoolean);
  }
  
  public static Snackbar b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */