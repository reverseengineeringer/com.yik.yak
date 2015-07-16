package com.yik.yak.ui.fragment;

import AD;
import Aa;
import Av;
import Dd;
import Df;
import Dp;
import EE;
import EF;
import EG;
import EH;
import EI;
import EJ;
import EK;
import EL;
import EM;
import Ha;
import Hi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.activity.SendAYak;
import com.yik.yak.ui.adapter.YakRecyclerViewAdapter;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DraftsFragment
  extends BaseFragment
  implements Df
{
  protected boolean c = false;
  public RelativeLayout d;
  protected TranslateAnimation e;
  protected TranslateAnimation f;
  private View g;
  private Context h;
  private JSONObject i;
  private TextView j;
  private EditText k;
  private ImageView l;
  private EditText m;
  private AD n = null;
  private boolean o = false;
  private int p;
  private Yak q;
  private ArrayList<Yak> r;
  private YakRecyclerViewAdapter s;
  private LinearLayoutManager t;
  private RecyclerView u;
  private Animation.AnimationListener v = new EE(this);
  private Comparator<Yak> w = new EF(this);
  
  private void a()
  {
    d = ((RelativeLayout)g.findViewById(2131558693));
    f = new TranslateAnimation(0.0F, 0.0F, 0.0F, Hi.a(134));
    f.setDuration(350L);
    f.setFillAfter(true);
    f.setAnimationListener(v);
    e = new TranslateAnimation(0.0F, 0.0F, Hi.a(134), 0.0F);
    e.setDuration(350L);
    e.setFillAfter(true);
    ((TextView)g.findViewById(2131558634)).setOnClickListener(new EJ(this));
    ((TextView)g.findViewById(2131558695)).setOnClickListener(new EK(this));
    ((TextView)g.findViewById(2131558696)).setOnClickListener(new EL(this));
    g.findViewById(2131558692).setOnClickListener(new EM(this));
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      Ha.a().n();
    }
    r.remove(paramInt);
    try
    {
      i = new JSONObject("{\"messages\": []}");
      Object localObject = new Av();
      Iterator localIterator = r.iterator();
      while (localIterator.hasNext())
      {
        Yak localYak = (Yak)localIterator.next();
        try
        {
          i.getJSONArray("messages").put(((Av)localObject).b(localYak));
        }
        catch (JSONException localJSONException2)
        {
          localJSONException2.printStackTrace();
        }
      }
      try
      {
        localObject = h.openFileOutput("drafts.json", 0);
        ((FileOutputStream)localObject).write(i.toString().getBytes());
        ((FileOutputStream)localObject).close();
        a(i);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
      return;
    }
    catch (JSONException localJSONException1) {}
  }
  
  private void a(TextView paramTextView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramTextView.setTypeface(paramTextView.getTypeface(), 0);
      paramTextView.setTextColor(getResources().getColor(2131427561));
      return;
    }
    paramTextView.setTypeface(paramTextView.getTypeface(), 2);
    paramTextView.setTextColor(getResources().getColor(2131427558));
  }
  
  private void a(Yak paramYak)
  {
    Intent localIntent = new Intent(h, SendAYak.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("content", Content);
    localIntent.putExtra("yakkerHandle", YakkerHandle);
    localIntent.putExtra("showHandle", ShowHandle);
    startActivityForResult(localIntent, 19);
  }
  
  private void b()
  {
    d.startAnimation(f);
    c = false;
  }
  
  private void c()
  {
    t = new LinearLayoutManager(h);
    s = new YakRecyclerViewAdapter(h, r);
    s.setOnItemClickListener(this);
    u.setAdapter(s);
  }
  
  private void d()
  {
    k.setText("");
  }
  
  /* Error */
  private JSONObject e()
  {
    // Byte code:
    //   0: new 367	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 368	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 205	com/yik/yak/ui/fragment/DraftsFragment:h	Landroid/content/Context;
    //   12: ldc -49
    //   14: invokevirtual 372	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   17: astore_2
    //   18: aload_2
    //   19: ifnull +41 -> 60
    //   22: new 374	java/io/BufferedReader
    //   25: dup
    //   26: new 376	java/io/InputStreamReader
    //   29: dup
    //   30: aload_2
    //   31: invokespecial 379	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   34: invokespecial 382	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   37: astore_3
    //   38: aload_3
    //   39: invokevirtual 385	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   42: astore 4
    //   44: aload 4
    //   46: ifnull +46 -> 92
    //   49: aload_1
    //   50: aload 4
    //   52: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: goto -18 -> 38
    //   59: astore_2
    //   60: aload_1
    //   61: ifnull +13 -> 74
    //   64: aload_1
    //   65: invokevirtual 390	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokevirtual 394	java/lang/String:length	()I
    //   71: ifne +32 -> 103
    //   74: aload_0
    //   75: new 158	org/json/JSONObject
    //   78: dup
    //   79: ldc -96
    //   81: invokespecial 163	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   84: putfield 165	com/yik/yak/ui/fragment/DraftsFragment:i	Lorg/json/JSONObject;
    //   87: aload_0
    //   88: getfield 165	com/yik/yak/ui/fragment/DraftsFragment:i	Lorg/json/JSONObject;
    //   91: areturn
    //   92: aload_2
    //   93: invokevirtual 397	java/io/InputStream:close	()V
    //   96: goto -36 -> 60
    //   99: astore_2
    //   100: goto -40 -> 60
    //   103: aload_0
    //   104: new 158	org/json/JSONObject
    //   107: dup
    //   108: aload_1
    //   109: invokevirtual 390	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokespecial 163	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   115: putfield 165	com/yik/yak/ui/fragment/DraftsFragment:i	Lorg/json/JSONObject;
    //   118: goto -31 -> 87
    //   121: astore_1
    //   122: aload_1
    //   123: invokevirtual 203	org/json/JSONException:printStackTrace	()V
    //   126: goto -39 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	DraftsFragment
    //   7	102	1	localStringBuilder	StringBuilder
    //   121	2	1	localJSONException	JSONException
    //   17	14	2	localFileInputStream	java.io.FileInputStream
    //   59	34	2	localFileNotFoundException	java.io.FileNotFoundException
    //   99	1	2	localIOException	java.io.IOException
    //   37	2	3	localBufferedReader	java.io.BufferedReader
    //   42	9	4	str	String
    // Exception table:
    //   from	to	target	type
    //   8	18	59	java/io/FileNotFoundException
    //   22	38	59	java/io/FileNotFoundException
    //   38	44	59	java/io/FileNotFoundException
    //   49	56	59	java/io/FileNotFoundException
    //   92	96	59	java/io/FileNotFoundException
    //   8	18	99	java/io/IOException
    //   22	38	99	java/io/IOException
    //   38	44	99	java/io/IOException
    //   49	56	99	java/io/IOException
    //   92	96	99	java/io/IOException
    //   64	74	121	org/json/JSONException
    //   74	87	121	org/json/JSONException
    //   103	118	121	org/json/JSONException
  }
  
  private boolean f()
  {
    Ha.a().m();
    ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
    if ((j.getText().equals("200")) || (j.getText().equals("")))
    {
      Toast.makeText(h, "You have not entered a Yak yet", 1).show();
      return false;
    }
    Object localObject2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    YakkerLocation localYakkerLocation = n.g();
    Object localObject1 = new Yak();
    ID = UUID.randomUUID().toString();
    Content = k.getText().toString();
    Latitude = localYakkerLocation.getLatitude();
    Longitude = localYakkerLocation.getLatitude();
    TimePosted = ((SimpleDateFormat)localObject2).format(new Date());
    NumberOfLikes = 0;
    Type = 0;
    Comments = 0;
    YakkerID = Aa.g();
    localObject2 = m.getText().toString();
    if ((o) && (!Hi.a((String)localObject2)))
    {
      YakkerHandle = ((String)localObject2);
      ShowHandle = true;
    }
    try
    {
      i.getJSONArray("messages").put(new Av().b((Yak)localObject1));
    }
    catch (JSONException localJSONException)
    {
      try
      {
        for (;;)
        {
          localObject1 = h.openFileOutput("drafts.json", 0);
          ((FileOutputStream)localObject1).write(i.toString().getBytes());
          ((FileOutputStream)localObject1).close();
          d();
          a(i);
          return true;
          YakkerHandle = "";
          ShowHandle = false;
          continue;
          localJSONException = localJSONException;
          localJSONException.printStackTrace();
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(Dp<?> paramDp, Dd paramDd, int paramInt)
  {
    if (r == null) {}
    do
    {
      return;
      q = ((Yak)paramDd.getItem(paramInt));
    } while (q == null);
    d.startAnimation(e);
    d.setVisibility(0);
    g.findViewById(2131558694).setVisibility(0);
    g.findViewById(2131558692).setVisibility(0);
    c = true;
  }
  
  /* Error */
  public void a(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: astore 4
    //   3: aload_1
    //   4: ifnonnull +9 -> 13
    //   7: aload_0
    //   8: invokespecial 540	com/yik/yak/ui/fragment/DraftsFragment:e	()Lorg/json/JSONObject;
    //   11: astore 4
    //   13: aload_0
    //   14: new 152	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 541	java/util/ArrayList:<init>	()V
    //   21: putfield 150	com/yik/yak/ui/fragment/DraftsFragment:r	Ljava/util/ArrayList;
    //   24: aload 4
    //   26: ldc -70
    //   28: invokevirtual 190	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   31: astore_1
    //   32: aload_1
    //   33: invokevirtual 542	org/json/JSONArray:length	()I
    //   36: istore_3
    //   37: new 167	Av
    //   40: dup
    //   41: invokespecial 168	Av:<init>	()V
    //   44: astore 4
    //   46: iconst_0
    //   47: istore_2
    //   48: iload_2
    //   49: iload_3
    //   50: if_icmpge +44 -> 94
    //   53: aload_0
    //   54: invokevirtual 406	com/yik/yak/ui/fragment/DraftsFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   57: aload 4
    //   59: aload_1
    //   60: iload_2
    //   61: invokevirtual 546	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   64: invokevirtual 549	Av:a	(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;
    //   67: iconst_0
    //   68: iconst_0
    //   69: iconst_0
    //   70: iconst_0
    //   71: invokestatic 553	com/yik/yak/data/models/Yak:initializeYak	(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;
    //   74: astore 5
    //   76: aload_0
    //   77: getfield 150	com/yik/yak/ui/fragment/DraftsFragment:r	Ljava/util/ArrayList;
    //   80: aload 5
    //   82: invokevirtual 556	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   85: pop
    //   86: iload_2
    //   87: iconst_1
    //   88: iadd
    //   89: istore_2
    //   90: goto -42 -> 48
    //   93: astore_1
    //   94: aload_0
    //   95: getfield 74	com/yik/yak/ui/fragment/DraftsFragment:g	Landroid/view/View;
    //   98: ldc_w 557
    //   101: invokevirtual 81	android/view/View:findViewById	(I)Landroid/view/View;
    //   104: astore_1
    //   105: aload_0
    //   106: getfield 150	com/yik/yak/ui/fragment/DraftsFragment:r	Ljava/util/ArrayList;
    //   109: invokevirtual 560	java/util/ArrayList:size	()I
    //   112: ifne +26 -> 138
    //   115: iconst_0
    //   116: istore_2
    //   117: aload_1
    //   118: iload_2
    //   119: invokevirtual 536	android/view/View:setVisibility	(I)V
    //   122: aload_0
    //   123: getfield 150	com/yik/yak/ui/fragment/DraftsFragment:r	Ljava/util/ArrayList;
    //   126: aload_0
    //   127: getfield 69	com/yik/yak/ui/fragment/DraftsFragment:w	Ljava/util/Comparator;
    //   130: invokestatic 566	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   133: aload_0
    //   134: invokespecial 568	com/yik/yak/ui/fragment/DraftsFragment:c	()V
    //   137: return
    //   138: bipush 8
    //   140: istore_2
    //   141: goto -24 -> 117
    //   144: astore_1
    //   145: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	DraftsFragment
    //   0	146	1	paramJSONObject	JSONObject
    //   47	94	2	i1	int
    //   36	15	3	i2	int
    //   1	57	4	localObject	Object
    //   74	7	5	localYak	Yak
    // Exception table:
    //   from	to	target	type
    //   24	46	93	org/json/JSONException
    //   53	86	93	org/json/JSONException
    //   94	115	144	java/lang/Exception
    //   117	137	144	java/lang/Exception
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != 2001);
    Ha.a().o();
    a(p, false);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    k.requestFocus();
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    p = position;
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    case 2131558881: 
      a((Yak)r.get(position));
      return true;
    case 2131558882: 
      return true;
    }
    a(p, true);
    return true;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if (paramView.getId() == 2131558691)
    {
      paramContextMenu.setHeaderTitle("Select Action");
      getActivity().getMenuInflater().inflate(2131755011, paramContextMenu);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu.clear();
    paramMenuInflater.inflate(2131755010, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    g = paramLayoutInflater.inflate(2130903113, paramViewGroup, false);
    h = g.getContext();
    n = AD.a();
    m = ((EditText)g.findViewById(2131558551));
    m.setText(Aa.i());
    m.setOnFocusChangeListener(new EG(this));
    l = ((ImageView)g.findViewById(2131558560));
    l.setOnClickListener(new EH(this));
    k = ((EditText)g.findViewById(2131558549));
    if (k.requestFocus()) {
      getActivity().getWindow().setSoftInputMode(5);
    }
    j = ((TextView)g.findViewById(2131558559));
    j.setGravity(17);
    j.setText("200");
    paramLayoutInflater = new EI(this);
    k.addTextChangedListener(paramLayoutInflater);
    r = new ArrayList();
    t = new LinearLayoutManager(h);
    u = ((RecyclerView)g.findViewById(2131558691));
    u.setLayoutManager(t);
    a();
    a(null);
    setHasOptionsMenu(true);
    return g;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    if (f()) {
      d();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.DraftsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */