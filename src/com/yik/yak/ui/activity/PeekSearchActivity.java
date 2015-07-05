package com.yik.yak.ui.activity;

import AB;
import Aq;
import Aw;
import Bi;
import Bj;
import Bk;
import Bl;
import Bm;
import Bn;
import Bq;
import CQ;
import CS;
import Db;
import GB;
import Gs;
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
import com.yik.yak.ui.view.DividerItemDecoration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import kE;
import kj;
import kk;
import kl;
import wP;
import xo;
import xv;
import zQ;
import zY;

public class PeekSearchActivity
  extends BaseAppCompatActivity
  implements CS
{
  private Context b = null;
  private kl c;
  private ArrayList<Yak> d;
  private YakRecyclerViewAdapter e;
  private LinearLayoutManager f;
  private RecyclerView g;
  private YakkerLocation h;
  private boolean i = true;
  private boolean j = false;
  private AutoCompleteTextView k = null;
  private Bq l = null;
  private float m = 10.0F;
  private boolean n = false;
  private TextView o;
  
  /* Error */
  private ArrayList<String> b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 41	com/yik/yak/ui/activity/PeekSearchActivity:i	Z
    //   13: ifeq +11 -> 24
    //   16: aload_1
    //   17: invokevirtual 81	java/lang/String:length	()I
    //   20: iconst_3
    //   21: if_icmpge +13 -> 34
    //   24: new 83	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 84	java/util/ArrayList:<init>	()V
    //   31: astore_1
    //   32: aload_1
    //   33: areturn
    //   34: new 86	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   41: astore 7
    //   43: aload 6
    //   45: astore_3
    //   46: new 89	java/util/TreeMap
    //   49: dup
    //   50: invokespecial 90	java/util/TreeMap:<init>	()V
    //   53: astore 8
    //   55: aload 6
    //   57: astore_3
    //   58: aload 8
    //   60: ldc 92
    //   62: aload_1
    //   63: invokevirtual 96	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   66: pop
    //   67: aload 6
    //   69: astore_3
    //   70: aload 8
    //   72: ldc 98
    //   74: ldc 100
    //   76: invokevirtual 96	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   79: pop
    //   80: aload 6
    //   82: astore_3
    //   83: new 102	java/net/URL
    //   86: dup
    //   87: ldc 104
    //   89: aload 8
    //   91: aconst_null
    //   92: invokestatic 109	zY:a	(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    //   95: invokespecial 112	java/net/URL:<init>	(Ljava/lang/String;)V
    //   98: invokevirtual 116	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   101: checkcast 118	java/net/HttpURLConnection
    //   104: astore_1
    //   105: new 120	java/io/InputStreamReader
    //   108: dup
    //   109: aload_1
    //   110: invokevirtual 124	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   113: invokespecial 127	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   116: astore_3
    //   117: sipush 1024
    //   120: newarray <illegal type>
    //   122: astore 4
    //   124: aload_3
    //   125: aload 4
    //   127: invokevirtual 131	java/io/InputStreamReader:read	([C)I
    //   130: istore_2
    //   131: iload_2
    //   132: iconst_m1
    //   133: if_icmpeq +48 -> 181
    //   136: aload 7
    //   138: aload 4
    //   140: iconst_0
    //   141: iload_2
    //   142: invokevirtual 135	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: goto -22 -> 124
    //   149: astore_3
    //   150: aload_1
    //   151: astore 4
    //   153: aload 4
    //   155: astore_3
    //   156: new 83	java/util/ArrayList
    //   159: dup
    //   160: invokespecial 84	java/util/ArrayList:<init>	()V
    //   163: astore 5
    //   165: aload 5
    //   167: astore_1
    //   168: aload 4
    //   170: ifnull -138 -> 32
    //   173: aload 4
    //   175: invokevirtual 138	java/net/HttpURLConnection:disconnect	()V
    //   178: aload 5
    //   180: areturn
    //   181: aload_1
    //   182: ifnull +7 -> 189
    //   185: aload_1
    //   186: invokevirtual 138	java/net/HttpURLConnection:disconnect	()V
    //   189: new 140	org/json/JSONObject
    //   192: dup
    //   193: aload 7
    //   195: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokespecial 145	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   201: ldc -109
    //   203: invokevirtual 151	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   206: astore 4
    //   208: new 83	java/util/ArrayList
    //   211: dup
    //   212: aload 4
    //   214: invokevirtual 154	org/json/JSONArray:length	()I
    //   217: invokespecial 157	java/util/ArrayList:<init>	(I)V
    //   220: astore_3
    //   221: iconst_0
    //   222: istore_2
    //   223: aload_3
    //   224: astore_1
    //   225: iload_2
    //   226: aload 4
    //   228: invokevirtual 154	org/json/JSONArray:length	()I
    //   231: if_icmpge -199 -> 32
    //   234: aload_3
    //   235: aload 4
    //   237: iload_2
    //   238: invokevirtual 161	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   241: ldc -93
    //   243: invokevirtual 167	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   246: invokevirtual 171	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   249: pop
    //   250: iload_2
    //   251: iconst_1
    //   252: iadd
    //   253: istore_2
    //   254: goto -31 -> 223
    //   257: astore_1
    //   258: aload 5
    //   260: astore 4
    //   262: aload 4
    //   264: astore_3
    //   265: new 83	java/util/ArrayList
    //   268: dup
    //   269: invokespecial 84	java/util/ArrayList:<init>	()V
    //   272: astore 5
    //   274: aload 5
    //   276: astore_1
    //   277: aload 4
    //   279: ifnull -247 -> 32
    //   282: aload 4
    //   284: invokevirtual 138	java/net/HttpURLConnection:disconnect	()V
    //   287: aload 5
    //   289: areturn
    //   290: astore 4
    //   292: aload_3
    //   293: astore_1
    //   294: aload 4
    //   296: astore_3
    //   297: aload_1
    //   298: ifnull +7 -> 305
    //   301: aload_1
    //   302: invokevirtual 138	java/net/HttpURLConnection:disconnect	()V
    //   305: aload_3
    //   306: athrow
    //   307: astore_1
    //   308: aconst_null
    //   309: areturn
    //   310: astore_1
    //   311: aload_3
    //   312: areturn
    //   313: astore_3
    //   314: goto -17 -> 297
    //   317: astore_3
    //   318: aload_1
    //   319: astore 4
    //   321: goto -59 -> 262
    //   324: astore_1
    //   325: goto -172 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	328	0	this	PeekSearchActivity
    //   0	328	1	paramString	String
    //   130	124	2	i1	int
    //   45	80	3	localObject1	Object
    //   149	1	3	localMalformedURLException	java.net.MalformedURLException
    //   155	157	3	localObject2	Object
    //   313	1	3	localObject3	Object
    //   317	1	3	localIOException	IOException
    //   7	276	4	localObject4	Object
    //   290	5	4	localObject5	Object
    //   319	1	4	str	String
    //   1	287	5	localArrayList	ArrayList
    //   4	77	6	localObject6	Object
    //   41	153	7	localStringBuilder	StringBuilder
    //   53	37	8	localTreeMap	TreeMap
    // Exception table:
    //   from	to	target	type
    //   105	124	149	java/net/MalformedURLException
    //   124	131	149	java/net/MalformedURLException
    //   136	146	149	java/net/MalformedURLException
    //   46	55	257	java/io/IOException
    //   58	67	257	java/io/IOException
    //   70	80	257	java/io/IOException
    //   83	105	257	java/io/IOException
    //   46	55	290	finally
    //   58	67	290	finally
    //   70	80	290	finally
    //   83	105	290	finally
    //   156	165	290	finally
    //   265	274	290	finally
    //   189	221	307	org/json/JSONException
    //   225	250	310	org/json/JSONException
    //   105	124	313	finally
    //   124	131	313	finally
    //   136	146	313	finally
    //   105	124	317	java/io/IOException
    //   124	131	317	java/io/IOException
    //   136	146	317	java/io/IOException
    //   46	55	324	java/net/MalformedURLException
    //   58	67	324	java/net/MalformedURLException
    //   70	80	324	java/net/MalformedURLException
    //   83	105	324	java/net/MalformedURLException
  }
  
  private String c(YakkerLocation paramYakkerLocation)
  {
    if (!Geocoder.isPresent()) {
      return "Location name could not be found.";
    }
    i = false;
    str2 = "";
    for (;;)
    {
      try
      {
        localObject1 = new Geocoder(b, Locale.getDefault());
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
          k.setText((CharSequence)localObject2);
          k.setSelection(k.getText().length());
          i = true;
          return (String)localObject2;
        }
        catch (Exception localException2)
        {
          continue;
        }
        localIOException = localIOException;
        if (!n)
        {
          Toast.makeText(b, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone.", 1).show();
          n = true;
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
  
  private void d()
  {
    e = new YakRecyclerViewAdapter(b, d);
    e.setOnItemClickListener(this);
    g.setAdapter(e);
  }
  
  private void e()
  {
    Object localObject2 = "";
    Object localObject1 = localObject2;
    if (k.getText() != null)
    {
      localObject1 = localObject2;
      if (k.getText().length() != 0) {
        localObject1 = k.getText().toString();
      }
    }
    localObject2 = new Intent(b, YikYakDialog.class);
    ((Intent)localObject2).putExtra("title", "Save Peek Location");
    ((Intent)localObject2).putExtra("message", "Save the current location to your peeks.");
    ((Intent)localObject2).putExtra("editText", localObject1.split("\\,")[0]);
    ((Intent)localObject2).putExtra("okText", "Yes");
    ((Intent)localObject2).putExtra("cancelText", "No");
    startActivityForResult((Intent)localObject2, 1001);
  }
  
  public void a()
  {
    findViewById(2131558531).setVisibility(8);
    g.setVisibility(8);
    View localView = findViewById(2131558530);
    localView.setVisibility(0);
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setDuration(1000L);
    localView.startAnimation(localRotateAnimation);
  }
  
  public void a(Db<?> paramDb, CQ paramCQ, int paramInt)
  {
    Toast.makeText(b, "This is just a preview. Save this location to view the entire feed.", 0).show();
  }
  
  public void a(YakkerLocation paramYakkerLocation)
  {
    try
    {
      c.c();
      c.d().a(true);
      c.a(new MarkerOptions().a(new LatLng(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude())));
      kj localkj = kk.a(new LatLng(paramYakkerLocation.getLatitude(), paramYakkerLocation.getLongitude()), m);
      c.a(localkj);
      b(paramYakkerLocation);
      return;
    }
    catch (Exception paramYakkerLocation) {}
  }
  
  public void b(YakkerLocation paramYakkerLocation)
  {
    Object localObject = Aq.a(b);
    a();
    localObject = ((Aq)localObject).f();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", zQ.c());
    localTreeMap.put("lat", paramYakkerLocation.a());
    localTreeMap.put("long", paramYakkerLocation.b());
    paramYakkerLocation = zY.a("yaks", localTreeMap, (YakkerLocation)localObject);
    d = new ArrayList();
    paramYakkerLocation = new xv().a(paramYakkerLocation).b();
    zY.a(true).a(paramYakkerLocation).a(new Bn(this));
  }
  
  public void c()
  {
    int i2 = 0;
    Object localObject = findViewById(2131558530);
    ((View)localObject).setAnimation(null);
    ((View)localObject).setVisibility(8);
    localObject = g;
    if (d.size() == 0)
    {
      i1 = 8;
      ((RecyclerView)localObject).setVisibility(i1);
      localObject = findViewById(2131558531);
      if (d.size() != 0) {
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
        Toast.makeText(b, "Save failed", 0).show();
        return;
      }
      paramIntent = paramIntent.getStringExtra("result");
    } while (GB.a(paramIntent));
    h.setProvider(paramIntent);
    paramIntent = AB.a().a(h);
    Intent localIntent = new Intent();
    localIntent.putExtra("peekID", paramIntent);
    AB.a().f();
    setResult(1, localIntent);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    a("Peek Anywhere");
    o = ((TextView)findViewById(2131558834));
    o.setText(getString(2131231041));
    o.setOnClickListener(new Bi(this));
    b = this;
    c = ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131558525)).b();
    h = Aq.a(b).f();
    c.a(new Bj(this));
    j = Aw.a().a("peekSearch", "enableAutocomplete", false);
    paramBundle = getResources().getDrawable(2130837529);
    l = new Bq(this, b, 2130903138, j);
    k = ((AutoCompleteTextView)findViewById(2131558527));
    k.setAdapter(l);
    k.setCompoundDrawablesWithIntrinsicBounds(null, null, paramBundle, null);
    k.setOnKeyListener(new Bk(this));
    k.setOnItemClickListener(new Bl(this));
    k.setOnTouchListener(new Bm(this, paramBundle));
    d = new ArrayList();
    f = new LinearLayoutManager(this);
    g = ((RecyclerView)findViewById(2131558532));
    g.setLayoutManager(f);
    g.addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    a(h);
  }
  
  public void onStart()
  {
    super.onStart();
    Gs.a().a("PeekSearch");
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PeekSearchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */