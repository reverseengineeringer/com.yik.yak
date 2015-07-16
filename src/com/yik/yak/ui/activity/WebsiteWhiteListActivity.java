package com.yik.yak.ui.activity;

import CY;
import Da;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.yik.yak.data.db.helper.WhiteListedWebsiteTableHelper;
import com.yik.yak.data.models.Website;
import java.util.ArrayList;
import java.util.HashMap;

public class WebsiteWhiteListActivity
  extends BaseAppCompatActivity
  implements Da
{
  protected HashMap<String, ArrayList<Website>> c = new HashMap();
  protected RecyclerView d;
  protected CY e;
  
  private void a()
  {
    setContentView(2130903080);
    a("Supported Links");
    d = ((RecyclerView)findViewById(2131558568));
    d.setLayoutManager(new LinearLayoutManager(this));
  }
  
  private void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(this, WebActivity.class);
    localIntent.putExtra("title", paramString1);
    localIntent.putExtra("url", paramString2);
    localIntent.putExtra("shareEnabled", true);
    startActivityForResult(localIntent, 100);
  }
  
  private void c()
  {
    Website[] arrayOfWebsite = WhiteListedWebsiteTableHelper.getAllWhiteListedWebsites();
    int j = arrayOfWebsite.length;
    int i = 0;
    while (i < j)
    {
      Website localWebsite = arrayOfWebsite[i];
      String str = localWebsite.getCategory();
      if (!c.containsKey(str)) {
        c.put(str, new ArrayList());
      }
      if (localWebsite.shouldDisplay()) {
        ((ArrayList)c.get(str)).add(localWebsite);
      }
      i += 1;
    }
    e = new CY(this, c);
    d.setAdapter(e);
  }
  
  private void d()
  {
    e.a(this);
  }
  
  public void a(Website paramWebsite)
  {
    a(paramWebsite.getName(), paramWebsite.getUrl());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0) {
      return;
    }
    switch (paramInt1)
    {
    default: 
      return;
    }
    setResult(-1, paramIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
    c();
    d();
    overridePendingTransition(2130968603, 2130968604);
  }
  
  protected void onPause()
  {
    super.onPause();
    overridePendingTransition(2130968603, 2130968604);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.WebsiteWhiteListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */