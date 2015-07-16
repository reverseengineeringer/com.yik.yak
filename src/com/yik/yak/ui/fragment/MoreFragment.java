package com.yik.yak.ui.fragment;

import AB;
import Aa;
import Bo;
import CW;
import Fa;
import Hm;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yik.yak.data.models.Configuration;
import com.yik.yak.data.models.Configuration.YikYakRepApplicationConfiguration;
import com.yik.yak.data.models.SimpleListItem;
import java.util.ArrayList;
import java.util.List;

public class MoreFragment
  extends BaseFragment
  implements Bo
{
  private ListView c;
  private int d = 0;
  private List<SimpleListItem> e = new ArrayList();
  private CW f;
  
  private boolean d()
  {
    Configuration.YikYakRepApplicationConfiguration localYikYakRepApplicationConfiguration = getgetActivityyikYakRepApplicationConfiguration;
    return (localYikYakRepApplicationConfiguration != null) && (Aa.k() >= yakarmaThreshold);
  }
  
  private int e()
  {
    Configuration.YikYakRepApplicationConfiguration localYikYakRepApplicationConfiguration = getgetActivityyikYakRepApplicationConfiguration;
    if (localYikYakRepApplicationConfiguration != null)
    {
      int i = 0;
      while (i < e.size())
      {
        if (e.get(i)).item.equals(entryText)) {
          return i;
        }
        i += 1;
      }
    }
    return -1;
  }
  
  public String a()
  {
    return "More";
  }
  
  public void a(Intent paramIntent) {}
  
  public void b()
  {
    if (c()) {
      f.notifyDataSetChanged();
    }
  }
  
  public boolean c()
  {
    boolean bool2 = false;
    int i = e();
    Hm.a(this, new Object[] { "fixApplyToBeARepButton: indexOfApplyButton = " + i });
    boolean bool1;
    if (d())
    {
      bool1 = bool2;
      if (i == -1)
      {
        SimpleListItem localSimpleListItem = new SimpleListItem();
        Object localObject = getgetActivityyikYakRepApplicationConfiguration;
        if (localObject != null)
        {
          url = applicationUrl;
          item = entryText;
        }
        i = 0;
        bool1 = bool2;
        if (i < e.size())
        {
          localObject = (SimpleListItem)e.get(i);
          if ((!((SimpleListItem)localObject).isSectionHeader()) || (!item.equalsIgnoreCase("Love On Us"))) {
            break label168;
          }
          e.add(i + 1, localSimpleListItem);
          bool1 = true;
        }
      }
    }
    label168:
    do
    {
      return bool1;
      i += 1;
      break;
      bool1 = bool2;
    } while (i == -1);
    e.remove(i);
    return true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903117, paramViewGroup, false);
    try
    {
      d = Aa.k();
      e = new SimpleListItem().getItemList(getActivity(), AB.b);
      if (d < 1000)
      {
        i = 0;
        if (i < e.size())
        {
          if (!e.get(i)).index.equals("18")) {
            break label190;
          }
          e.remove(i);
        }
      }
      c();
      f = new CW(getActivity(), 2130903134, e);
      c = ((ListView)paramLayoutInflater.findViewById(2131558713));
      c.setItemsCanFocus(false);
      c.setAdapter(f);
      c.setOnItemClickListener(new Fa(this));
      setHasOptionsMenu(true);
      return paramLayoutInflater;
    }
    catch (Exception paramViewGroup)
    {
      for (;;)
      {
        int i;
        d = 0;
        continue;
        label190:
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.MoreFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */