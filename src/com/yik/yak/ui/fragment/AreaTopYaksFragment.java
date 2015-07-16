package com.yik.yak.ui.fragment;

import AD;
import Aa;
import Aj;
import Bn;
import DJ;
import DX;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.yik.yak.data.models.YakkerLocation;
import java.util.ArrayList;
import java.util.TreeMap;
import wY;
import xD;
import xF;
import xy;

public class AreaTopYaksFragment
  extends BaseYakFragment
  implements Bn
{
  public AreaTopYaksFragment()
  {
    super(2130903125);
    j = true;
  }
  
  public static AreaTopYaksFragment a(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    AreaTopYaksFragment localAreaTopYaksFragment = new AreaTopYaksFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localBundle.putBoolean("canSubmit", paramBoolean1);
    localBundle.putBoolean("canVote", paramBoolean2);
    localBundle.putBoolean("canReply", paramBoolean3);
    localBundle.putBoolean("canReport", paramBoolean4);
    localAreaTopYaksFragment.setArguments(localBundle);
    return localAreaTopYaksFragment;
  }
  
  public String a()
  {
    return getArguments().getString("title");
  }
  
  public void a_()
  {
    p();
    y = DX.b;
    getActivity();
    Object localObject = AD.a().g();
    i = false;
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("lat", ((YakkerLocation)localObject).a());
    localTreeMap.put("long", ((YakkerLocation)localObject).b());
    n = new ArrayList();
    o = new ArrayList();
    localObject = Aj.a("getAreaTops", localTreeMap, (YakkerLocation)localObject);
    localObject = new xF().a((String)localObject).b();
    Aj.a(true).a((xD)localObject).a(new DJ(this));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    F.setVisibility(8);
    a_();
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.AreaTopYaksFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */