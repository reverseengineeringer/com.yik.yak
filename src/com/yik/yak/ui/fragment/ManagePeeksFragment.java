package com.yik.yak.ui.fragment;

import AO;
import BI;
import Bn;
import ER;
import ES;
import Gf;
import Hi;
import Hm;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.ui.activity.PeekSearchActivity;
import com.yik.yak.ui.dialog.YikYakDialog;
import java.util.List;

public class ManagePeeksFragment
  extends BaseFragment
  implements BI, Bn
{
  protected boolean c = false;
  private View d = null;
  private Context e = null;
  private ListView f;
  private ES g;
  private List<PeekLocation> h;
  private PeekLocation i;
  
  private void a(PeekLocation paramPeekLocation)
  {
    Intent localIntent = new Intent(e, YikYakDialog.class);
    localIntent.putExtra("title", "Edit Peek Location");
    localIntent.putExtra("message", "Enter the new name for the peek location.");
    localIntent.putExtra("editText", location);
    localIntent.putExtra("value", peekID);
    localIntent.putExtra("okText", getString(2131231081));
    localIntent.putExtra("cancelText", getString(2131230859));
    startActivityForResult(localIntent, 1002);
  }
  
  private void b()
  {
    if ((h == null) || (h.size() == 0) || (h.get(0)).isDefault))
    {
      unregisterForContextMenu(f);
      return;
    }
    registerForContextMenu(f);
  }
  
  public String a()
  {
    return "Manage My Peeks";
  }
  
  public void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(e, YikYakDialog.class);
    localIntent.putExtra("title", "Delete Peek Location");
    localIntent.putExtra("message", "Do you want to remove " + paramString2 + "?");
    localIntent.putExtra("value", paramString1);
    localIntent.putExtra("okText", getString(2131231154));
    localIntent.putExtra("cancelText", getString(2131231026));
    startActivityForResult(localIntent, 1005);
  }
  
  public Gf e()
  {
    return Gf.c;
  }
  
  public int f()
  {
    return 0;
  }
  
  public void g()
  {
    startActivityForResult(new Intent(e, PeekSearchActivity.class), 1000);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    String str;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return;
            } while (paramInt2 != 1);
            AO.a().f();
            h = AO.a().c();
            g = new ES(this, e, 2130903143, h);
            f.setAdapter(g);
            f.invalidateViews();
            b();
            return;
            switch (paramInt2)
            {
            default: 
              return;
            }
            h = AO.a().c();
            g = new ES(this, e, 2130903143, h);
            f.setAdapter(g);
            b();
            return;
          } while (paramInt2 != 1);
          if (paramIntent == null)
          {
            Toast.makeText(e, "Delete failed", 0).show();
            return;
          }
          paramIntent = paramIntent.getStringExtra("value");
        } while (Hi.a(paramIntent));
        AO.a().d(paramIntent);
        AO.a().f();
        h = AO.a().c();
        g = new ES(this, e, 2130903143, h);
        f.setAdapter(g);
        f.invalidateViews();
        b();
        return;
      } while (paramInt2 != 1);
      if (paramIntent == null)
      {
        Toast.makeText(e, "Edit failed", 0).show();
        return;
      }
      str = paramIntent.getStringExtra("result");
      paramIntent = paramIntent.getStringExtra("value");
    } while (Hi.a(str));
    AO.a().a(paramIntent, str);
    AO.a().f();
    g.notifyDataSetChanged();
    b();
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    i = ((PeekLocation)f.getAdapter().getItem(position));
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    case 1000: 
      a(i);
      return true;
    }
    a(i.peekID, i.location);
    return true;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramContextMenu.add(0, 1000, 0, "Rename Location").setActionView(paramView);
    paramContextMenu.add(0, 1001, 0, "Delete Location").setActionView(paramView);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = paramLayoutInflater.inflate(2130903115, paramViewGroup, false);
    e = getActivity();
    Hm.a(this, new Object[] { "ManagePEeksFragment onCreateView" });
    h = AO.a().c();
    g = new ES(this, e, 2130903143, h);
    f = ((ListView)d.findViewById(2131558702));
    b();
    f.setAdapter(g);
    f.invalidateViews();
    f.setOnItemClickListener(new ER(this));
    setHasOptionsMenu(true);
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.ManagePeeksFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */