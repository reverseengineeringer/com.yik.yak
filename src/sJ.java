import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import com.mixpanel.android.surveys.SurveyActivity;
import java.util.List;

public class sj
{
  public static String a = "MixpanelAPI.ConfigurationChecker";
  
  public static boolean a(Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission("android.permission.INTERNET", paramContext.getPackageName()) == 0;
  }
  
  public static boolean b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 16) {
      return false;
    }
    Intent localIntent = new Intent(paramContext, SurveyActivity.class);
    localIntent.addFlags(268435456);
    localIntent.addFlags(131072);
    if (paramContext.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0)
    {
      new StringBuilder().append(SurveyActivity.class.getName()).append(" is not registered as an activity in your application, so surveys can't be shown.").toString();
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     sj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */