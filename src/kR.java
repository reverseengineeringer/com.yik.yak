import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;

public final class kr
{
  public static int a(Context paramContext)
  {
    iB.a(paramContext);
    try
    {
      paramContext = mF.a(paramContext);
      a(paramContext);
      return 0;
    }
    catch (GooglePlayServicesNotAvailableException paramContext) {}
    return errorCode;
  }
  
  public static void a(lw paramlw)
  {
    try
    {
      kh.a(paramlw.a());
      mI.a(paramlw.b());
      return;
    }
    catch (RemoteException paramlw)
    {
      throw new mL(paramlw);
    }
  }
}

/* Location:
 * Qualified Name:     kr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */