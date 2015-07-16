package com.yik.yak.ui.fragment;

import AD;
import Aa;
import Aj;
import Bn;
import DX;
import Fd;
import Ha;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yik.yak.data.models.YakkerLocation;
import java.util.ArrayList;
import java.util.TreeMap;
import wY;
import xD;
import xF;
import xy;

public class MyYaksFragment
  extends BaseYakFragment
  implements Bn
{
  private boolean I = false;
  
  public MyYaksFragment()
  {
    super(2130903125);
  }
  
  public String a()
  {
    return "My Yaks";
  }
  
  public void a_()
  {
    p();
    getActivity();
    Object localObject = AD.a().g();
    i = false;
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("lat", ((YakkerLocation)localObject).a());
    localTreeMap.put("long", ((YakkerLocation)localObject).b());
    n = new ArrayList();
    o = new ArrayList();
    localObject = Aj.a("getMyRecentYaks", localTreeMap, (YakkerLocation)localObject);
    localObject = new xF().a((String)localObject).b();
    Aj.a(true).a((xD)localObject).a(new Fd(this));
  }
  
  public void l()
  {
    if ((!I) && (y == DX.b))
    {
      I = true;
      Ha.a().t();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m = "MyYaks";
    y = DX.a;
    a_();
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.MyYaksFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */