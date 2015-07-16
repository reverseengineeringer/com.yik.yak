import android.text.TextUtils;
import java.util.Map;

class fh
  implements Runnable
{
  fh(fg paramfg, Map paramMap) {}
  
  public void run()
  {
    if (TextUtils.isEmpty((CharSequence)a.get("&cid"))) {
      a.put("&cid", fg.a(b));
    }
    if ((fn.a(fg.b(b)).c()) || (fg.a(b, a))) {
      return;
    }
    if (!TextUtils.isEmpty(fg.c(b)))
    {
      fl.a().a(true);
      a.putAll(new ft().a(fg.c(b)).a());
      fl.a().a(false);
      fg.a(b, null);
    }
    fg.b(b, a);
    Map localMap = fp.a(a);
    fg.e(b).a(localMap, Long.valueOf((String)a.get("&ht")).longValue(), fg.c(b, a), fg.d(b));
  }
}

/* Location:
 * Qualified Name:     fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */