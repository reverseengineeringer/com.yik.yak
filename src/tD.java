import android.R.drawable;
import android.content.Context;

public class td
  extends tc
{
  private final String a;
  
  public td(String paramString, Context paramContext)
  {
    super(paramContext);
    a = paramString;
    b();
  }
  
  protected Class<?> a()
  {
    return R.drawable.class;
  }
  
  protected String a(Context paramContext)
  {
    return a + ".R$drawable";
  }
}

/* Location:
 * Qualified Name:     td
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */