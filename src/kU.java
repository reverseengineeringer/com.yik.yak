import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;

public final class ku
{
  public static int a(Context paramContext)
  {
    iE.a(paramContext);
    try
    {
      paramContext = mC.a(paramContext);
      a(paramContext);
      return 0;
    }
    catch (GooglePlayServicesNotAvailableException paramContext) {}
    return errorCode;
  }
  
  public static void a(lt paramlt)
  {
    try
    {
      kk.a(paramlt.a());
      mF.a(paramlt.b());
      return;
    }
    catch (RemoteException paramlt)
    {
      throw new mI(paramlt);
    }
  }
}

/* Location:
 * Qualified Name:     ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */