package com.yik.yak.ui.activity;

import AD;
import AJ;
import AO;
import Aa;
import Aj;
import BR;
import BS;
import BT;
import BU;
import BV;
import BW;
import BX;
import BY;
import BZ;
import Ca;
import Cb;
import Cc;
import Cd;
import Cg;
import Ch;
import Cj;
import Ck;
import Cl;
import Cm;
import FN;
import FQ;
import Ha;
import Hi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.data.http.request.GetWhiteListOfSitesRequest;
import com.yik.yak.data.http.request.ValidateUrlRequest;
import com.yik.yak.data.models.Configuration.ThreatCheck;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.LinkDetectingEditText;
import com.yik.yak.ui.view.MultipleStateIconView;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TreeMap;
import wC;
import wF;
import wG;
import wH;
import wY;
import xD;
import xF;
import xG;
import xx;
import xy;

public class SendAYak
  extends BaseAppCompatActivity
{
  private long A;
  private final FN B = new Cb(this);
  private Bundle c = new Bundle();
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private String k;
  private Context l;
  private Cm m;
  private Handler n = new Handler();
  private Runnable o = new BR(this);
  private String p;
  private String q;
  private AD r = null;
  private EditText s;
  private ImageView t;
  private LinkDetectingEditText u;
  private MultipleStateIconView v;
  private MultipleStateIconView w;
  private ProgressBar x;
  private RelativeLayout y;
  private TextView z;
  
  private void a(int paramInt)
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)z.getLayoutParams();
    bottomMargin = paramInt;
    z.setLayoutParams(localLayoutParams);
  }
  
  private void a(Bitmap paramBitmap)
  {
    paramBitmap = ThumbnailUtils.extractThumbnail(paramBitmap, Hi.a(55), Hi.a(55));
    n();
    v.setIconState(FQ.b);
    ((ImageView)findViewById(2131558553)).setImageBitmap(paramBitmap);
  }
  
  private void a(Bundle paramBundle)
  {
    s.setText(paramBundle.getString("yakkerHandle", ""));
    f = paramBundle.getBoolean("showHandle", false);
    if (!f)
    {
      t.setImageResource(2130837772);
      a(s, false);
    }
    for (;;)
    {
      u.setText(paramBundle.getString("content", ""));
      z.setText(String.valueOf(200 - u.getText().length()));
      return;
      t.setImageResource(2130837771);
      a(s, true);
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
      localObject3 = s.getText().toString();
      if ((f) && (!Hi.a((String)localObject3))) {
        ((TreeMap)localObject2).put("hndl", localObject3);
      }
      Aa.c((String)localObject3);
      localObject3 = r.g();
      ((TreeMap)localObject2).put("userID", Aa.g());
      if (paramBoolean) {
        ((TreeMap)localObject2).put("peekID", k);
      }
      ((TreeMap)localObject2).put("lat", ((YakkerLocation)localObject3).a());
      ((TreeMap)localObject2).put("long", ((YakkerLocation)localObject3).b());
      ((TreeMap)localObject2).put("bypassedThreatPopup", String.valueOf(paramInt));
      ((TreeMap)localObject2).put("message", paramString);
      paramInt = i1;
      if (!Hi.a(p))
      {
        paramInt = 6;
        ((TreeMap)localObject2).put("pID", p);
      }
      if (!paramBoolean)
      {
        if (!j) {
          break label313;
        }
        paramString = "1";
        label196:
        ((TreeMap)localObject2).put("bc", paramString);
      }
      localObject3 = Yak.getYakTypeName(paramInt);
      if (!paramBoolean) {
        break label320;
      }
    }
    label313:
    label320:
    for (paramString = "FeaturedPeek";; paramString = "MainFeed")
    {
      localObject1 = Aj.b(AJ.a().f(), (String)localObject1, (TreeMap)localObject2, null);
      localObject2 = xG.a(xx.a("application/x-www-form-urlencoded"), (String)((TreeMap)localObject2).get("RequestBody:body"));
      localObject1 = new xF().a((xG)localObject2).a((String)localObject1).b();
      Aj.a(true).a((xD)localObject1).a(new Cd(this, paramBoolean, (String)localObject3, paramString));
      return;
      localObject1 = "sendMessage";
      break;
      paramString = "0";
      break label196;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    paramString1 = Hi.b(paramString2 + paramString1);
    if (paramString1 == null)
    {
      e = true;
      a(paramString2, 0, d);
      return;
    }
    if (allowContinue)
    {
      if (((!Aa.a(2)) || (AJ.a().a("threatWords", "alwaysShowMessage", true))) && (paramString1 != null))
      {
        paramString1 = message;
        localIntent = new Intent(l, YikYakDialog.class);
        localIntent.putExtra("title", "WARNING");
        localIntent.putExtra("message", paramString1);
        localIntent.putExtra("value", paramString2);
        localIntent.putExtra("okText", "YES");
        localIntent.putExtra("cancelText", "NO");
        startActivityForResult(localIntent, 7004);
        return;
      }
      e = true;
      a(paramString2, 0, d);
      return;
    }
    paramString1 = message;
    Intent localIntent = new Intent(l, YikYakDialog.class);
    localIntent.putExtra("title", "WHOA!");
    localIntent.putExtra("message", paramString1);
    localIntent.putExtra("value", paramString2);
    localIntent.putExtra("okText", "OK");
    localIntent.putExtra("okOnly", true);
    Ha.a().a("Yak", j, Boolean.valueOf(false));
    startActivity(localIntent);
  }
  
  private void a(String paramString, wC paramwC)
  {
    a(paramString, paramwC, null, null);
  }
  
  private void a(String paramString1, wC paramwC, String paramString2, wH paramwH)
  {
    Snackbar localSnackbar = wF.b();
    if ((localSnackbar != null) && (localSnackbar.d().toString().equals(paramString1)) && (!localSnackbar.h())) {
      return;
    }
    m();
    paramString1 = Snackbar.a(this).a(paramString1).a(paramwC).a(2131427631).a(false).a(new Cl(this));
    if (paramString2 != null) {
      paramString1.a(wG.b).b(paramString2).a(paramwH);
    }
    wF.a(paramString1, (ViewGroup)findViewById(2131558555));
  }
  
  private void a(boolean paramBoolean)
  {
    v = ((MultipleStateIconView)findViewById(2131558557));
    if (paramBoolean)
    {
      if (l.getPackageManager().hasSystemFeature("android.hardware.camera") == true)
      {
        v.setVisibility(0);
        v.setOnClickListener(new BW(this));
        return;
      }
      v.setVisibility(8);
      return;
    }
    v.setVisibility(8);
  }
  
  private boolean a()
  {
    return u.getText().toString().isEmpty();
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 1)
    {
      g();
      super.onBackPressed();
    }
  }
  
  private void b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(l, YikYakDialog.class);
    localIntent.putExtra("title", paramString1);
    localIntent.putExtra("message", paramString2);
    localIntent.putExtra("okText", "OK");
    localIntent.putExtra("okOnly", "true");
    startActivity(localIntent);
  }
  
  private void b(boolean paramBoolean)
  {
    w = ((MultipleStateIconView)findViewById(2131558558));
    if (paramBoolean)
    {
      w.setVisibility(0);
      u.setLinksEnabled(true);
      return;
    }
    w.setVisibility(8);
    u.setLinksEnabled(false);
    u.setLinkTextColor(-16777216);
  }
  
  private void c()
  {
    if ((AD.a().g() == null) || (!AD.a().d()))
    {
      Intent localIntent = new Intent(l, YikYakDialog.class);
      localIntent.putExtra("title", "Location Services");
      localIntent.putExtra("message", "Location services must be enabled to post and read local Yaks. Would you like to enable it now?");
      localIntent.putExtra("okText", "YES");
      localIntent.putExtra("cancelText", "NO");
      startActivityForResult(localIntent, 5002);
    }
  }
  
  private void c(String paramString)
  {
    Object localObject = AJ.a().a("images", "s3Url", AJ.a().j());
    localObject = (String)localObject + "?s3_object_name=" + paramString;
    localObject = new xF().a((String)localObject).b();
    t();
    Aj.a(true).a((xD)localObject).a(new Ch(this, paramString));
  }
  
  private void d()
  {
    if (h) {
      Toast.makeText(getApplicationContext(), "We are currently processing your link.", 1).show();
    }
    if (g) {
      Toast.makeText(getApplicationContext(), "We are currently processing your image.", 1).show();
    }
    do
    {
      return;
      if (w.a() == FQ.a)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setTitle("Invalid Link Input").setPositiveButton("Ok", null);
        int i1;
        if (u.b()) {
          i1 = 2131230998;
        }
        for (;;)
        {
          localBuilder.setMessage(i1);
          localBuilder.show();
          return;
          i1 = 2131230997;
          localBuilder.setNeutralButton("Sites", new Cc(this));
        }
      }
    } while (e);
    if ((z.getText().equals("200")) || (z.getText().equals("")) || (u.getText().toString().trim().length() == 0))
    {
      Toast.makeText(getApplicationContext(), "You have not entered a Yak yet", 1).show();
      return;
    }
    a(s.getText().toString(), u.getText().toString());
  }
  
  private void e()
  {
    b();
    new Handler().postDelayed(new Cg(this), 500L);
  }
  
  private void f()
  {
    startActivityForResult(new Intent(this, WebsiteWhiteListActivity.class), 100);
  }
  
  private void g()
  {
    if (Hi.a(q)) {}
    Object localObject1;
    Object localObject2;
    do
    {
      return;
      if (i)
      {
        localObject1 = q;
        q = null;
        new File((String)localObject1).delete();
        return;
      }
      localObject1 = new SimpleDateFormat("yyyyMMdd_hhmmss");
      localObject2 = ((SimpleDateFormat)localObject1).format(new Date()) + ".jpg";
      localObject1 = new File(q);
      localObject2 = new File(Hi.a(), (String)localObject2);
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
    Intent localIntent = new Intent(l, YikYakDialog.class);
    localIntent.putExtra("title", "Remove Image?");
    localIntent.putExtra("message", "Are you sure you want to remove this image?");
    localIntent.putExtra("okText", "YES");
    localIntent.putExtra("cancelText", "NO");
    startActivityForResult(localIntent, 2005);
  }
  
  private void i()
  {
    w.setIconState(FQ.b);
    u.setLinkTextColor(-16776961);
    m();
  }
  
  private void j()
  {
    w.setIconState(FQ.a);
    u.setLinkTextColor(-65536);
    a("This link is not valid.", wC.c, "View Sites", new Cj(this));
  }
  
  private void k()
  {
    h = true;
    new ValidateUrlRequest(u.getText().toString()).execute(this, new Ck(this));
  }
  
  private void l()
  {
    y.setVisibility(8);
  }
  
  private void m() {}
  
  private void n()
  {
    y.setVisibility(0);
  }
  
  private void o()
  {
    g = true;
    x.setVisibility(0);
  }
  
  private void p()
  {
    g = false;
    x.setVisibility(8);
  }
  
  private void q()
  {
    u = ((LinkDetectingEditText)findViewById(2131558549));
    if (c.containsKey("content"))
    {
      u.clearFocus();
      a(c);
    }
    if (d)
    {
      PeekLocation localPeekLocation = AO.a().c(k);
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
    if (j)
    {
      a(AJ.a().a("bcPhotosEnabled", false));
      b(AJ.a().a("bcLinksEnabled", false));
      return;
    }
    a(AJ.a().a("photosEnabled", false));
    b(AJ.a().a("linksEnabled", false));
  }
  
  private void r()
  {
    w.setOnClickListener(new BX(this));
    if (AJ.a().a("linksEnabled", false)) {
      u.setOnLinkAddedOrEditedListener(B);
    }
    u.addTextChangedListener(new BY(this));
  }
  
  private void s()
  {
    new GetWhiteListOfSitesRequest().execute(this, new BZ(this));
  }
  
  private void t()
  {
    w.setDisabled(true);
    u.setOnLinkAddedOrEditedListener(null);
    u.setLinksEnabled(false);
  }
  
  private void u()
  {
    w.setDisabled(false);
    u.setOnLinkAddedOrEditedListener(B);
    u.setLinksEnabled(true);
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
    switch (paramInt1)
    {
    default: 
    case 1241: 
    case 100: 
    case 7007: 
    case 2005: 
      do
      {
        do
        {
          do
          {
            return;
          } while (paramInt2 != -1);
          d();
          return;
          a(u);
        } while ((paramIntent == null) || (paramIntent.getExtras() == null) || (!paramIntent.getExtras().containsKey("url")));
        u.setText(paramIntent.getStringExtra("url"));
        return;
        b(paramInt2);
        return;
        a(u);
      } while (paramInt2 != 1);
      g();
      p = null;
      q = null;
      u();
      v.setIconState(FQ.c);
      l();
      return;
    case 5002: 
      if (paramInt2 == 1)
      {
        startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 5000);
        return;
      }
      setResult(0);
      finish();
      return;
    case 5000: 
      c();
      return;
    case 7004: 
      if (paramInt2 == 1)
      {
        Aa.b(2);
        e = true;
        a(paramIntent.getStringExtra("value"), 1, d);
        Ha.a().a("Yak", j, Boolean.valueOf(true));
        return;
      }
      Ha.a().a("Yak", j, Boolean.valueOf(false));
      a(u);
      return;
    }
    if (paramInt2 == -1)
    {
      l();
      o();
      File localFile;
      if (paramIntent != null) {
        try
        {
          i = true;
          paramIntent = a(paramIntent.getData());
          localFile = Hi.b(paramIntent, q);
          if (localFile == null)
          {
            Toast.makeText(l, "Failed to upload " + paramIntent, 0).show();
            return;
          }
        }
        catch (Exception paramIntent) {}
      }
      for (;;)
      {
        new Handler().postDelayed(new Ca(this), 500L);
        return;
        q = localFile.getAbsolutePath();
        continue;
        i = false;
      }
    }
    p = null;
    i = false;
    g();
    a(u);
  }
  
  public void onBackPressed()
  {
    if (!a())
    {
      Intent localIntent = new Intent(l, YikYakDialog.class);
      localIntent.putExtra("title", getString(2131231059));
      localIntent.putExtra("message", getString(2131231058));
      localIntent.putExtra("okText", getString(2131231154));
      localIntent.putExtra("cancelText", getString(2131231026));
      startActivityForResult(localIntent, 7007);
      return;
    }
    g();
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903076);
    String str = "Send a Yak";
    l = this;
    r = AD.a();
    if (paramBundle == null) {}
    for (c = getIntent().getExtras();; c = paramBundle)
    {
      if (c == null) {
        c = new Bundle();
      }
      k = c.getString("peekID", "-1");
      d = c.getBoolean("isPeek", false);
      j = c.getBoolean("isBasecamp", false);
      Ha.a().e(j);
      if ((!c.containsKey("canSubmit")) || (c.getBoolean("canSubmit"))) {
        break;
      }
      Toast.makeText(l, "Cannot post Yak to this Peek.", 0).show();
      setResult(2003);
      finish();
      return;
    }
    paramBundle = str;
    if (c.containsKey("title")) {
      paramBundle = c.getString("title");
    }
    a("Post a Yak");
    if (!paramBundle.equals("Home")) {
      a.setSubtitle(paramBundle);
    }
    findViewById(2131558563).setOnClickListener(new BS(this));
    x = ((ProgressBar)findViewById(2131558554));
    s = ((EditText)findViewById(2131558551));
    s.setText(Aa.i());
    s.setOnFocusChangeListener(new BT(this));
    t = ((ImageView)findViewById(2131558560));
    t.setOnClickListener(new BU(this));
    z = ((TextView)findViewById(2131558559));
    z.setGravity(17);
    z.setText("200");
    y = ((RelativeLayout)findViewById(2131558552));
    y.setOnClickListener(new BV(this));
    c();
    q();
    r();
    s();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    u.setText(paramBundle.getString("STATE_KEY_YAK"));
    s.setText(paramBundle.getString("STATE_KEY_HANDLE"));
  }
  
  protected void onResume()
  {
    super.onResume();
    A = System.currentTimeMillis();
    if (AJ.a().a("linksEnabled", false))
    {
      if (!u.getText().toString().isEmpty())
      {
        n.removeCallbacks(o);
        n.postDelayed(o, 500L);
      }
      return;
    }
    u.setLinkTextColor(-16777216);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putAll(c);
    paramBundle.putString("STATE_KEY_YAK", u.getText().toString());
    paramBundle.putString("STATE_KEY_HANDLE", s.getText().toString());
  }
  
  public void onStart()
  {
    super.onStart();
    Ha.a().a("SendScreen");
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.SendAYak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */