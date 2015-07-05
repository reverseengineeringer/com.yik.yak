import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Bitmap.CompressFormat;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.JsonWriter;
import android.view.View;
import android.view.ViewGroup;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

@TargetApi(16)
class uw
{
  private final uz a;
  private final List<um> b;
  private final uy c;
  private final Handler d;
  private final sX e;
  
  public uw(List<um> paramList, sX paramsX)
  {
    b = paramList;
    e = paramsX;
    d = new Handler(Looper.getMainLooper());
    a = new uz();
    c = new uy(255);
  }
  
  private void b(JsonWriter paramJsonWriter, View paramView)
  {
    float f2 = 0.0F;
    int i = paramView.getId();
    Object localObject;
    if (-1 == i)
    {
      localObject = null;
      paramJsonWriter.beginObject();
      paramJsonWriter.name("hashCode").value(paramView.hashCode());
      paramJsonWriter.name("id").value(i);
      paramJsonWriter.name("mp_id_name").value((String)localObject);
      localObject = paramView.getContentDescription();
      if (localObject != null) {
        break label411;
      }
      paramJsonWriter.name("contentDescription").nullValue();
      label84:
      localObject = paramView.getTag();
      if (localObject != null) {
        break label431;
      }
      paramJsonWriter.name("tag").nullValue();
      label105:
      paramJsonWriter.name("top").value(paramView.getTop());
      paramJsonWriter.name("left").value(paramView.getLeft());
      paramJsonWriter.name("width").value(paramView.getWidth());
      paramJsonWriter.name("height").value(paramView.getHeight());
      paramJsonWriter.name("scrollX").value(paramView.getScrollX());
      paramJsonWriter.name("scrollY").value(paramView.getScrollY());
      paramJsonWriter.name("visibility").value(paramView.getVisibility());
      if (Build.VERSION.SDK_INT < 11) {
        break label528;
      }
      f2 = paramView.getTranslationX();
    }
    label411:
    label431:
    label528:
    for (float f1 = paramView.getTranslationY();; f1 = 0.0F)
    {
      paramJsonWriter.name("translationX").value(f2);
      paramJsonWriter.name("translationY").value(f1);
      paramJsonWriter.name("classes");
      paramJsonWriter.beginArray();
      localObject = paramView.getClass();
      for (;;)
      {
        paramJsonWriter.value((String)c.get(localObject));
        localObject = ((Class)localObject).getSuperclass();
        if ((localObject == Object.class) || (localObject == null))
        {
          paramJsonWriter.endArray();
          c(paramJsonWriter, paramView);
          paramJsonWriter.name("subviews");
          paramJsonWriter.beginArray();
          int j;
          if ((paramView instanceof ViewGroup))
          {
            localObject = (ViewGroup)paramView;
            j = ((ViewGroup)localObject).getChildCount();
            i = 0;
            for (;;)
            {
              if (i < j)
              {
                View localView = ((ViewGroup)localObject).getChildAt(i);
                if (localView != null) {
                  paramJsonWriter.value(localView.hashCode());
                }
                i += 1;
                continue;
                localObject = e.a(i);
                break;
                paramJsonWriter.name("contentDescription").value(((CharSequence)localObject).toString());
                break label84;
                if (!(localObject instanceof CharSequence)) {
                  break label105;
                }
                paramJsonWriter.name("tag").value(localObject.toString());
                break label105;
              }
            }
          }
          paramJsonWriter.endArray();
          paramJsonWriter.endObject();
          if ((paramView instanceof ViewGroup))
          {
            paramView = (ViewGroup)paramView;
            j = paramView.getChildCount();
            i = 0;
            while (i < j)
            {
              localObject = paramView.getChildAt(i);
              if (localObject != null) {
                b(paramJsonWriter, (View)localObject);
              }
              i += 1;
            }
          }
          return;
        }
      }
    }
  }
  
  private void c(JsonWriter paramJsonWriter, View paramView)
  {
    Class localClass = paramView.getClass();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      um localum = (um)localIterator.next();
      if ((b.isAssignableFrom(localClass)) && (c != null))
      {
        Object localObject = c.a(paramView);
        if (localObject != null) {
          if ((localObject instanceof Number)) {
            paramJsonWriter.name(a).value((Number)localObject);
          } else if ((localObject instanceof Boolean)) {
            paramJsonWriter.name(a).value(((Boolean)localObject).booleanValue());
          } else {
            paramJsonWriter.name(a).value(localObject.toString());
          }
        }
      }
    }
  }
  
  void a(JsonWriter paramJsonWriter, View paramView)
  {
    paramJsonWriter.beginArray();
    b(paramJsonWriter, paramView);
    paramJsonWriter.endArray();
  }
  
  public void a(uo<Activity> paramuo, OutputStream paramOutputStream)
  {
    a.a(paramuo);
    Object localObject = new FutureTask(a);
    d.post((Runnable)localObject);
    paramuo = new OutputStreamWriter(paramOutputStream);
    try
    {
      localObject = (List)((FutureTask)localObject).get(1L, TimeUnit.SECONDS);
      int j = ((List)localObject).size();
      paramuo.write("[");
      int i = 0;
      while (i < j)
      {
        if (i > 0) {
          paramuo.write(",");
        }
        uA localuA = (uA)((List)localObject).get(i);
        paramuo.write("{");
        paramuo.write("\"activity\":");
        paramuo.write(JSONObject.quote(a));
        paramuo.write(",");
        paramuo.write("\"scale\":");
        paramuo.write(String.format("%s", new Object[] { Float.valueOf(d) }));
        paramuo.write(",");
        paramuo.write("\"serialized_objects\":");
        JsonWriter localJsonWriter = new JsonWriter(paramuo);
        localJsonWriter.beginObject();
        localJsonWriter.name("rootObject").value(b.hashCode());
        localJsonWriter.name("objects");
        a(localJsonWriter, b);
        localJsonWriter.endObject();
        localJsonWriter.flush();
        paramuo.write(",");
        paramuo.write("\"screenshot\":");
        paramuo.flush();
        c.a(Bitmap.CompressFormat.PNG, 100, paramOutputStream);
        paramuo.write("}");
        i += 1;
      }
      paramuo.write("]");
      paramuo.flush();
      return;
    }
    catch (InterruptedException paramuo)
    {
      bool = sD.a;
      return;
    }
    catch (TimeoutException paramuo)
    {
      bool = sD.a;
      return;
    }
    catch (ExecutionException paramuo)
    {
      boolean bool = sD.a;
    }
  }
}

/* Location:
 * Qualified Name:     uw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */