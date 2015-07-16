package com.yik.yak.ui.activity;

import Aa;
import Av;
import BD;
import GO;
import Hi;
import Hk;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.nispok.snackbar.Snackbar;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.view.VoteView;
import org.json.JSONException;
import org.json.JSONObject;
import wF;
import wG;

public class PhotoActivity
  extends BaseYikYakFragmentActivity
  implements View.OnClickListener
{
  public GO b;
  protected RelativeLayout c;
  public ImageView d;
  protected TextView e;
  protected TextView f;
  protected TextView g;
  protected TextView h;
  protected VoteView i;
  protected Yak j;
  private Animation k;
  private Animation l;
  
  public static Intent a(Context paramContext, Yak paramYak, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, PhotoActivity.class);
    Av localAv = new Av();
    try
    {
      paramContext.putExtra("KEY_YAK", localAv.b(paramYak).toString());
      paramContext.putExtra("KEY_CAN_VOTE", paramBoolean);
      return paramContext;
    }
    catch (JSONException paramYak)
    {
      paramYak.printStackTrace();
    }
    return paramContext;
  }
  
  private Yak a(Bundle paramBundle)
  {
    try
    {
      j = new Av().a(new JSONObject(paramBundle.getString("KEY_YAK")));
      j.mContext = this;
      paramBundle = j;
      return paramBundle;
    }
    catch (JSONException paramBundle)
    {
      paramBundle.printStackTrace();
    }
    return null;
  }
  
  private void b()
  {
    c = ((RelativeLayout)findViewById(2131558535));
    d = ((ImageView)findViewById(2131558534));
    e = ((TextView)findViewById(2131558536));
    f = ((TextView)findViewById(2131558538));
    g = ((TextView)findViewById(2131558539));
    h = ((TextView)findViewById(2131558540));
    i = ((VoteView)findViewById(2131558537));
    d.setOnClickListener(this);
    k = AnimationUtils.loadAnimation(this, 2130968599);
    l = AnimationUtils.loadAnimation(this, 2130968605);
  }
  
  private void c()
  {
    Yak localYak = a();
    if (localYak != null)
    {
      if (!Hi.a(YakkerHandle)) {
        break label92;
      }
      e.setVisibility(8);
      f.setText(Content);
      g.setText(new Hk().a(TimePosted));
      if (IsComment) {
        break label192;
      }
      if (Comments != 0) {
        break label106;
      }
      h.setText("");
    }
    for (;;)
    {
      i.setYak(localYak);
      return;
      label92:
      e.setText(YakkerHandle);
      break;
      label106:
      if (Comments == 1)
      {
        h.setText(String.valueOf(Comments) + " reply");
      }
      else if (Comments > 1)
      {
        h.setText(String.valueOf(Comments) + " replies");
        continue;
        label192:
        h.setText("");
      }
    }
  }
  
  private void d()
  {
    if ((c.getAnimation() == null) || (c.getAnimation() == l))
    {
      c.startAnimation(k);
      return;
    }
    c.startAnimation(l);
  }
  
  public Yak a()
  {
    if (j == null)
    {
      Bundle localBundle = getIntent().getExtras();
      if ((localBundle != null) && (localBundle.containsKey("KEY_YAK")))
      {
        j = a(localBundle);
        j.CanVote = localBundle.getBoolean("KEY_CAN_VOTE");
      }
    }
    return j;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    d();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Aa.u().equals("left")) {
      setContentView(2130903072);
    }
    for (;;)
    {
      b();
      c();
      overridePendingTransition(2130968601, 2130968606);
      return;
      setContentView(2130903073);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (b != null) {
      b.a();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    overridePendingTransition(2130968600, 2130968607);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    if (!Hi.a(paramBundle.getString("KEY_YAK"))) {
      j = a(paramBundle);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    Yak localYak = a();
    if ((localYak != null) && (!Hi.a(LinkUrl)))
    {
      Picasso.with(this).load(LinkUrl).into(d, new BD(this));
      return;
    }
    wF.a(Snackbar.a(this).a(wG.a).a("Error loading image."));
    c.setVisibility(8);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    try
    {
      paramBundle.putString("KEY_YAK", new Av().b(a()).toString());
      return;
    }
    catch (JSONException paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PhotoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */