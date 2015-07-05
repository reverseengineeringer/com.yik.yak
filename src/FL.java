import android.text.TextUtils;
import java.util.Map;

class fl
  implements Runnable
{
  fl(fk paramfk, Map paramMap) {}
  
  public void run()
  {
    if (TextUtils.isEmpty((CharSequence)a.get("&cid"))) {
      a.put("&cid", fk.a(b));
    }
    if ((fq.a(fk.b(b)).c()) || (fk.a(b, a))) {
      return;
    }
    if (!TextUtils.isEmpty(fk.c(b)))
    {
      fo.a().a(true);
      a.putAll(new fw().a(fk.c(b)).a());
      fo.a().a(false);
      fk.a(b, null);
    }
    fk.b(b, a);
    Map localMap = fs.a(a);
    fk.e(b).a(localMap, Long.valueOf((String)a.get("&ht")).longValue(), fk.c(b, a), fk.d(b));
  }
}

/* Location:
 * Qualified Name:     fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */