package com.yik.yak.ui.activity;

import AD;
import AJ;
import AO;
import Aa;
import Aj;
import BA;
import Bs;
import Bt;
import Bu;
import Bv;
import Bw;
import Bx;
import Dd;
import Df;
import Dp;
import Ha;
import Hi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.adapter.YakRecyclerViewAdapter;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.DividerItemDecoration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import kH;
import kg;
import kh;
import ki;
import wY;
import xF;
import xy;

public class PeekSearchActivity
  extends BaseAppCompatActivity
  implements Df
{
  private Context c = null;
  private ki d;
  private ArrayList<Yak> e;
  private YakRecyclerViewAdapter f;
  private LinearLayoutManager g;
  private RecyclerView h;
  private YakkerLocation i;
  private boolean j = true;
  private boolean k = false;
  private AutoCompleteTextView l = null;
  private BA m = null;
  private float n = 10.0F;
  private boolean o = false;
  private TextView p;
  
  private String c(YakkerLocation paramYakkerLocation)
  {
    if (!Geocoder.isPresent()) {
      return "Location name could not be found.";
    }
    j = false;
    str2 = "";
    for (;;)
    {
      try
      {
        localObject1 = new Geocoder(c, Locale.getDefault());
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject2;
        int i1;
        int i2;
        Address localAddress;
        String str1 = str2;
        continue;
        continue;
      }
      try
      {
        localObject2 = ((Geocoder)localObject1).getFromLocation(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude(), 1);
        if (localObject2 != null)
        {
          i1 = 1;
          if (((List)localObject2).size() <= 0) {
            continue;
          }
          i2 = 1;
          localObject1 = str2;
          if ((i2 & i1) == 0) {
            continue;
          }
          localAddress = (Address)((List)localObject2).get(0);
          localObject2 = localAddress.getLocality();
          localObject1 = localObject2;
          if (localObject2 != null) {
            continue;
          }
          localObject1 = localObject2;
        }
      }
      catch (IOException localIOException)
      {
        try
        {
          localObject2 = localAddress.getSubAdminArea();
          localObject1 = localObject2;
          if (localObject2 != null) {
            continue;
          }
          localObject1 = localObject2;
          localObject2 = localAddress.getAdminArea();
          localObject1 = localObject2;
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = "Lat: " + paramYakkerLocation.getLatitude() + " Long: " + paramYakkerLocation.getLongitude();
          }
          l.setText((CharSequence)localObject2);
          l.setSelection(l.getText().length());
          j = true;
          return (String)localObject2;
        }
        catch (Exception localException2)
        {
          continue;
        }
        localIOException = localIOException;
        if (!o)
        {
          Toast.makeText(c, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone.", 1).show();
          o = true;
        }
        localIOException.printStackTrace();
        localObject2 = null;
        continue;
        i1 = 0;
        continue;
        i2 = 0;
      }
    }
  }
  
  /* Error */
  private ArrayList<String> c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 41	com/yik/yak/ui/activity/PeekSearchActivity:j	Z
    //   13: ifeq +11 -> 24
    //   16: aload_1
    //   17: invokevirtual 189	java/lang/String:length	()I
    //   20: iconst_3
    //   21: if_icmpge +13 -> 34
    //   24: new 191	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 192	java/util/ArrayList:<init>	()V
    //   31: astore_1
    //   32: aload_1
    //   33: areturn
    //   34: new 134	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 135	java/lang/StringBuilder:<init>	()V
    //   41: astore 7
    //   43: aload 6
    //   45: astore_3
    //   46: new 194	java/util/TreeMap
    //   49: dup
    //   50: invokespecial 195	java/util/TreeMap:<init>	()V
    //   53: astore 8
    //   55: aload 6
    //   57: astore_3
    //   58: aload 8
    //   60: ldc -59
    //   62: aload_1
    //   63: invokevirtual 201	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   66: pop
    //   67: aload 6
    //   69: astore_3
    //   70: aload 8
    //   72: ldc -53
    //   74: ldc -51
    //   76: invokevirtual 201	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   79: pop
    //   80: aload 6
    //   82: astore_3
    //   83: new 207	java/net/URL
    //   86: dup
    //   87: ldc -47
    //   89: aload 8
    //   91: aconst_null
    //   92: invokestatic 214	Aj:a	(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    //   95: invokespecial 217	java/net/URL:<init>	(Ljava/lang/String;)V
    //   98: invokevirtual 221	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   101: checkcast 223	java/net/HttpURLConnection
    //   104: astore_1
    //   105: new 225	java/io/InputStreamReader
    //   108: dup
    //   109: aload_1
    //   110: invokevirtual 229	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   113: invokespecial 232	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   116: astore_3
    //   117: sipush 1024
    //   120: newarray <illegal type>
    //   122: astore 4
    //   124: aload_3
    //   125: aload 4
    //   127: invokevirtual 236	java/io/InputStreamReader:read	([C)I
    //   130: istore_2
    //   131: iload_2
    //   132: iconst_m1
    //   133: if_icmpeq +48 -> 181
    //   136: aload 7
    //   138: aload 4
    //   140: iconst_0
    //   141: iload_2
    //   142: invokevirtual 239	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: goto -22 -> 124
    //   149: astore_3
    //   150: aload_1
    //   151: astore 4
    //   153: aload 4
    //   155: astore_3
    //   156: new 191	java/util/ArrayList
    //   159: dup
    //   160: invokespecial 192	java/util/ArrayList:<init>	()V
    //   163: astore 5
    //   165: aload 5
    //   167: astore_1
    //   168: aload 4
    //   170: ifnull -138 -> 32
    //   173: aload 4
    //   175: invokevirtual 242	java/net/HttpURLConnection:disconnect	()V
    //   178: aload 5
    //   180: areturn
    //   181: aload_1
    //   182: ifnull +7 -> 189
    //   185: aload_1
    //   186: invokevirtual 242	java/net/HttpURLConnection:disconnect	()V
    //   189: new 244	org/json/JSONObject
    //   192: dup
    //   193: aload 7
    //   195: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokespecial 245	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   201: ldc -9
    //   203: invokevirtual 251	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   206: astore 4
    //   208: new 191	java/util/ArrayList
    //   211: dup
    //   212: aload 4
    //   214: invokevirtual 254	org/json/JSONArray:length	()I
    //   217: invokespecial 256	java/util/ArrayList:<init>	(I)V
    //   220: astore_3
    //   221: iconst_0
    //   222: istore_2
    //   223: aload_3
    //   224: astore_1
    //   225: iload_2
    //   226: aload 4
    //   228: invokevirtual 254	org/json/JSONArray:length	()I
    //   231: if_icmpge -199 -> 32
    //   234: aload_3
    //   235: aload 4
    //   237: iload_2
    //   238: invokevirtual 260	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   241: ldc_w 262
    //   244: invokevirtual 266	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   247: invokevirtual 270	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   250: pop
    //   251: iload_2
    //   252: iconst_1
    //   253: iadd
    //   254: istore_2
    //   255: goto -32 -> 223
    //   258: astore_1
    //   259: aload 5
    //   261: astore 4
    //   263: aload 4
    //   265: astore_3
    //   266: new 191	java/util/ArrayList
    //   269: dup
    //   270: invokespecial 192	java/util/ArrayList:<init>	()V
    //   273: astore 5
    //   275: aload 5
    //   277: astore_1
    //   278: aload 4
    //   280: ifnull -248 -> 32
    //   283: aload 4
    //   285: invokevirtual 242	java/net/HttpURLConnection:disconnect	()V
    //   288: aload 5
    //   290: areturn
    //   291: astore 4
    //   293: aload_3
    //   294: astore_1
    //   295: aload 4
    //   297: astore_3
    //   298: aload_1
    //   299: ifnull +7 -> 306
    //   302: aload_1
    //   303: invokevirtual 242	java/net/HttpURLConnection:disconnect	()V
    //   306: aload_3
    //   307: athrow
    //   308: astore_1
    //   309: aconst_null
    //   310: areturn
    //   311: astore_1
    //   312: aload_3
    //   313: areturn
    //   314: astore_3
    //   315: goto -17 -> 298
    //   318: astore_3
    //   319: aload_1
    //   320: astore 4
    //   322: goto -59 -> 263
    //   325: astore_1
    //   326: goto -173 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	329	0	this	PeekSearchActivity
    //   0	329	1	paramString	String
    //   130	125	2	i1	int
    //   45	80	3	localObject1	Object
    //   149	1	3	localMalformedURLException	java.net.MalformedURLException
    //   155	158	3	localObject2	Object
    //   314	1	3	localObject3	Object
    //   318	1	3	localIOException	IOException
    //   7	277	4	localObject4	Object
    //   291	5	4	localObject5	Object
    //   320	1	4	str	String
    //   1	288	5	localArrayList	ArrayList
    //   4	77	6	localObject6	Object
    //   41	153	7	localStringBuilder	StringBuilder
    //   53	37	8	localTreeMap	TreeMap
    // Exception table:
    //   from	to	target	type
    //   105	124	149	java/net/MalformedURLException
    //   124	131	149	java/net/MalformedURLException
    //   136	146	149	java/net/MalformedURLException
    //   46	55	258	java/io/IOException
    //   58	67	258	java/io/IOException
    //   70	80	258	java/io/IOException
    //   83	105	258	java/io/IOException
    //   46	55	291	finally
    //   58	67	291	finally
    //   70	80	291	finally
    //   83	105	291	finally
    //   156	165	291	finally
    //   266	275	291	finally
    //   189	221	308	org/json/JSONException
    //   225	251	311	org/json/JSONException
    //   105	124	314	finally
    //   124	131	314	finally
    //   136	146	314	finally
    //   105	124	318	java/io/IOException
    //   124	131	318	java/io/IOException
    //   136	146	318	java/io/IOException
    //   46	55	325	java/net/MalformedURLException
    //   58	67	325	java/net/MalformedURLException
    //   70	80	325	java/net/MalformedURLException
    //   83	105	325	java/net/MalformedURLException
  }
  
  private void d()
  {
    f = new YakRecyclerViewAdapter(c, e);
    f.setOnItemClickListener(this);
    h.setAdapter(f);
  }
  
  private void e()
  {
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (l.getText() != null)
    {
      localObject1 = localObject2;
      if (l.getText().length() != 0) {
        localObject1 = l.getText().toString();
      }
    }
    localObject2 = new Intent(c, YikYakDialog.class);
    ((Intent)localObject2).putExtra("title", "Save Peek Location");
    ((Intent)localObject2).putExtra("message", "Save the current location to your peeks.");
    ((Intent)localObject2).putExtra("editText", localObject1.split("\\,")[0]);
    ((Intent)localObject2).putExtra("okText", "Yes");
    ((Intent)localObject2).putExtra("cancelText", "No");
    startActivityForResult((Intent)localObject2, 1001);
  }
  
  public void a()
  {
    findViewById(2131558532).setVisibility(8);
    h.setVisibility(8);
    View localView = findViewById(2131558531);
    localView.setVisibility(0);
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setDuration(1000L);
    localView.startAnimation(localRotateAnimation);
  }
  
  public void a(Dp<?> paramDp, Dd paramDd, int paramInt)
  {
    Toast.makeText(c, "This is just a preview. Save this location to view the entire feed.", 0).show();
  }
  
  public void a(YakkerLocation paramYakkerLocation)
  {
    try
    {
      d.c();
      d.d().a(true);
      d.a(new MarkerOptions().a(new LatLng(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude())));
      kg localkg = kh.a(new LatLng(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude()), n);
      d.a(localkg);
      b(paramYakkerLocation);
      return;
    }
    catch (Exception paramYakkerLocation) {}
  }
  
  public void b(YakkerLocation paramYakkerLocation)
  {
    Object localObject = AD.a();
    a();
    localObject = ((AD)localObject).g();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("lat", paramYakkerLocation.a());
    localTreeMap.put("long", paramYakkerLocation.b());
    paramYakkerLocation = Aj.a("yaks", localTreeMap, (YakkerLocation)localObject);
    e = new ArrayList();
    paramYakkerLocation = new xF().a(paramYakkerLocation).b();
    Aj.a(true).a(paramYakkerLocation).a(new Bx(this));
  }
  
  public void c()
  {
    int i2 = 0;
    Object localObject = findViewById(2131558531);
    ((View)localObject).setAnimation(null);
    ((View)localObject).setVisibility(8);
    localObject = h;
    if (e.size() == 0)
    {
      i1 = 8;
      ((RecyclerView)localObject).setVisibility(i1);
      localObject = findViewById(2131558532);
      if (e.size() != 0) {
        break label75;
      }
    }
    label75:
    for (int i1 = i2;; i1 = 8)
    {
      ((View)localObject).setVisibility(i1);
      return;
      i1 = 0;
      break;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    new StringBuilder().append(getClass().getName()).append(".onActivityResult").toString();
    new StringBuilder().append(paramInt1).append(" ").append(paramInt2).toString();
    switch (paramInt1)
    {
    }
    do
    {
      return;
      switch (paramInt2)
      {
      default: 
        return;
      }
      if (paramIntent == null)
      {
        Toast.makeText(c, "Save failed", 0).show();
        return;
      }
      paramIntent = paramIntent.getStringExtra("result");
    } while (Hi.a(paramIntent));
    i.setProvider(paramIntent);
    paramIntent = AO.a().a(i);
    Intent localIntent = new Intent();
    localIntent.putExtra("peekID", paramIntent);
    AO.a().f();
    setResult(1, localIntent);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    a("Peek Anywhere");
    p = ((TextView)findViewById(2131558563));
    p.setText(getString(2131231081));
    p.setOnClickListener(new Bs(this));
    c = this;
    d = ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131558526)).b();
    i = AD.a().g();
    d.a(new Bt(this));
    k = AJ.a().a("peekSearch", "enableAutocomplete", false);
    paramBundle = getResources().getDrawable(2130837529);
    m = new BA(this, c, 2130903146, k);
    l = ((AutoCompleteTextView)findViewById(2131558528));
    l.setAdapter(m);
    l.setCompoundDrawablesWithIntrinsicBounds(null, null, paramBundle, null);
    l.setOnKeyListener(new Bu(this));
    l.setOnItemClickListener(new Bv(this));
    l.setOnTouchListener(new Bw(this, paramBundle));
    e = new ArrayList();
    g = new LinearLayoutManager(this);
    h = ((RecyclerView)findViewById(2131558533));
    h.setLayoutManager(g);
    h.addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    a(i);
  }
  
  public void onStart()
  {
    super.onStart();
    Ha.a().a("PeekSearch");
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PeekSearchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */