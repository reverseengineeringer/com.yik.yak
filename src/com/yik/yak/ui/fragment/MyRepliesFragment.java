package com.yik.yak.ui.fragment;

import AD;
import Aa;
import Aj;
import Bn;
import DX;
import Fb;
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

public class MyRepliesFragment
  extends BaseYakFragment
  implements Bn
{
  public MyRepliesFragment()
  {
    super(2130903125);
  }
  
  public String a()
  {
    return "My Replies";
  }
  
  public void a_()
  {
    p();
    getActivity();
    YakkerLocation localYakkerLocation = AD.a().g();
    i = false;
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("lat", localYakkerLocation.a());
    localTreeMap.put("long", localYakkerLocation.b());
    Object localObject;
    if (y == DX.b)
    {
      localObject = "getMyTops";
      o = new ArrayList();
    }
    for (;;)
    {
      j = false;
      localObject = Aj.a((String)localObject, localTreeMap, localYakkerLocation);
      localObject = new xF().a((String)localObject).b();
      Aj.a(true).a((xD)localObject).a(new Fb(this));
      return;
      localObject = "getMyRecentReplies";
      n = new ArrayList();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    m = "MyReplies";
    y = DX.a;
    a_();
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.MyRepliesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */