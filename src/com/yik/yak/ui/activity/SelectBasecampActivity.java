package com.yik.yak.ui.activity;

import AD;
import AM;
import Aa;
import Aj;
import Aw;
import Ay;
import BJ;
import BK;
import BN;
import BQ;
import Dd;
import Df;
import Dp;
import Hi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.data.models.Environment;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.adapter.BaseCampOptionsAdapter;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.DividerItemDecoration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import wF;
import wG;
import wY;
import xD;
import xF;
import xG;
import xx;
import xy;

public class SelectBasecampActivity
  extends BaseAppCompatActivity
  implements Df
{
  public BaseCampOptionsAdapter c;
  protected RecyclerView d;
  protected TextView e;
  public ProgressBar f;
  public ArrayList<Aw> g;
  private Context h;
  private Aw i;
  
  private String a(YakkerLocation paramYakkerLocation)
  {
    if (!Geocoder.isPresent()) {
      return "";
    }
    try
    {
      Object localObject1 = new Geocoder(h, Locale.getDefault());
      Object localObject2;
      try
      {
        paramYakkerLocation = ((Geocoder)localObject1).getFromLocation(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude(), 1);
        if (paramYakkerLocation != null)
        {
          j = 1;
          if (paramYakkerLocation.size() <= 0) {
            break label145;
          }
          k = 1;
          if ((k & j) == 0) {
            break label170;
          }
          localAddress = (Address)paramYakkerLocation.get(0);
          paramYakkerLocation = localAddress.getLocality();
          localObject2 = paramYakkerLocation;
          if (paramYakkerLocation != null) {
            break label167;
          }
        }
      }
      catch (IOException paramYakkerLocation)
      {
        for (;;)
        {
          try
          {
            Address localAddress;
            localObject1 = localAddress.getSubAdminArea();
            localObject2 = localObject1;
            if (localObject1 != null) {
              break label167;
            }
            paramYakkerLocation = (YakkerLocation)localObject1;
            localObject1 = localAddress.getAdminArea();
            return (String)localObject1;
          }
          catch (Exception localException2)
          {
            int j;
            int k;
            label145:
            continue;
          }
          paramYakkerLocation = paramYakkerLocation;
          Toast.makeText(h, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone.", 1).show();
          paramYakkerLocation.printStackTrace();
          paramYakkerLocation = null;
          continue;
          j = 0;
          continue;
          k = 0;
        }
      }
      return (String)localObject2;
    }
    catch (Exception localException1)
    {
      paramYakkerLocation = "";
      localException1.printStackTrace();
      return paramYakkerLocation;
    }
    label167:
    label170:
    return "";
  }
  
  private void c(String paramString)
  {
    wF.a(Snackbar.a(this).a(wG.a).a(paramString), this);
  }
  
  private void d()
  {
    setContentView(2130903075);
    d = ((RecyclerView)findViewById(2131558548));
    d.setLayoutManager(new LinearLayoutManager(this));
    e = ((TextView)findViewById(2131558546));
    e.setOnClickListener(new BJ(this));
    f = ((ProgressBar)findViewById(2131558547));
    g = new ArrayList();
    c = new BaseCampOptionsAdapter(this, g);
    c.setOnItemClickListener(this);
    d.addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    d.setAdapter(c);
  }
  
  public void a()
  {
    if (i == null)
    {
      c("You have not selected a Herd");
      return;
    }
    if (i.b() != "0")
    {
      localObject = new Intent(h, YikYakDialog.class);
      ((Intent)localObject).putExtra("title", getString(2131230848));
      ((Intent)localObject).putExtra("message", getString(2131230846));
      ((Intent)localObject).putExtra("okText", "Yes");
      ((Intent)localObject).putExtra("cancelText", "Cancel");
      startActivityForResult((Intent)localObject, 3501);
      return;
    }
    Object localObject = a(AD.a().g());
    Intent localIntent = new Intent(h, YikYakDialog.class);
    localIntent.putExtra("title", getString(2131230848));
    localIntent.putExtra("message", getString(2131230847));
    localIntent.putExtra("editText", localObject.split("\\,")[0]);
    localIntent.putExtra("okText", "Yes");
    localIntent.putExtra("cancelText", "Cancel");
    startActivityForResult(localIntent, 3502);
  }
  
  public void a(Aw paramAw)
  {
    if (isFinishing()) {}
    while (paramAw == null) {
      return;
    }
    Object localObject2 = new TreeMap();
    AD.a().g();
    ((TreeMap)localObject2).put("userID", Aa.g());
    ((TreeMap)localObject2).put("bcName", paramAw.a());
    ((TreeMap)localObject2).put("bcLat", String.valueOf(paramAw.c()));
    ((TreeMap)localObject2).put("bcLong", String.valueOf(paramAw.d()));
    ((TreeMap)localObject2).put("bcPeekID", String.valueOf(paramAw.b()));
    Object localObject1 = Aj.b(AM.a().c().getBasecampEndpoint(), "saveBasecamp", (TreeMap)localObject2, null);
    localObject2 = xG.a(xx.a("application/x-www-form-urlencoded"), (String)((TreeMap)localObject2).get("RequestBody:body"));
    localObject1 = new xF().a((xG)localObject2).a((String)localObject1).b();
    Aj.a(true).a((xD)localObject1).a(new BK(this, paramAw));
  }
  
  public void a(Dp<?> paramDp, Dd paramDd, int paramInt)
  {
    i = ((Aw)paramDd.getItem(paramInt));
    paramDp = g.iterator();
    while (paramDp.hasNext()) {
      ((Aw)paramDp.next()).a(Ay.b);
    }
    i.a(Ay.a);
    paramDd.notifyDataSetChanged();
  }
  
  public void a(Exception paramException)
  {
    if (isFinishing()) {
      return;
    }
    new Handler(getMainLooper()).post(new BQ(this));
  }
  
  public void c()
  {
    YakkerLocation localYakkerLocation = AD.a().g();
    g.clear();
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userID", Aa.g());
    ((TreeMap)localObject).put("lat", localYakkerLocation.a());
    ((TreeMap)localObject).put("long", localYakkerLocation.b());
    localObject = Aj.a(AM.a().c().getBasecampEndpoint(), "getBasecamps", (TreeMap)localObject, localYakkerLocation);
    localObject = new xF().a((String)localObject).b();
    f.setVisibility(0);
    Aj.a(true).a((xD)localObject).a(new BN(this, localYakkerLocation));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while (paramInt2 != 1);
      if (paramIntent == null)
      {
        c("My Herd not set.");
        return;
      }
      paramIntent = paramIntent.getStringExtra("result");
      if (!Hi.a(paramIntent))
      {
        i.a(paramIntent);
        a(i);
        return;
      }
      c("You must set a name to save Your Herd.");
      return;
    } while (paramInt2 != 1);
    a(i);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    h = this;
    d();
    a("Set My Herd");
    a.setBackgroundColor(Color.parseColor("#00000000"));
    c();
  }
  
  public void onSetBasecampClicked(View paramView)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.SelectBasecampActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */