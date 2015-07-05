import java.io.File;
import java.util.concurrent.Callable;

class ao
  implements Callable<Boolean>
{
  ao(al paramal) {}
  
  public Boolean a()
  {
    try
    {
      boolean bool = al.a(a).delete();
      GS.g();
      new StringBuilder().append("Initialization marker file removed: ").append(bool).toString();
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      GS.g();
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */