import android.content.Context;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class tc
  implements tb
{
  private final Context a;
  private final Map<String, Integer> b;
  private final SparseArray<String> c;
  
  protected tc(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
    c = new SparseArray();
  }
  
  private static void a(Class<?> paramClass, String paramString, Map<String, Integer> paramMap)
  {
    for (;;)
    {
      int i;
      try
      {
        Field[] arrayOfField = paramClass.getFields();
        i = 0;
        if (i < arrayOfField.length)
        {
          Field localField = arrayOfField[i];
          if ((Modifier.isStatic(localField.getModifiers())) && (localField.getType() == Integer.TYPE))
          {
            String str = localField.getName();
            int j = localField.getInt(null);
            if (paramString == null)
            {
              paramMap.put(str, Integer.valueOf(j));
            }
            else
            {
              str = paramString + ":" + str;
              continue;
            }
          }
        }
        else
        {
          return;
        }
      }
      catch (IllegalAccessException paramString)
      {
        new StringBuilder().append("Can't read built-in id names from ").append(paramClass.getName()).toString();
      }
      i += 1;
    }
  }
  
  protected abstract Class<?> a();
  
  public String a(int paramInt)
  {
    return (String)c.get(paramInt);
  }
  
  protected abstract String a(Context paramContext);
  
  public boolean a(String paramString)
  {
    return b.containsKey(paramString);
  }
  
  public int b(String paramString)
  {
    return ((Integer)b.get(paramString)).intValue();
  }
  
  protected void b()
  {
    b.clear();
    c.clear();
    a(a(), "android", b);
    Object localObject = a(a);
    try
    {
      a(Class.forName((String)localObject), null, b);
      localObject = b.entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        c.put(((Integer)localEntry.getValue()).intValue(), localEntry.getKey());
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        new StringBuilder().append("Can't load names for Android view ids from '").append((String)localObject).append("', ids by name will not be available in the events editor.").toString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     tc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */