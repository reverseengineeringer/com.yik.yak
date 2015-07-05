import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.List;

public class tu
  implements ListAdapter
{
  private final List<String> a;
  private final LayoutInflater b;
  
  public tu(List<String> paramList, LayoutInflater paramLayoutInflater)
  {
    a = paramList;
    b = paramLayoutInflater;
  }
  
  public String a(int paramInt)
  {
    return (String)a.get(paramInt);
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    if (paramInt == a.size() - 1) {
      return 1;
    }
    return 2;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = -1;
    View localView = paramView;
    if (paramView == null) {
      switch (getItemViewType(paramInt))
      {
      }
    }
    for (;;)
    {
      localView = b.inflate(i, paramViewGroup, false);
      ((TextView)localView.findViewById(rh.com_mixpanel_android_multiple_choice_answer_text)).setText((String)a.get(paramInt));
      return localView;
      i = ri.com_mixpanel_android_first_choice_answer;
      continue;
      i = ri.com_mixpanel_android_last_choice_answer;
      continue;
      i = ri.com_mixpanel_android_middle_choice_answer;
    }
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {}
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {}
}

/* Location:
 * Qualified Name:     tu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */