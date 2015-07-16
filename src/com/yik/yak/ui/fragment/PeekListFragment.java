package com.yik.yak.ui.fragment;

import AO;
import BI;
import Bo;
import Fh;
import Fi;
import Fj;
import Fl;
import Gf;
import android.content.Intent;
import android.os.Bundle;
import android.os.Vibrator;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.ui.activity.PeekSearchActivity;
import com.yik.yak.ui.dialog.YikYakDialog;

public class PeekListFragment
  extends BaseFragment
  implements BI, Bo
{
  public Fj c;
  public Vibrator d;
  public ListView e;
  private final Fl f = new Fl(this);
  private final String g = "PeekListFragment";
  
  private void a(View paramView)
  {
    e = ((ListView)paramView.findViewById(2131558715));
    c = new Fj(this);
    e.setAdapter(c);
  }
  
  private void a(PeekLocation paramPeekLocation)
  {
    Intent localIntent = new Intent(getActivity(), YikYakDialog.class);
    localIntent.putExtra("title", "Delete Peek Location");
    localIntent.putExtra("message", "Do you want to remove " + location + "?");
    localIntent.putExtra("value", peekID);
    localIntent.putExtra("okText", "Yes");
    localIntent.putExtra("cancelText", "No");
    startActivityForResult(localIntent, 1003);
  }
  
  private void c()
  {
    startActivityForResult(new Intent(getActivity(), PeekSearchActivity.class), 1000);
  }
  
  private void d()
  {
    if (isAdded()) {
      c.a(AO.a().b());
    }
  }
  
  private void k()
  {
    e.setLongClickable(true);
    e.setOnItemClickListener(new Fh(this));
    e.setOnItemLongClickListener(new Fi(this));
  }
  
  public String a()
  {
    return "Peeks";
  }
  
  public void a(Intent paramIntent) {}
  
  public void b() {}
  
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
    startActivityForResult(new Intent(getActivity(), PeekSearchActivity.class), 1000);
  }
  
  public void onActivityCreated(@Nullable Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    d = ((Vibrator)getActivity().getSystemService("vibrator"));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    case 1001: 
    case 1002: 
    default: 
    case 1000: 
      do
      {
        return;
        switch (paramInt2)
        {
        default: 
          return;
        }
        AO.a().f();
        getFragmentManager().executePendingTransactions();
      } while (!isAdded());
      c.a(AO.a().b());
      return;
    }
    paramIntent = paramIntent.getStringExtra("value");
    switch (paramInt2)
    {
    default: 
      return;
    }
    AO.a().d(paramIntent);
    AO.a().f();
    d();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903118, paramViewGroup, false);
    a(paramLayoutInflater);
    k();
    setHasOptionsMenu(true);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    AO.a().a("PeekListFragment");
  }
  
  public void onResume()
  {
    super.onResume();
    AO.a().a("PeekListFragment", f);
    d();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.PeekListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */