package com.yik.yak.ui.fragment;

import AA;
import AB;
import AJ;
import Aa;
import Ag;
import Ai;
import Aj;
import Bo;
import CU;
import CV;
import CX;
import DX;
import ET;
import EU;
import EV;
import EW;
import EZ;
import Ha;
import Hi;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.yik.yak.data.models.Notification;
import com.yik.yak.data.models.SimpleListItem;
import com.yik.yak.ui.activity.MainActivity;
import com.yik.yak.ui.activity.SelectBasecampActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import wY;
import xF;
import xG;
import xx;
import xy;

public class MeFragment
  extends BaseFragment
  implements Ai, Bo
{
  private List<SimpleListItem> c = new ArrayList();
  private ListView d;
  private ListView e;
  private Notification f;
  private CX g;
  private EZ h = EZ.c;
  private boolean i = false;
  private ImageView j = null;
  private float k = 0.0F;
  private Animation l;
  private Animation m;
  private View.OnClickListener n = new ET(this);
  
  private void a(SimpleListItem paramSimpleListItem)
  {
    try
    {
      i1 = Integer.parseInt(index);
      switch (i1)
      {
      case 15: 
      default: 
        return;
      }
    }
    catch (NumberFormatException paramSimpleListItem)
    {
      for (;;)
      {
        paramSimpleListItem.printStackTrace();
        int i1 = 1;
      }
      Ha.a().r();
      paramSimpleListItem = new MyYaksFragment();
      paramSimpleListItem.a("MyRecentScreen");
      paramSimpleListItem.a(DX.a);
      a(CU.c, paramSimpleListItem);
      return;
    }
    Ha.a().s();
    paramSimpleListItem = new MyRepliesFragment();
    paramSimpleListItem.a("MyRecentRepliesScreen");
    paramSimpleListItem.a(DX.a);
    a(CU.c, paramSimpleListItem);
    return;
    paramSimpleListItem = new Intent(getActivity(), SelectBasecampActivity.class);
    paramSimpleListItem.putExtra("Source", "Me");
    startActivity(paramSimpleListItem);
    return;
    paramSimpleListItem = new SettingsFragment();
    a(CU.c, paramSimpleListItem);
    return;
    paramSimpleListItem = new ManagePeeksFragment();
    paramSimpleListItem.a("ManageMyPeeksScreen");
    a(CU.c, paramSimpleListItem);
    return;
    paramSimpleListItem = new DraftsFragment();
    paramSimpleListItem.a("DraftsFragment");
    a(CU.c, paramSimpleListItem);
  }
  
  public String a()
  {
    return "Me";
  }
  
  public void a(AA paramAA, List<Notification> paramList, String paramString)
  {
    String str = AJ.a().i() + "/" + paramAA.toString() + "/";
    if ((paramList == null) || (paramList.size() == 0) || (Hi.a(paramString)))
    {
      Toast.makeText(getActivity(), "There are no notifications to update", 0).show();
      return;
    }
    int i1;
    Object localObject;
    try
    {
      localJSONObject = new JSONObject("{\"notificationIDs\":[],\"status\":\"" + paramString + "\",\"userID\":\"" + Aa.g() + "\"}");
      if (localJSONObject != null)
      {
        switch (EY.a[paramAA.ordinal()])
        {
        default: 
          return;
        }
        paramAA = paramList.iterator();
        i1 = 0;
        if (paramAA.hasNext()) {
          paramList = (Notification)paramAA.next();
        }
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        try
        {
          JSONObject localJSONObject;
          localJSONObject.getJSONArray("notificationIDs").put(paramList.getId());
          paramList.setStatus(paramString);
          i1 = 1;
        }
        catch (JSONException paramList)
        {
          paramList.printStackTrace();
          continue;
        }
        catch (NullPointerException paramList)
        {
          paramList.printStackTrace();
          continue;
        }
        localJSONException = localJSONException;
        localJSONException.printStackTrace();
        localObject = null;
      }
      Ag.a().a(0);
      h().a(CU.c, Ag.a().d());
    }
    for (;;)
    {
      if (i1 == 0)
      {
        Toast.makeText(getActivity(), "There are no notifications to update", 0).show();
        return;
      }
      paramAA = xG.a(xx.a("application/json; charset=utf-8"), ((JSONObject)localObject).toString());
      paramAA = new xF().a(paramAA).a(str).b();
      Aj.a(false).a(paramAA).a(new EW(this));
      return;
      i1 = 0;
    }
  }
  
  public void a(EZ paramEZ, boolean paramBoolean)
  {
    if (paramEZ == EZ.a)
    {
      j();
      if ((h != paramEZ) || (i))
      {
        j.startAnimation(m);
        i = false;
      }
      h = EZ.a;
      getView().findViewById(2131558710).setVisibility(8);
      getView().findViewById(2131558708).setVisibility(0);
      d();
      if (paramBoolean) {
        c();
      }
    }
    for (;;)
    {
      hdb = h;
      return;
      if ((h != paramEZ) || (i))
      {
        j.startAnimation(l);
        i = false;
      }
      h = EZ.b;
      getView().findViewById(2131558708).setVisibility(8);
      getView().findViewById(2131558710).setVisibility(0);
    }
  }
  
  public void a(Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras();
    if ((paramIntent == null) || (!paramIntent.containsKey("action"))) {}
    while (paramIntent.getInt("action", 0) != 4000) {
      return;
    }
    a(EZ.a, false);
  }
  
  public void a(View paramView)
  {
    e = ((ListView)paramView.findViewById(2131558709));
    e.setItemsCanFocus(false);
    e.setOnItemClickListener(new EU(this));
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    i = paramBoolean;
    float f1 = getSystemgetDisplayMetricswidthPixels / 10.0F;
    float f2 = 6.0F * f1;
    j = ((ImageView)paramView.findViewById(2131558707));
    j.getLayoutParams().width = Math.round(3.0F * f1);
    j.setLeft(Math.round(k));
    l = new TranslateAnimation(f1, f2, 0.0F, 0.0F);
    l.setInterpolator(new BounceInterpolator());
    l.setDuration(1000L);
    l.setFillAfter(true);
    m = new TranslateAnimation(f2, f1, 0.0F, 0.0F);
    m.setInterpolator(new BounceInterpolator());
    m.setDuration(1000L);
    m.setFillAfter(true);
    if (paramBoolean) {
      a(h, false);
    }
  }
  
  public void a(Exception paramException)
  {
    paramException.printStackTrace();
  }
  
  public void a(ArrayList<Notification> paramArrayList, int paramInt)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList.add(Notification.emptyNotification());
    }
    g = new CX(getActivity(), 2130903144, paramArrayList);
    e.setAdapter(g);
    if (h == EZ.c)
    {
      if (paramArrayList.size() == 0) {
        a(EZ.b, false);
      }
    }
    else {
      return;
    }
    a(EZ.a, false);
  }
  
  public void b()
  {
    if (h == EZ.a) {
      d();
    }
  }
  
  public void b(View paramView)
  {
    d = ((ListView)paramView.findViewById(2131558711));
    d.setItemsCanFocus(false);
    d.setOnItemClickListener(new EV(this));
    c = new SimpleListItem().getItemList(getActivity(), AB.a);
    paramView = new CV(getActivity(), 2130903142, c);
    d.setAdapter(paramView);
  }
  
  public void c()
  {
    a(Ag.a().c(), Ag.a().d());
    Ag.a().a(getActivity());
  }
  
  public void d()
  {
    if (Ag.a().b()) {}
    ArrayList localArrayList;
    do
    {
      return;
      if ((Ag.a().d() != 0) && (h != EZ.a)) {
        a(EZ.a, false);
      }
      localArrayList = new ArrayList();
      Iterator localIterator = Ag.a().c().iterator();
      while (localIterator.hasNext())
      {
        Notification localNotification = (Notification)localIterator.next();
        if (localNotification.getStatus().equals("new")) {
          localArrayList.add(localNotification);
        }
      }
    } while (localArrayList.size() <= 0);
    a(AA.i, localArrayList, "unread");
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    h();
    c();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903116, paramViewGroup, false);
    ((TextView)paramLayoutInflater.findViewById(2131558705)).setOnClickListener(n);
    ((TextView)paramLayoutInflater.findViewById(2131558706)).setOnClickListener(n);
    a(paramLayoutInflater, false);
    b(paramLayoutInflater);
    a(paramLayoutInflater);
    setHasOptionsMenu(true);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    Ag.a().b(this);
  }
  
  public void onResume()
  {
    super.onResume();
    Ag.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.MeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */