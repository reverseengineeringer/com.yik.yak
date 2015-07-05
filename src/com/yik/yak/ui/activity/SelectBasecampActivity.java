package com.yik.yak.ui.activity;

import Ak;
import Am;
import Aq;
import Az;
import BG;
import BH;
import BK;
import BN;
import CQ;
import CS;
import Db;
import GB;
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
import com.yik.yak.ui.view.DividerItemDecoration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import wP;
import ww;
import wx;
import xn;
import xo;
import xt;
import xv;
import xw;
import zQ;
import zY;

public class SelectBasecampActivity
  extends BaseAppCompatActivity
  implements CS
{
  public BaseCampOptionsAdapter b;
  protected RecyclerView c;
  protected TextView d;
  public ProgressBar e;
  public ArrayList<Ak> f;
  private Context g;
  private Ak h;
  
  private String a(YakkerLocation paramYakkerLocation)
  {
    if (!Geocoder.isPresent()) {
      return "";
    }
    try
    {
      Object localObject1 = new Geocoder(g, Locale.getDefault());
      Object localObject2;
      try
      {
        paramYakkerLocation = ((Geocoder)localObject1).getFromLocation(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude(), 1);
        if (paramYakkerLocation != null)
        {
          i = 1;
          if (paramYakkerLocation.size() <= 0) {
            break label145;
          }
          j = 1;
          if ((j & i) == 0) {
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
            int i;
            int j;
            label145:
            continue;
          }
          paramYakkerLocation = paramYakkerLocation;
          Toast.makeText(g, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone.", 1).show();
          paramYakkerLocation.printStackTrace();
          paramYakkerLocation = null;
          continue;
          i = 0;
          continue;
          j = 0;
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
  
  private void b(String paramString)
  {
    ww.a(Snackbar.a(this).a(wx.a).a(paramString), this);
  }
  
  private void d()
  {
    setContentView(2130903073);
    c = ((RecyclerView)findViewById(2131558537));
    c.setLayoutManager(new LinearLayoutManager(this));
    d = ((TextView)findViewById(2131558535));
    d.setOnClickListener(new BG(this));
    e = ((ProgressBar)findViewById(2131558536));
    f = new ArrayList();
    b = new BaseCampOptionsAdapter(this, f);
    b.setOnItemClickListener(this);
    c.addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    c.setAdapter(b);
  }
  
  public void a()
  {
    if (h == null)
    {
      b("You have not selected a Herd");
      return;
    }
    if (h.b() != "0")
    {
      localObject = new Intent(g, YikYakDialog.class);
      ((Intent)localObject).putExtra("title", getString(2131230830));
      ((Intent)localObject).putExtra("message", getString(2131230828));
      ((Intent)localObject).putExtra("okText", "Yes");
      ((Intent)localObject).putExtra("cancelText", "Cancel");
      startActivityForResult((Intent)localObject, 3501);
      return;
    }
    Object localObject = a(Aq.a(g).f());
    Intent localIntent = new Intent(g, YikYakDialog.class);
    localIntent.putExtra("title", getString(2131230830));
    localIntent.putExtra("message", getString(2131230829));
    localIntent.putExtra("editText", localObject.split("\\,")[0]);
    localIntent.putExtra("okText", "Yes");
    localIntent.putExtra("cancelText", "Cancel");
    startActivityForResult(localIntent, 3502);
  }
  
  public void a(Ak paramAk)
  {
    if (isFinishing()) {}
    while (paramAk == null) {
      return;
    }
    Object localObject2 = new TreeMap();
    Aq.a(g).f();
    ((TreeMap)localObject2).put("userID", zQ.c());
    ((TreeMap)localObject2).put("bcName", paramAk.a());
    ((TreeMap)localObject2).put("bcLat", String.valueOf(paramAk.c()));
    ((TreeMap)localObject2).put("bcLong", String.valueOf(paramAk.d()));
    ((TreeMap)localObject2).put("bcPeekID", String.valueOf(paramAk.b()));
    Object localObject1 = zY.b(Az.a().b().getBasecampEndpoint(), "saveBasecamp", (TreeMap)localObject2, null);
    localObject2 = xw.a(xn.a("application/x-www-form-urlencoded"), (String)((TreeMap)localObject2).get("RequestBody:body"));
    localObject1 = new xv().a((xw)localObject2).a((String)localObject1).b();
    zY.a(true).a((xt)localObject1).a(new BH(this, paramAk));
  }
  
  public void a(Db<?> paramDb, CQ paramCQ, int paramInt)
  {
    h = ((Ak)paramCQ.getItem(paramInt));
    paramDb = f.iterator();
    while (paramDb.hasNext()) {
      ((Ak)paramDb.next()).a(Am.b);
    }
    h.a(Am.a);
    paramCQ.notifyDataSetChanged();
  }
  
  public void a(Exception paramException)
  {
    if (isFinishing()) {
      return;
    }
    new Handler(getMainLooper()).post(new BN(this));
  }
  
  public void c()
  {
    YakkerLocation localYakkerLocation = Aq.a(this).f();
    f.clear();
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userID", zQ.c());
    ((TreeMap)localObject).put("lat", localYakkerLocation.a());
    ((TreeMap)localObject).put("long", localYakkerLocation.b());
    localObject = zY.a(Az.a().b().getBasecampEndpoint(), "getBasecamps", (TreeMap)localObject, localYakkerLocation);
    localObject = new xv().a((String)localObject).b();
    e.setVisibility(0);
    zY.a(true).a((xt)localObject).a(new BK(this, localYakkerLocation));
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
        b("My Herd not set.");
        return;
      }
      paramIntent = paramIntent.getStringExtra("result");
      if (!GB.a(paramIntent))
      {
        h.a(paramIntent);
        a(h);
        return;
      }
      b("You must set a name to save Your Herd.");
      return;
    } while (paramInt2 != 1);
    a(h);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = this;
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