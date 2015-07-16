import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ud
{
  private static final Class<?>[] d = new Class[0];
  private static final List<uz> e = Collections.emptyList();
  private final tb a;
  private final uu b;
  private final vf c;
  
  public ud(tb paramtb, uu paramuu, vf paramvf)
  {
    a = paramtb;
    b = paramuu;
    c = paramvf;
  }
  
  private Drawable a(JSONObject paramJSONObject, List<String> paramList)
  {
    int i = 0;
    try
    {
      if (paramJSONObject.isNull("url")) {
        throw new uf("Can't construct a BitmapDrawable with a null url");
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new uf("Couldn't read drawable description", paramJSONObject);
    }
    String str = paramJSONObject.getString("url");
    boolean bool = paramJSONObject.isNull("dimensions");
    int j;
    int k;
    int m;
    if (bool)
    {
      j = 0;
      k = 0;
      m = 0;
    }
    for (int n = 0;; n = 1)
    {
      try
      {
        paramJSONObject = b.a(str);
        paramList.add(str);
        paramJSONObject = new BitmapDrawable(Resources.getSystem(), paramJSONObject);
        if (n == 0) {
          break;
        }
        paramJSONObject.setBounds(m, j, k, i);
        return paramJSONObject;
      }
      catch (uv paramJSONObject)
      {
        throw new ug(paramJSONObject.getMessage(), paramJSONObject.getCause());
      }
      paramJSONObject = paramJSONObject.getJSONObject("dimensions");
      m = paramJSONObject.getInt("left");
      k = paramJSONObject.getInt("right");
      j = paramJSONObject.getInt("top");
      i = paramJSONObject.getInt("bottom");
    }
    return paramJSONObject;
  }
  
  private Integer a(int paramInt, String paramString, tb paramtb)
  {
    if (paramString != null) {
      if (!paramtb.a(paramString)) {}
    }
    for (int i = paramtb.b(paramString); (-1 != i) && (-1 != paramInt) && (i != paramInt); i = -1)
    {
      return null;
      new StringBuilder().append("Path element contains an id name not known to the system. No views will be matched.\nMake sure that you're not stripping your packages R class out with proguard.\nid name was \"").append(paramString).append("\"").toString();
      return null;
    }
    if (-1 != i) {
      return Integer.valueOf(i);
    }
    return Integer.valueOf(paramInt);
  }
  
  private Object a(Object paramObject, String paramString, List<String> paramList)
  {
    try
    {
      if ("java.lang.CharSequence".equals(paramString)) {
        return paramObject;
      }
      if ((!"boolean".equals(paramString)) && (!"java.lang.Boolean".equals(paramString)))
      {
        if (("int".equals(paramString)) || ("java.lang.Integer".equals(paramString))) {
          return Integer.valueOf(((Number)paramObject).intValue());
        }
        if (("float".equals(paramString)) || ("java.lang.Float".equals(paramString))) {
          return Float.valueOf(((Number)paramObject).floatValue());
        }
        if ("android.graphics.drawable.Drawable".equals(paramString)) {
          return a((JSONObject)paramObject, paramList);
        }
        if ("android.graphics.drawable.BitmapDrawable".equals(paramString)) {
          return a((JSONObject)paramObject, paramList);
        }
        if ("android.graphics.drawable.ColorDrawable".equals(paramString)) {
          return new ColorDrawable(((Number)paramObject).intValue());
        }
        throw new uf("Don't know how to interpret type " + paramString + " (arg was " + paramObject + ")");
      }
    }
    catch (ClassCastException paramList)
    {
      throw new uf("Couldn't interpret <" + paramObject + "> as " + paramString);
    }
    return paramObject;
  }
  
  private uA a(Class<?> paramClass, JSONObject paramJSONObject)
  {
    String str1 = null;
    for (;;)
    {
      try
      {
        String str2 = paramJSONObject.getString("name");
        if (paramJSONObject.has("get"))
        {
          Object localObject2 = paramJSONObject.getJSONObject("get");
          localObject1 = ((JSONObject)localObject2).getString("selector");
          localObject2 = Class.forName(((JSONObject)localObject2).getJSONObject("result").getString("type"));
          localObject1 = new tX(paramClass, (String)localObject1, d, (Class)localObject2);
          if (paramJSONObject.has("set")) {
            str1 = paramJSONObject.getJSONObject("set").getString("selector");
          }
          paramClass = new uA(str2, paramClass, (tX)localObject1, str1);
          return paramClass;
        }
      }
      catch (NoSuchMethodException paramClass)
      {
        throw new uf("Can't create property reader", paramClass);
      }
      catch (JSONException paramClass)
      {
        throw new uf("Can't read property JSON", paramClass);
      }
      catch (ClassNotFoundException paramClass)
      {
        throw new uf("Can't read property JSON, relevant arg/return class not found", paramClass);
      }
      Object localObject1 = null;
    }
  }
  
  List<uz> a(JSONArray paramJSONArray, tb paramtb)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Object localObject2 = paramJSONArray.getJSONObject(i);
      Object localObject1 = tT.a((JSONObject)localObject2, "prefix");
      String str1 = tT.a((JSONObject)localObject2, "view_class");
      int k = ((JSONObject)localObject2).optInt("index", -1);
      String str2 = tT.a((JSONObject)localObject2, "contentDescription");
      int m = ((JSONObject)localObject2).optInt("id", -1);
      String str3 = tT.a((JSONObject)localObject2, "mp_id_name");
      localObject2 = tT.a((JSONObject)localObject2, "tag");
      if ("shortest".equals(localObject1)) {}
      for (int j = 1;; j = 0)
      {
        localObject1 = a(m, str3, paramtb);
        if (localObject1 != null) {
          break label175;
        }
        return e;
        if (localObject1 != null) {
          break;
        }
      }
      new StringBuilder().append("Unrecognized prefix type \"").append((String)localObject1).append("\". No views will be matched").toString();
      return e;
      label175:
      localArrayList.add(new uz(j, str1, k, ((Integer)localObject1).intValue(), str2, (String)localObject2));
      i += 1;
    }
    return localArrayList;
  }
  
  public uS a(JSONObject paramJSONObject, ve paramve)
  {
    String str1;
    String str2;
    try
    {
      str1 = paramJSONObject.getString("event_name");
      str2 = paramJSONObject.getString("event_type");
      paramJSONObject = a(paramJSONObject.getJSONArray("path"), a);
      if (paramJSONObject.size() == 0) {
        throw new ui("event '" + str1 + "' will not be bound to any element in the UI.");
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new uf("Can't interpret instructions due to JSONException", paramJSONObject);
    }
    if ("click".equals(str2)) {
      return new uU(paramJSONObject, 1, str1, paramve);
    }
    if ("selected".equals(str2)) {
      return new uU(paramJSONObject, 4, str1, paramve);
    }
    if ("text_changed".equals(str2)) {
      return new uW(paramJSONObject, str1, paramve);
    }
    if ("detected".equals(str2)) {
      return new vh(paramJSONObject, str1, paramve);
    }
    throw new uf("Mixpanel can't track event type \"" + str2 + "\"");
  }
  
  public uh a(JSONObject paramJSONObject)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    List localList;
    Object localObject1;
    try
    {
      localList = a(paramJSONObject.getJSONArray("path"), a);
      if (localList.size() == 0) {
        throw new ui("Edit will not be bound to any element in the UI.");
      }
    }
    catch (NoSuchMethodException paramJSONObject)
    {
      throw new uf("Can't create property mutator", paramJSONObject);
      if (!paramJSONObject.getString("change_type").equals("property")) {
        break label314;
      }
      localObject1 = paramJSONObject.getJSONObject("property").getString("classname");
      if (localObject1 == null) {
        throw new uf("Can't bind an edit property without a target class");
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new uf("Can't interpret instructions due to JSONException", paramJSONObject);
    }
    Object localObject2;
    Object localObject3;
    try
    {
      localObject2 = Class.forName((String)localObject1);
      localObject1 = a((Class)localObject2, paramJSONObject.getJSONObject("property"));
      paramJSONObject = paramJSONObject.getJSONArray("args");
      localObject2 = new Object[paramJSONObject.length()];
      while (i < paramJSONObject.length())
      {
        localObject3 = paramJSONObject.getJSONArray(i);
        localObject2[i] = a(((JSONArray)localObject3).get(0), ((JSONArray)localObject3).getString(1), localArrayList);
        i += 1;
      }
      paramJSONObject = ((uA)localObject1).a((Object[])localObject2);
    }
    catch (ClassNotFoundException paramJSONObject)
    {
      throw new uf("Can't find class for visit path: " + (String)localObject1, paramJSONObject);
    }
    if (paramJSONObject == null) {
      throw new uf("Can't update a read-only property " + a + " (add a mutator to make this work)");
    }
    paramJSONObject = new vg(localList, paramJSONObject, c);
    return new uh(paramJSONObject, localArrayList, null);
    label314:
    int j;
    if (paramJSONObject.getString("change_type").equals("layout"))
    {
      localObject2 = paramJSONObject.getJSONArray("args");
      localObject3 = new ArrayList();
      j = ((JSONArray)localObject2).length();
      i = 0;
    }
    for (;;)
    {
      JSONObject localJSONObject;
      String str1;
      String str2;
      Integer localInteger;
      if (i < j)
      {
        localJSONObject = ((JSONArray)localObject2).optJSONObject(i);
        str1 = localJSONObject.getString("view_id_name");
        str2 = localJSONObject.getString("anchor_id_name");
        localInteger = a(-1, str1, a);
        if (str2.equals("0"))
        {
          localObject1 = Integer.valueOf(0);
          break label570;
        }
      }
      for (;;)
      {
        label422:
        new StringBuilder().append("View (").append(str1).append(") or anchor (").append(str2).append(") not found.").toString();
        break label583;
        if (str2.equals("-1")) {
          localObject1 = Integer.valueOf(-1);
        } else {
          localObject1 = a(-1, str2, a);
        }
        label570:
        do
        {
          ((ArrayList)localObject3).add(new vb(localInteger.intValue(), localJSONObject.getInt("verb"), ((Integer)localObject1).intValue()));
          break label583;
          paramJSONObject = new vc(localList, (List)localObject3, paramJSONObject.getString("name"), c);
          break;
          throw new uf("Can't figure out the edit type");
          if (localInteger == null) {
            break label422;
          }
        } while (localObject1 != null);
      }
      label583:
      i += 1;
    }
  }
  
  public uN b(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        paramJSONObject = paramJSONObject.getJSONObject("config").getJSONArray("classes");
        i = 0;
        if (i < paramJSONObject.length())
        {
          Object localObject = paramJSONObject.getJSONObject(i);
          Class localClass = Class.forName(((JSONObject)localObject).getString("name"));
          localObject = ((JSONObject)localObject).getJSONArray("properties");
          int j = 0;
          if (j < ((JSONArray)localObject).length())
          {
            localArrayList.add(a(localClass, ((JSONArray)localObject).getJSONObject(j)));
            j += 1;
            continue;
          }
        }
        else
        {
          paramJSONObject = new uN(localArrayList, a);
          return paramJSONObject;
        }
      }
      catch (JSONException paramJSONObject)
      {
        throw new uf("Can't read snapshot configuration", paramJSONObject);
      }
      catch (ClassNotFoundException paramJSONObject)
      {
        throw new uf("Can't resolve types for snapshot configuration", paramJSONObject);
      }
      i += 1;
    }
  }
  
  public Pair<String, Object> c(JSONObject paramJSONObject)
  {
    String str2;
    for (;;)
    {
      try
      {
        String str1 = paramJSONObject.getString("name");
        str2 = paramJSONObject.getString("type");
        if ("number".equals(str2))
        {
          str2 = paramJSONObject.getString("encoding");
          if ("d".equals(str2))
          {
            paramJSONObject = Double.valueOf(paramJSONObject.getDouble("value"));
            return new Pair(str1, paramJSONObject);
          }
          if ("l".equals(str2))
          {
            paramJSONObject = Long.valueOf(paramJSONObject.getLong("value"));
            continue;
          }
          throw new uf("number must have encoding of type \"l\" for long or \"d\" for double in: " + paramJSONObject);
        }
      }
      catch (JSONException paramJSONObject)
      {
        throw new uf("Can't read tweak update", paramJSONObject);
      }
      if ("boolean".equals(str2))
      {
        paramJSONObject = Boolean.valueOf(paramJSONObject.getBoolean("value"));
      }
      else
      {
        if (!"string".equals(str2)) {
          break;
        }
        paramJSONObject = paramJSONObject.getString("value");
      }
    }
    throw new uf("Unrecognized tweak type " + str2 + " in: " + paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     ud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */