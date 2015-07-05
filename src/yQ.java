import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

final class yq
  extends ThreadLocal<DateFormat>
{
  protected DateFormat a()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    localSimpleDateFormat.setLenient(false);
    localSimpleDateFormat.setTimeZone(yp.a());
    return localSimpleDateFormat;
  }
}

/* Location:
 * Qualified Name:     yq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */