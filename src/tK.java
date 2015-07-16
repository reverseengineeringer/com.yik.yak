import com.mixpanel.android.mpmetrics.Survey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class tk
{
  private final int b;
  private final String c;
  private final String d;
  private final List<String> e;
  
  private tk(Survey paramSurvey, JSONObject paramJSONObject)
  {
    b = paramJSONObject.getInt("id");
    c = paramJSONObject.getString("type");
    d = paramJSONObject.getString("prompt");
    Object localObject = Collections.emptyList();
    paramSurvey = (Survey)localObject;
    if (paramJSONObject.has("extra_data"))
    {
      JSONObject localJSONObject = paramJSONObject.getJSONObject("extra_data");
      paramSurvey = (Survey)localObject;
      if (localJSONObject.has("$choices"))
      {
        localObject = localJSONObject.getJSONArray("$choices");
        paramSurvey = new ArrayList(((JSONArray)localObject).length());
        int i = 0;
        while (i < ((JSONArray)localObject).length())
        {
          paramSurvey.add(((JSONArray)localObject).getString(i));
          i += 1;
        }
      }
    }
    e = Collections.unmodifiableList(paramSurvey);
    if ((d() == tl.b) && (e.size() == 0)) {
      throw new sm("Question is multiple choice but has no answers:" + paramJSONObject.toString());
    }
  }
  
  public int a()
  {
    return b;
  }
  
  public String b()
  {
    return d;
  }
  
  public List<String> c()
  {
    return e;
  }
  
  public tl d()
  {
    if (tl.b.toString().equals(c)) {
      return tl.b;
    }
    if (tl.c.toString().equals(c)) {
      return tl.c;
    }
    return tl.a;
  }
}

/* Location:
 * Qualified Name:     tk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */