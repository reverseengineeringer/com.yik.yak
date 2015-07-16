import org.json.JSONException;
import org.json.JSONObject;

public class uz
{
  public final int a;
  public final String b;
  public final int c;
  public final int d;
  public final String e;
  public final String f;
  
  public uz(int paramInt1, String paramString1, int paramInt2, int paramInt3, String paramString2, String paramString3)
  {
    a = paramInt1;
    b = paramString1;
    c = paramInt2;
    d = paramInt3;
    e = paramString2;
    f = paramString3;
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new JSONObject();
      if (a == 1) {
        ((JSONObject)localObject).put("prefix", "shortest");
      }
      if (b != null) {
        ((JSONObject)localObject).put("view_class", b);
      }
      if (c > -1) {
        ((JSONObject)localObject).put("index", c);
      }
      if (d > -1) {
        ((JSONObject)localObject).put("id", d);
      }
      if (e != null) {
        ((JSONObject)localObject).put("contentDescription", e);
      }
      if (f != null) {
        ((JSONObject)localObject).put("tag", f);
      }
      localObject = ((JSONObject)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException("Can't serialize PathElement to String", localJSONException);
    }
  }
}

/* Location:
 * Qualified Name:     uz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */