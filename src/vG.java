import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class vg
  extends uS
{
  private final tX a;
  private final tX b;
  private final WeakHashMap<View, Object> c;
  private final Object[] d;
  
  public vg(List<uz> paramList, tX paramtX1, tX paramtX2)
  {
    super(paramList);
    a = paramtX1;
    b = paramtX2;
    d = new Object[1];
    c = new WeakHashMap();
  }
  
  public void a()
  {
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      View localView = (View)((Map.Entry)localObject).getKey();
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject != null)
      {
        d[0] = localObject;
        a.a(localView, d);
      }
    }
  }
  
  public void a(View paramView)
  {
    Object localObject;
    Bitmap localBitmap1;
    if (b != null)
    {
      localObject = a.a();
      if (1 == localObject.length)
      {
        localBitmap1 = localObject[0];
        localObject = b.a(paramView);
        if (localBitmap1 == localObject) {}
        do
        {
          return;
          if (localBitmap1 == null) {
            break;
          }
          if ((!(localBitmap1 instanceof Bitmap)) || (!(localObject instanceof Bitmap))) {
            break label107;
          }
        } while (((Bitmap)localBitmap1).sameAs((Bitmap)localObject));
        if ((!(localObject instanceof Bitmap)) && (!(localObject instanceof BitmapDrawable)) && (!c.containsKey(paramView))) {
          break label161;
        }
      }
    }
    for (;;)
    {
      a.a(paramView);
      return;
      label107:
      if (((localBitmap1 instanceof BitmapDrawable)) && ((localObject instanceof BitmapDrawable)))
      {
        localBitmap1 = ((BitmapDrawable)localBitmap1).getBitmap();
        Bitmap localBitmap2 = ((BitmapDrawable)localObject).getBitmap();
        if ((localBitmap1 == null) || (!localBitmap1.sameAs(localBitmap2))) {
          break;
        }
        return;
      }
      if (!localBitmap1.equals(localObject)) {
        break;
      }
      return;
      label161:
      d[0] = localObject;
      if (a.a(d)) {
        c.put(paramView, localObject);
      } else {
        c.put(paramView, null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     vg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */