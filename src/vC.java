import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;

public class vc
  extends uS
{
  private static final Set<Integer> d = new HashSet(Arrays.asList(new Integer[] { Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(5), Integer.valueOf(7) }));
  private static final Set<Integer> e = new HashSet(Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(6), Integer.valueOf(8) }));
  private final WeakHashMap<View, int[]> a = new WeakHashMap();
  private final List<vb> b;
  private final String c;
  private boolean f;
  private final vf g;
  private final uY h;
  
  public vc(List<uz> paramList, List<vb> paramList1, String paramString, vf paramvf)
  {
    super(paramList);
    b = paramList1;
    c = paramString;
    f = true;
    g = paramvf;
    h = new uY(null);
  }
  
  private boolean a(Set<Integer> paramSet, SparseArray<View> paramSparseArray)
  {
    TreeMap localTreeMap = new TreeMap(new vd(this));
    int j = paramSparseArray.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramSparseArray.valueAt(i);
      int[] arrayOfInt = ((RelativeLayout.LayoutParams)localView.getLayoutParams()).getRules();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        int k = arrayOfInt[((Integer)localIterator.next()).intValue()];
        if ((k > 0) && (k != localView.getId())) {
          localArrayList.add(paramSparseArray.get(k));
        }
      }
      localTreeMap.put(localView, localArrayList);
      i += 1;
    }
    return h.a(localTreeMap);
  }
  
  public void a()
  {
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      View localView = (View)((Map.Entry)localObject).getKey();
      localObject = (int[])((Map.Entry)localObject).getValue();
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localView.getLayoutParams();
      int i = 0;
      while (i < localObject.length)
      {
        localLayoutParams.addRule(i, localObject[i]);
        i += 1;
      }
      localView.setLayoutParams(localLayoutParams);
    }
    f = false;
  }
  
  public void a(View paramView)
  {
    paramView = (ViewGroup)paramView;
    SparseArray localSparseArray = new SparseArray();
    int j = paramView.getChildCount();
    int i = 0;
    View localView;
    while (i < j)
    {
      localView = paramView.getChildAt(i);
      int k = localView.getId();
      if (k > 0) {
        localSparseArray.put(k, localView);
      }
      i += 1;
    }
    j = b.size();
    i = 0;
    if (i < j)
    {
      paramView = (vb)b.get(i);
      localView = (View)localSparseArray.get(a);
      if (localView != null) {}
    }
    for (;;)
    {
      i += 1;
      break;
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localView.getLayoutParams();
      int[] arrayOfInt = (int[])localLayoutParams.getRules().clone();
      if (arrayOfInt[b] != c)
      {
        if (a.containsKey(localView))
        {
          localLayoutParams.addRule(b, c);
          if (!d.contains(Integer.valueOf(b))) {
            break label258;
          }
          paramView = d;
        }
        for (;;)
        {
          if ((paramView == null) || (a(paramView, localSparseArray))) {
            break label288;
          }
          a();
          g.a(new va("circular_dependency", c));
          return;
          a.put(localView, arrayOfInt);
          break;
          label258:
          if (e.contains(Integer.valueOf(b))) {
            paramView = e;
          } else {
            paramView = null;
          }
        }
        label288:
        localView.setLayoutParams(localLayoutParams);
      }
    }
  }
  
  public void b(View paramView)
  {
    if (f) {
      c().a(paramView, b(), this);
    }
  }
}

/* Location:
 * Qualified Name:     vc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */