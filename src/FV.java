import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

class fv
  implements fu
{
  private final Context a;
  private String b;
  
  public fv(Context paramContext)
  {
    if (paramContext == null) {
      throw new NullPointerException("Context cannot be null");
    }
    a = paramContext.getApplicationContext();
  }
  
  private int a(String paramString1, String paramString2)
  {
    if (a == null) {
      return 0;
    }
    if (b != null) {}
    for (String str = b;; str = a.getPackageName()) {
      return a.getResources().getIdentifier(paramString1, paramString2, str);
    }
  }
  
  public int a(String paramString, int paramInt)
  {
    int i = a(paramString, "integer");
    if (i == 0) {
      return paramInt;
    }
    try
    {
      int j = Integer.parseInt(a.getString(i));
      return j;
    }
    catch (NumberFormatException paramString)
    {
      fq.d("NumberFormatException parsing " + a.getString(i));
    }
    return paramInt;
  }
  
  public String a(String paramString)
  {
    int i = a(paramString, "string");
    if (i == 0) {
      return null;
    }
    return a.getString(i);
  }
  
  public Double b(String paramString)
  {
    paramString = a(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      double d = Double.parseDouble(paramString);
      return Double.valueOf(d);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      fq.d("NumberFormatException parsing " + paramString);
    }
    return null;
  }
  
  public boolean c(String paramString)
  {
    int i = a(paramString, "bool");
    if (i == 0) {
      return false;
    }
    return "true".equalsIgnoreCase(a.getString(i));
  }
  
  public void d(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */