package com.yik.yak.ui.activity;

import AB;
import Aq;
import Aw;
import BO;
import BP;
import BQ;
import BR;
import BS;
import BT;
import BU;
import BV;
import BW;
import BX;
import BY;
import Cb;
import Cc;
import Ce;
import Cf;
import Cg;
import Ch;
import Ci;
import Fj;
import GB;
import Gs;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.location.Location;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.data.http.request.GetWhiteListOfSitesRequest;
import com.yik.yak.data.http.request.ValidateUrlRequest;
import com.yik.yak.data.models.Configuration.ThreatCheck;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.view.LinkDetectingEditText;
import com.yik.yak.ui.view.LinkIconView;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TreeMap;
import wP;
import wt;
import ww;
import wx;
import wy;
import xn;
import xo;
import xt;
import xv;
import xw;
import zQ;
import zY;

public class SendAYak
  extends BaseAppCompatActivity
{
  private Bundle b = new Bundle();
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private String j;
  private Context k;
  private Ci l;
  private Handler m = new Handler();
  private Runnable n = new BO(this);
  private String o;
  private String p;
  private Aq q = null;
  private EditText r;
  private ImageView s;
  private ImageView t;
  private LinkDetectingEditText u;
  private LinkIconView v;
  private ProgressBar w;
  private RelativeLayout x;
  private TextView y;
  private long z;
  
  private void a(int paramInt)
  {
    if (paramInt == 1)
    {
      g();
      super.onBackPressed();
    }
  }
  
  private void a(Bitmap paramBitmap)
  {
    paramBitmap = ThumbnailUtils.extractThumbnail(paramBitmap, GB.a(55), GB.a(55));
    n();
    ((ImageView)findViewById(2131558543)).setImageBitmap(paramBitmap);
  }
  
  private void a(Bundle paramBundle)
  {
    r.setText(paramBundle.getString("yakkerHandle", ""));
    e = paramBundle.getBoolean("showHandle", false);
    if (!e)
    {
      s.setImageResource(2130837572);
      a(r, false);
    }
    for (;;)
    {
      u.setText(paramBundle.getString("content", ""));
      y.setText(String.valueOf(200 - u.getText().length()));
      return;
      s.setImageResource(2130837571);
      a(r, true);
    }
  }
  
  private void a(TextView paramTextView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramTextView.setTextColor(getResources().getColor(2131427561));
      return;
    }
    paramTextView.setTextColor(getResources().getColor(2131427558));
  }
  
  private void a(String paramString, int paramInt, boolean paramBoolean)
  {
    Object localObject2 = new TreeMap();
    int i1 = 0;
    Object localObject1;
    Object localObject3;
    if (paramBoolean)
    {
      localObject1 = "submitPeekMessage";
      localObject3 = r.getText().toString();
      if ((e) && (!GB.a((String)localObject3))) {
        ((TreeMap)localObject2).put("hndl", localObject3);
      }
      zQ.b((String)localObject3);
      localObject3 = q.f();
      ((TreeMap)localObject2).put("userID", zQ.c());
      if (paramBoolean) {
        ((TreeMap)localObject2).put("peekID", j);
      }
      ((TreeMap)localObject2).put("lat", ((YakkerLocation)localObject3).a());
      ((TreeMap)localObject2).put("long", ((YakkerLocation)localObject3).b());
      ((TreeMap)localObject2).put("bypassedThreatPopup", String.valueOf(paramInt));
      ((TreeMap)localObject2).put("message", paramString);
      paramInt = i1;
      if (!GB.a(o))
      {
        paramInt = 6;
        ((TreeMap)localObject2).put("pID", o);
      }
      if (!paramBoolean)
      {
        if (!i) {
          break label309;
        }
        paramString = "1";
        label192:
        ((TreeMap)localObject2).put("bc", paramString);
      }
      localObject3 = Yak.getYakTypeName(paramInt);
      if (!paramBoolean) {
        break label316;
      }
    }
    label309:
    label316:
    for (paramString = "FeaturedPeek";; paramString = "MainFeed")
    {
      localObject1 = zY.b(Aw.a().f(), (String)localObject1, (TreeMap)localObject2, null);
      localObject2 = xw.a(xn.a("application/x-www-form-urlencoded"), (String)((TreeMap)localObject2).get("RequestBody:body"));
      localObject1 = new xv().a((xw)localObject2).a((String)localObject1).b();
      zY.a(true).a((xt)localObject1).a(new BY(this, paramBoolean, (String)localObject3, paramString));
      return;
      localObject1 = "sendMessage";
      break;
      paramString = "0";
      break label192;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    paramString1 = GB.b(paramString2 + paramString1);
    if (paramString1 == null)
    {
      d = true;
      a(paramString2, 0, c);
      return;
    }
    if (allowContinue)
    {
      if (((!zQ.a(2)) || (Aw.a().a("threatWords", "alwaysShowMessage", true))) && (paramString1 != null))
      {
        paramString1 = message;
        localIntent = new Intent(k, YikYakDialog.class);
        localIntent.putExtra("title", "WARNING");
        localIntent.putExtra("message", paramString1);
        localIntent.putExtra("value", paramString2);
        localIntent.putExtra("okText", "YES");
        localIntent.putExtra("cancelText", "NO");
        startActivityForResult(localIntent, 7004);
        return;
      }
      d = true;
      a(paramString2, 0, c);
      return;
    }
    paramString1 = message;
    Intent localIntent = new Intent(k, YikYakDialog.class);
    localIntent.putExtra("title", "WHOA!");
    localIntent.putExtra("message", paramString1);
    localIntent.putExtra("value", paramString2);
    localIntent.putExtra("okText", "OK");
    localIntent.putExtra("okOnly", true);
    startActivity(localIntent);
  }
  
  private void a(String paramString, wt paramwt)
  {
    a(paramString, paramwt, null, null);
  }
  
  private void a(String paramString1, wt paramwt, String paramString2, wy paramwy)
  {
    Snackbar localSnackbar = ww.b();
    if ((localSnackbar != null) && (localSnackbar.d().toString().equals(paramString1)) && (!localSnackbar.h())) {
      return;
    }
    m();
    paramString1 = Snackbar.a(this).a(paramString1).a(paramwt).a(2131427631).a(false);
    if (paramString2 != null) {
      paramString1.a(wx.b).b(paramString2).a(paramwy);
    }
    ww.a(paramString1, (ViewGroup)findViewById(2131558545));
  }
  
  private void a(boolean paramBoolean)
  {
    t = ((ImageView)findViewById(2131558546));
    if (paramBoolean)
    {
      if (k.getPackageManager().hasSystemFeature("android.hardware.camera") == true)
      {
        t.setVisibility(0);
        t.setOnClickListener(new BR(this));
        return;
      }
      t.setVisibility(8);
      return;
    }
    t.setVisibility(8);
  }
  
  private boolean a()
  {
    return u.getText().toString().isEmpty();
  }
  
  private void b(String paramString)
  {
    Object localObject = Aw.a().a("images", "s3Url", Aw.a().j());
    localObject = (String)localObject + "?s3_object_name=" + paramString;
    localObject = new xv().a((String)localObject).b();
    zY.a(true).a((xt)localObject).a(new Cc(this, paramString));
  }
  
  private void b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(k, YikYakDialog.class);
    localIntent.putExtra("title", paramString1);
    localIntent.putExtra("message", paramString2);
    localIntent.putExtra("okText", "OK");
    localIntent.putExtra("okOnly", "true");
    startActivity(localIntent);
  }
  
  private void b(boolean paramBoolean)
  {
    v = ((LinkIconView)findViewById(2131558547));
    if (paramBoolean)
    {
      v.setVisibility(0);
      u.setLinksEnabled(true);
      return;
    }
    v.setVisibility(8);
    u.setLinksEnabled(false);
    u.setLinkTextColor(-16777216);
  }
  
  private void c()
  {
    Object localObject = Aq.a(this).f();
    if ((localObject == null) || ((((Location)localObject).getLatitude() == 0.0D) && (((Location)localObject).getLongitude() == 0.0D)))
    {
      localObject = new Intent(k, YikYakDialog.class);
      ((Intent)localObject).putExtra("title", "Location Services");
      ((Intent)localObject).putExtra("message", "Location services must be enabled to postw and read local Yaks. Would you like to enable it now?");
      ((Intent)localObject).putExtra("okText", "YES");
      ((Intent)localObject).putExtra("cancelText", "NO");
      startActivityForResult((Intent)localObject, 5002);
    }
  }
  
  private void d()
  {
    if (g) {
      Toast.makeText(getApplicationContext(), "We are currently processing your link.", 1).show();
    }
    if (f) {
      Toast.makeText(getApplicationContext(), "We are currently processing your image.", 1).show();
    }
    do
    {
      return;
      if (v.a() == Fj.a)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setTitle("Invalid Link Input").setPositiveButton("Ok", null);
        int i1;
        if (u.b()) {
          i1 = 2131230973;
        }
        for (;;)
        {
          localBuilder.setMessage(i1);
          localBuilder.show();
          return;
          i1 = 2131230972;
          localBuilder.setNeutralButton("Sites", new BX(this));
        }
      }
    } while (d);
    if ((y.getText().equals("200")) || (y.getText().equals("")) || (u.getText().toString().trim().length() == 0))
    {
      Toast.makeText(getApplicationContext(), "You have not entered a Yak yet", 1).show();
      return;
    }
    a(r.getText().toString(), u.getText().toString());
  }
  
  private void e()
  {
    b();
    new Handler().postDelayed(new Cb(this), 500L);
  }
  
  private void f()
  {
    startActivityForResult(new Intent(this, WebsiteWhiteListActivity.class), 100);
  }
  
  private void g()
  {
    if (GB.a(p)) {}
    Object localObject1;
    Object localObject2;
    do
    {
      return;
      if (h)
      {
        localObject1 = p;
        p = null;
        new File((String)localObject1).delete();
        return;
      }
      localObject1 = new SimpleDateFormat("yyyyMMdd_hhmmss");
      localObject2 = ((SimpleDateFormat)localObject1).format(new Date()) + ".jpg";
      localObject1 = new File(p);
      localObject2 = new File(GB.a(), (String)localObject2);
      if (((File)localObject2).exists()) {
        ((File)localObject2).delete();
      }
    } while (!((File)localObject1).exists());
    ((File)localObject1).renameTo((File)localObject2);
    try
    {
      if (Build.VERSION.SDK_INT < 19)
      {
        sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile((File)localObject2)));
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile((File)localObject2)));
  }
  
  private void h()
  {
    Intent localIntent = new Intent(k, YikYakDialog.class);
    localIntent.putExtra("title", "Remove Image?");
    localIntent.putExtra("message", "Are you sure you want to remove this image?");
    localIntent.putExtra("okText", "YES");
    localIntent.putExtra("cancelText", "NO");
    startActivityForResult(localIntent, 2005);
  }
  
  private void i()
  {
    v.setIconState(Fj.b);
    u.setLinkTextColor(-16776961);
    m();
  }
  
  private void j()
  {
    v.setIconState(Fj.a);
    u.setLinkTextColor(-65536);
    a("This link is not valid.", wt.c, "View Sites", new Ce(this));
  }
  
  private void k()
  {
    g = true;
    new ValidateUrlRequest(u.getText().toString()).execute(this, new Cf(this));
  }
  
  private void l()
  {
    x.setVisibility(8);
  }
  
  private void m() {}
  
  private void n()
  {
    x.setVisibility(0);
  }
  
  private void o()
  {
    f = true;
    w.setVisibility(0);
  }
  
  private void p()
  {
    f = false;
    w.setVisibility(8);
  }
  
  private void q()
  {
    u = ((LinkDetectingEditText)findViewById(2131558538));
    if (b.containsKey("content"))
    {
      u.clearFocus();
      a(b);
    }
    if (c)
    {
      PeekLocation localPeekLocation = AB.a().c(j);
      if (localPeekLocation != null)
      {
        a(canSubmitPhotos);
        b(canSubmitLinks);
        return;
      }
      a(false);
      b(false);
      return;
    }
    if (i)
    {
      a(Aw.a().a("bcPhotosEnabled", false));
      b(Aw.a().a("bcLinksEnabled", false));
      return;
    }
    a(Aw.a().a("photosEnabled", false));
    b(Aw.a().a("linksEnabled", false));
  }
  
  private void r()
  {
    v.setOnClickListener(new BS(this));
    if (Aw.a().a("linksEnabled", false)) {
      u.setOnLinkAddedOrEditedListener(new BT(this));
    }
    u.addTextChangedListener(new BU(this));
  }
  
  private void s()
  {
    new GetWhiteListOfSitesRequest().execute(this, new BV(this));
  }
  
  public String a(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    Cursor localCursor = managedQuery(paramUri, new String[] { "_data" }, null, null, null);
    if (localCursor != null)
    {
      int i1 = localCursor.getColumnIndexOrThrow("_data");
      localCursor.moveToFirst();
      return localCursor.getString(i1);
    }
    return paramUri.getPath();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 0)
    {
      if (paramInt1 == 2004) {
        g();
      }
      a(u);
    }
    do
    {
      return;
      switch (paramInt1)
      {
      default: 
        return;
      case 100: 
        a(u);
        u.setText(paramIntent.getStringExtra("url"));
        return;
      case 7007: 
        a(paramInt2);
        return;
      case 2005: 
        a(u);
      }
    } while (paramInt2 != 1);
    g();
    o = null;
    p = null;
    l();
    return;
    if (paramInt2 == 1)
    {
      startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 5000);
      return;
    }
    setResult(0);
    finish();
    return;
    c();
    return;
    switch (paramInt2)
    {
    default: 
      return;
    }
    zQ.b(2);
    d = true;
    a(paramIntent.getStringExtra("value"), 1, c);
    return;
    if (paramInt2 == -1)
    {
      l();
      o();
      File localFile;
      if (paramIntent != null) {
        try
        {
          h = true;
          paramIntent = a(paramIntent.getData());
          localFile = GB.b(paramIntent, p);
          if (localFile == null)
          {
            Toast.makeText(k, "Failed to upload " + paramIntent, 0).show();
            return;
          }
        }
        catch (Exception paramIntent) {}
      }
      for (;;)
      {
        new Handler().postDelayed(new BW(this), 500L);
        return;
        p = localFile.getAbsolutePath();
        continue;
        h = false;
      }
    }
    a(u);
    o = null;
    h = false;
  }
  
  public void onBackPressed()
  {
    if (!a())
    {
      Intent localIntent = new Intent(k, YikYakDialog.class);
      localIntent.putExtra("title", getString(2131231020));
      localIntent.putExtra("message", getString(2131231019));
      localIntent.putExtra("okText", getString(2131231098));
      localIntent.putExtra("cancelText", getString(2131230998));
      startActivityForResult(localIntent, 7007);
      return;
    }
    g();
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    Gs.a().f(i);
    k = this;
    q = Aq.a(k);
    if (paramBundle == null) {}
    for (b = getIntent().getExtras();; b = paramBundle)
    {
      if (b == null) {
        b = new Bundle();
      }
      j = b.getString("peekID", "-1");
      c = b.getBoolean("isPeek", false);
      i = b.getBoolean("isBasecamp", false);
      if ((!b.containsKey("canSubmit")) || (b.getBoolean("canSubmit"))) {
        break;
      }
      Toast.makeText(k, "Cannot post Yak to this Peek.", 0).show();
      setResult(2003);
      finish();
      return;
    }
    if (b.containsKey("title")) {}
    for (paramBundle = b.getString("title");; paramBundle = "Send a Yak")
    {
      if (!paramBundle.equals("Home"))
      {
        TextView localTextView = (TextView)findViewById(2131558540);
        localTextView.setText(paramBundle);
        localTextView.setVisibility(0);
      }
      a("Post a Yak");
      findViewById(2131558834).setOnClickListener(new Cg(this));
      w = ((ProgressBar)findViewById(2131558544));
      r = ((EditText)findViewById(2131558549));
      r.setText(zQ.e());
      r.setOnFocusChangeListener(new Ch(this));
      s = ((ImageView)findViewById(2131558548));
      s.setOnClickListener(new BP(this));
      y = ((TextView)findViewById(2131558550));
      y.setGravity(17);
      y.setText("200");
      x = ((RelativeLayout)findViewById(2131558542));
      x.setOnClickListener(new BQ(this));
      c();
      q();
      r();
      s();
      return;
    }
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    u.setText(paramBundle.getString("STATE_KEY_YAK"));
    r.setText(paramBundle.getString("STATE_KEY_HANDLE"));
  }
  
  protected void onResume()
  {
    super.onResume();
    z = System.currentTimeMillis();
    if (Aw.a().a("linksEnabled", false))
    {
      if (!u.getText().toString().isEmpty())
      {
        m.removeCallbacks(n);
        m.postDelayed(n, 500L);
      }
      return;
    }
    u.setLinkTextColor(-16777216);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putAll(b);
    paramBundle.putString("STATE_KEY_YAK", u.getText().toString());
    paramBundle.putString("STATE_KEY_HANDLE", r.getText().toString());
  }
  
  public void onStart()
  {
    super.onStart();
    Gs.a().a("SendScreen");
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.SendAYak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */