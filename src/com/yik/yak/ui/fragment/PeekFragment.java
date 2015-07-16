package com.yik.yak.ui.fragment;

import AD;
import AO;
import Aa;
import Aj;
import BI;
import Bn;
import Br;
import DX;
import Ff;
import Gf;
import Hi;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.activity.MainActivity;
import com.yik.yak.ui.activity.SendAYak;
import java.util.ArrayList;
import java.util.TreeMap;
import wY;
import xD;
import xF;
import xy;

public class PeekFragment
  extends BaseYakFragment
  implements BI, Bn, Br
{
  public PeekFragment()
  {
    super(2130903125);
  }
  
  public static PeekFragment a(PeekLocation paramPeekLocation)
  {
    PeekFragment localPeekFragment = new PeekFragment();
    localPeekFragment.setArguments(b(paramPeekLocation));
    return localPeekFragment;
  }
  
  protected static Bundle b(PeekLocation paramPeekLocation)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("userID", Aa.g());
    localBundle.putString("title", section);
    localBundle.putString("location", location);
    if (!isCustomPeek) {
      localBundle.putString("peekID", peekID);
    }
    localBundle.putBoolean("isCustom", isCustomPeek);
    localBundle.putBoolean("canSubmit", canSubmit);
    localBundle.putBoolean("canSubmitPhotos", canSubmitPhotos);
    localBundle.putBoolean("canSubmitLinks", canSubmitLinks);
    localBundle.putBoolean("canVote", canVote);
    localBundle.putBoolean("canReply", canReply);
    localBundle.putBoolean("canReport", canReport);
    localBundle.putString("peekLatitude", latitude);
    localBundle.putString("peekLongitude", longitude);
    localBundle.putString("title", location);
    return localBundle;
  }
  
  public String a()
  {
    return b("");
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
    String str = q.getString("peekID", "");
    Object localObject;
    if (str.equals(""))
    {
      localObject = new YakkerLocation("peek");
      ((YakkerLocation)localObject).setLatitude(Double.parseDouble(q.getString("peekLatitude", "0")));
      ((YakkerLocation)localObject).setLongitude(Double.parseDouble(q.getString("peekLongitude", "0")));
      localTreeMap.put("lat", ((YakkerLocation)localObject).a());
      localTreeMap.put("long", ((YakkerLocation)localObject).b());
      if (y == DX.b)
      {
        localObject = "hot";
        o = new ArrayList();
      }
    }
    for (;;)
    {
      j = false;
      localObject = Aj.a((String)localObject, localTreeMap, localYakkerLocation);
      localObject = new xF().a((String)localObject).b();
      Aj.a(true).a((xD)localObject).a(new Ff(this, str));
      return;
      localObject = "yaks";
      n = new ArrayList();
      continue;
      localObject = "getPeekMessages";
      localTreeMap.put("peekID", q.getString("peekID", ""));
      n = new ArrayList();
      o = new ArrayList();
    }
  }
  
  public String b()
  {
    return null;
  }
  
  protected String b(String paramString)
  {
    Bundle localBundle = getArguments();
    String str = paramString;
    if (localBundle != null) {
      str = localBundle.getString("title", paramString);
    }
    return str;
  }
  
  public boolean b(Yak paramYak)
  {
    return true;
  }
  
  protected String c(String paramString)
  {
    Bundle localBundle = getArguments();
    String str = paramString;
    if (localBundle != null) {
      str = localBundle.getString("peekID", paramString);
    }
    return str;
  }
  
  public void c() {}
  
  public int d()
  {
    return 8;
  }
  
  protected String d(String paramString)
  {
    Bundle localBundle = getArguments();
    String str = paramString;
    if (localBundle != null) {
      str = localBundle.getString("location", paramString);
    }
    return str;
  }
  
  public Gf e()
  {
    if (s()) {
      return Gf.b;
    }
    return Gf.a;
  }
  
  public int f()
  {
    if (F.getVisibility() == 0) {
      return F.getHeight();
    }
    return 0;
  }
  
  public void g()
  {
    Intent localIntent = new Intent(getActivity(), SendAYak.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("isPeek", true);
    localIntent.putExtra("peekID", c("-1"));
    localIntent.putExtra("canSubmit", s());
    localIntent.putExtra("title", d("Send Yak"));
    startActivityForResult(localIntent, 2000);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = q.getString("peekID", "");
    if (Hi.a(paramLayoutInflater))
    {
      y = DX.b;
      m = "CustomPeek";
    }
    do
    {
      a_();
      return paramViewGroup;
      paramBundle = AO.a().c(paramLayoutInflater);
    } while (paramBundle == null);
    if (section.equals("Featured"))
    {
      paramLayoutInflater = DX.a;
      label76:
      y = paramLayoutInflater;
      if (!section.equals("Featured")) {
        break label113;
      }
    }
    label113:
    for (paramLayoutInflater = "FeaturedPeek";; paramLayoutInflater = "OtherPeek")
    {
      m = paramLayoutInflater;
      break;
      paramLayoutInflater = DX.b;
      break label76;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    h().f();
  }
  
  protected boolean s()
  {
    if (getArguments() != null) {
      return getArguments().getBoolean("canSubmit");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.PeekFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */