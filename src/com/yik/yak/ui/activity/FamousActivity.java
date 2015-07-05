package com.yik.yak.ui.activity;

import Aq;
import CQ;
import CS;
import Db;
import GM;
import Gs;
import android.app.FragmentManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.InjectView;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.yik.yak.data.models.FamousShareCard;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.adapter.ShareCardRecyclerViewAdapter;
import java.util.ArrayList;
import kE;
import kk;
import kl;

public class FamousActivity
  extends BaseAppCompatActivity
  implements CS, View.OnClickListener
{
  public Context b;
  protected LinearLayoutManager c;
  private ShareCardRecyclerViewAdapter d;
  private Yak e;
  private ArrayList<FamousShareCard> f;
  private int g = 0;
  private boolean h = true;
  private boolean i = false;
  @InjectView(2131558502)
  protected ImageView imgShareCardPreview;
  @InjectView(2131558510)
  protected RecyclerView mRecyclerView;
  @InjectView(2131558511)
  protected TextView txtShareFamous;
  
  private void a(Yak paramYak, int paramInt, boolean paramBoolean)
  {
    try
    {
      j = a(paramInt);
      localBitmap = Bitmap.createBitmap(1024, 596, Bitmap.Config.ARGB_8888);
      localCanvas = new Canvas(localBitmap);
      localPaint = new Paint(2);
      localPaint.setStyle(Paint.Style.STROKE);
      localPaint.setStrokeWidth(1.0F);
      localPaint.setAntiAlias(true);
      localPaint.setColor(j);
      localPaint.setStyle(Paint.Style.FILL);
      localCanvas.drawRect(0.0F, 0.0F, 'Ѐ', 'ɔ', localPaint);
      localCanvas.drawBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeResource(b.getResources(), 2130837741), 1024, 596, true), 0.0F, 0.0F, null);
      localObject = b(paramInt);
      j = ((Bitmap)localObject).getWidth();
      int k = ((Bitmap)localObject).getHeight();
      localCanvas.drawBitmap(Bitmap.createScaledBitmap((Bitmap)localObject, j, k, true), (315 - j) / 2 + 30, (315 - k) / 2 + 130, null);
      localObject = new TextView(b);
      ((TextView)localObject).setText(c(paramInt));
      ((TextView)localObject).setTextSize(0, 40.0F);
      ((TextView)localObject).setGravity(1);
      ((TextView)localObject).setTextColor(-1);
      ((TextView)localObject).setDrawingCacheEnabled(true);
      ((TextView)localObject).layout(0, 0, 315, 120);
      localCanvas.drawBitmap(((TextView)localObject).getDrawingCache(), 30, 'ƽ', localPaint);
      ((TextView)localObject).setDrawingCacheEnabled(false);
      localCanvas.drawBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeResource(b.getResources(), 2130837745), 600, 165, true), 'ŷ', 25, null);
      if (e.YakkerHandle.isEmpty()) {
        break label757;
      }
      j = 50;
      localObject = new TextView(b);
      ((TextView)localObject).setText(e.YakkerHandle);
      ((TextView)localObject).setTextSize(0, 35.0F);
      ((TextView)localObject).setTypeface(Typeface.DEFAULT_BOLD);
      ((TextView)localObject).setGravity(1);
      ((TextView)localObject).setTextColor(-1);
      ((TextView)localObject).setDrawingCacheEnabled(true);
      ((TextView)localObject).layout(0, 0, 600, 300);
      localCanvas.drawBitmap(((TextView)localObject).getDrawingCache(), 'ŷ', 'È', localPaint);
      ((TextView)localObject).setDrawingCacheEnabled(false);
    }
    catch (OutOfMemoryError paramYak)
    {
      for (;;)
      {
        Bitmap localBitmap;
        Canvas localCanvas;
        Paint localPaint;
        Object localObject;
        Toast.makeText(b, "Unable to generate image.", 0).show();
        System.gc();
        continue;
        Gs.a().a(null, Long.valueOf(e.NumberOfLikes), Yak.getYakTypeName(Type), d(paramInt), IsBasecamp);
        GM.a(b, Uri.fromFile(b(localBitmap)));
        finish();
      }
    }
    catch (Exception paramYak)
    {
      for (;;)
      {
        Toast.makeText(b, "Unable to generate image.", 0).show();
        continue;
        label757:
        int j = 0;
      }
    }
    localObject = new TextView(b);
    ((TextView)localObject).setText(Content);
    if (e.Content.length() > 150) {
      ((TextView)localObject).setTextSize(0, 30.0F);
    }
    for (;;)
    {
      ((TextView)localObject).setGravity(17);
      ((TextView)localObject).setTextColor(-1);
      ((TextView)localObject).setDrawingCacheEnabled(true);
      ((TextView)localObject).layout(0, 0, 600, 300);
      localCanvas.drawBitmap(((TextView)localObject).getDrawingCache(), 'ŷ', j + 200, localPaint);
      ((TextView)localObject).setDrawingCacheEnabled(false);
      localObject = new TextView(b);
      ((TextView)localObject).setText(NumberOfLikes + " VOTES");
      ((TextView)localObject).setTextSize(0, 40.0F);
      ((TextView)localObject).setGravity(1);
      ((TextView)localObject).setTextColor(-1);
      ((TextView)localObject).setDrawingCacheEnabled(true);
      ((TextView)localObject).layout(0, 0, 150, 100);
      localCanvas.drawBitmap(((TextView)localObject).getDrawingCache(), 'ͦ', 'Ǫ', localPaint);
      ((TextView)localObject).setDrawingCacheEnabled(false);
      if (!paramBoolean) {
        break;
      }
      imgShareCardPreview.setImageBitmap(localBitmap);
      i = false;
      return;
      ((TextView)localObject).setTextSize(0, 35.0F);
    }
  }
  
  /* Error */
  private java.io.File b(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 300	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 301	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: aload_1
    //   9: getstatic 307	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   12: bipush 100
    //   14: aload_2
    //   15: invokevirtual 311	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   18: pop
    //   19: aload_2
    //   20: invokevirtual 315	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   23: astore 4
    //   25: aconst_null
    //   26: astore_2
    //   27: aload 4
    //   29: invokestatic 320	GB:a	([B)Ljava/io/File;
    //   32: astore_3
    //   33: aload_3
    //   34: ifnull +30 -> 64
    //   37: new 322	java/io/FileOutputStream
    //   40: dup
    //   41: aload_3
    //   42: invokespecial 325	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   45: astore_1
    //   46: aload_1
    //   47: aload 4
    //   49: invokevirtual 329	java/io/FileOutputStream:write	([B)V
    //   52: aload_1
    //   53: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   56: aload_1
    //   57: ifnull +7 -> 64
    //   60: aload_1
    //   61: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   64: aload_0
    //   65: getfield 110	com/yik/yak/ui/activity/FamousActivity:b	Landroid/content/Context;
    //   68: new 334	android/content/Intent
    //   71: dup
    //   72: ldc_w 336
    //   75: aload_3
    //   76: invokestatic 282	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   79: invokespecial 339	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   82: invokevirtual 343	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   85: aload_3
    //   86: areturn
    //   87: astore_1
    //   88: getstatic 347	java/lang/System:err	Ljava/io/PrintStream;
    //   91: ldc_w 349
    //   94: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   97: goto -33 -> 64
    //   100: astore_1
    //   101: aconst_null
    //   102: astore_1
    //   103: aload_1
    //   104: ifnull -40 -> 64
    //   107: aload_1
    //   108: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   111: goto -47 -> 64
    //   114: astore_1
    //   115: getstatic 347	java/lang/System:err	Ljava/io/PrintStream;
    //   118: ldc_w 349
    //   121: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   124: goto -60 -> 64
    //   127: astore_1
    //   128: aconst_null
    //   129: astore_1
    //   130: aload_1
    //   131: ifnull -67 -> 64
    //   134: aload_1
    //   135: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   138: goto -74 -> 64
    //   141: astore_1
    //   142: getstatic 347	java/lang/System:err	Ljava/io/PrintStream;
    //   145: ldc_w 349
    //   148: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   151: goto -87 -> 64
    //   154: astore_1
    //   155: aload_2
    //   156: ifnull +7 -> 163
    //   159: aload_2
    //   160: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   163: aload_1
    //   164: athrow
    //   165: astore_2
    //   166: getstatic 347	java/lang/System:err	Ljava/io/PrintStream;
    //   169: ldc_w 349
    //   172: invokevirtual 355	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   175: goto -12 -> 163
    //   178: astore_3
    //   179: aload_1
    //   180: astore_2
    //   181: aload_3
    //   182: astore_1
    //   183: goto -28 -> 155
    //   186: astore_2
    //   187: goto -57 -> 130
    //   190: astore_2
    //   191: goto -88 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	194	0	this	FamousActivity
    //   0	194	1	paramBitmap	Bitmap
    //   7	153	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   165	1	2	localIOException1	java.io.IOException
    //   180	1	2	localBitmap	Bitmap
    //   186	1	2	localIOException2	java.io.IOException
    //   190	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   32	54	3	localFile	java.io.File
    //   178	4	3	localObject	Object
    //   23	25	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   60	64	87	java/io/IOException
    //   37	46	100	java/io/FileNotFoundException
    //   107	111	114	java/io/IOException
    //   37	46	127	java/io/IOException
    //   134	138	141	java/io/IOException
    //   37	46	154	finally
    //   159	163	165	java/io/IOException
    //   46	56	178	finally
    //   46	56	186	java/io/IOException
    //   46	56	190	java/io/FileNotFoundException
  }
  
  protected int a(int paramInt)
  {
    try
    {
      paramInt = getResources().getIntArray(2131296264)[paramInt];
      return paramInt;
    }
    catch (Exception localException) {}
    return 2131427541;
  }
  
  public void a()
  {
    YakkerLocation localYakkerLocation = Aq.a(this).f();
    try
    {
      kl localkl = ((MapFragment)getFragmentManager().findFragmentById(2131558503)).b();
      localkl.d().a(false);
      localkl.d().b(false);
      localkl.a(kk.a(new LatLng(localYakkerLocation.getLatitude(), localYakkerLocation.getLongitude()), 12.0F));
      return;
    }
    catch (Exception localException) {}
  }
  
  public void a(Db<?> paramDb, CQ paramCQ, int paramInt)
  {
    g = paramInt;
    h = true;
    if (!i)
    {
      i = true;
      a(e, paramInt, true);
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    imgShareCardPreview.setImageBitmap(paramBitmap);
  }
  
  protected Bitmap b(int paramInt)
  {
    try
    {
      Bitmap localBitmap = ((BitmapDrawable)getResources().obtainTypedArray(2131296266).getDrawable(paramInt)).getBitmap();
      return localBitmap;
    }
    catch (Exception localException) {}
    return ((BitmapDrawable)getResources().getDrawable(2130837746)).getBitmap();
  }
  
  protected float c()
  {
    Display localDisplay = ((WindowManager)b.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    localDisplay.getSize(localPoint);
    return x / 1024.0F;
  }
  
  protected String c(int paramInt)
  {
    try
    {
      String str = getResources().getStringArray(2131296263)[paramInt];
      return str;
    }
    catch (Exception localException) {}
    return "HARRY YAKKER";
  }
  
  protected String d(int paramInt)
  {
    try
    {
      String str = getResources().getStringArray(2131296262)[paramInt];
      return str;
    }
    catch (Exception localException) {}
    return "famous-harry";
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    finish();
  }
  
  public void onClick(View paramView)
  {
    a(e, g, false);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 494	com/yik/yak/ui/activity/BaseAppCompatActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: ldc_w 495
    //   9: invokevirtual 498	com/yik/yak/ui/activity/FamousActivity:setContentView	(I)V
    //   12: aload_0
    //   13: ldc_w 500
    //   16: invokevirtual 502	com/yik/yak/ui/activity/FamousActivity:a	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: aload_0
    //   21: putfield 110	com/yik/yak/ui/activity/FamousActivity:b	Landroid/content/Context;
    //   24: aload_0
    //   25: invokestatic 508	butterknife/ButterKnife:inject	(Landroid/app/Activity;)V
    //   28: aload_0
    //   29: invokevirtual 510	com/yik/yak/ui/activity/FamousActivity:a	()V
    //   32: aload_0
    //   33: invokevirtual 514	com/yik/yak/ui/activity/FamousActivity:getIntent	()Landroid/content/Intent;
    //   36: invokevirtual 518	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   39: astore_1
    //   40: aload_1
    //   41: ifnull +163 -> 204
    //   44: aload_1
    //   45: ldc_w 520
    //   48: invokevirtual 526	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   51: ifeq +153 -> 204
    //   54: aload_1
    //   55: ldc_w 520
    //   58: invokevirtual 530	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   61: astore_1
    //   62: aload_0
    //   63: new 532	Aj
    //   66: dup
    //   67: invokespecial 533	Aj:<init>	()V
    //   70: new 535	org/json/JSONObject
    //   73: dup
    //   74: aload_1
    //   75: invokespecial 537	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   78: invokevirtual 540	Aj:a	(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;
    //   81: putfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   84: aload_0
    //   85: getfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   88: aload_0
    //   89: putfield 543	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   92: aload_0
    //   93: getfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   96: getfield 202	com/yik/yak/data/models/Yak:Content	Ljava/lang/String;
    //   99: invokestatic 545	GB:a	(Ljava/lang/String;)Z
    //   102: ifeq +7 -> 109
    //   105: aload_0
    //   106: invokevirtual 290	com/yik/yak/ui/activity/FamousActivity:finish	()V
    //   109: aload_0
    //   110: new 547	java/util/ArrayList
    //   113: dup
    //   114: invokespecial 548	java/util/ArrayList:<init>	()V
    //   117: putfield 550	com/yik/yak/ui/activity/FamousActivity:f	Ljava/util/ArrayList;
    //   120: aload_0
    //   121: invokevirtual 356	com/yik/yak/ui/activity/FamousActivity:getResources	()Landroid/content/res/Resources;
    //   124: ldc_w 551
    //   127: invokevirtual 430	android/content/res/Resources:obtainTypedArray	(I)Landroid/content/res/TypedArray;
    //   130: astore_1
    //   131: aload_0
    //   132: invokevirtual 356	com/yik/yak/ui/activity/FamousActivity:getResources	()Landroid/content/res/Resources;
    //   135: ldc_w 470
    //   138: invokevirtual 474	android/content/res/Resources:getStringArray	(I)[Ljava/lang/String;
    //   141: astore_3
    //   142: aload_0
    //   143: invokevirtual 356	com/yik/yak/ui/activity/FamousActivity:getResources	()Landroid/content/res/Resources;
    //   146: ldc_w 357
    //   149: invokevirtual 363	android/content/res/Resources:getIntArray	(I)[I
    //   152: astore 4
    //   154: iconst_0
    //   155: istore_2
    //   156: iload_2
    //   157: aload_3
    //   158: arraylength
    //   159: if_icmpge +105 -> 264
    //   162: aload_0
    //   163: getfield 550	com/yik/yak/ui/activity/FamousActivity:f	Ljava/util/ArrayList;
    //   166: new 553	com/yik/yak/data/models/FamousShareCard
    //   169: dup
    //   170: aload_1
    //   171: iload_2
    //   172: invokevirtual 436	android/content/res/TypedArray:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   175: aload_3
    //   176: iload_2
    //   177: aaload
    //   178: aload 4
    //   180: iload_2
    //   181: iaload
    //   182: invokespecial 556	com/yik/yak/data/models/FamousShareCard:<init>	(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    //   185: invokevirtual 560	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   188: pop
    //   189: iload_2
    //   190: iconst_1
    //   191: iadd
    //   192: istore_2
    //   193: goto -37 -> 156
    //   196: astore_1
    //   197: aload_1
    //   198: invokevirtual 563	org/json/JSONException:printStackTrace	()V
    //   201: goto -109 -> 92
    //   204: aload_0
    //   205: invokevirtual 514	com/yik/yak/ui/activity/FamousActivity:getIntent	()Landroid/content/Intent;
    //   208: invokevirtual 566	android/content/Intent:getAction	()Ljava/lang/String;
    //   211: ldc_w 568
    //   214: invokevirtual 572	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   217: ifeq +35 -> 252
    //   220: aload_0
    //   221: new 178	com/yik/yak/data/models/Yak
    //   224: dup
    //   225: invokespecial 573	com/yik/yak/data/models/Yak:<init>	()V
    //   228: putfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   231: aload_0
    //   232: getfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   235: aload_0
    //   236: putfield 543	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   239: aload_0
    //   240: getfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   243: ldc_w 575
    //   246: putfield 202	com/yik/yak/data/models/Yak:Content	Ljava/lang/String;
    //   249: goto -157 -> 92
    //   252: aload_0
    //   253: invokevirtual 290	com/yik/yak/ui/activity/FamousActivity:finish	()V
    //   256: goto -164 -> 92
    //   259: astore_1
    //   260: aload_1
    //   261: invokevirtual 576	java/lang/Exception:printStackTrace	()V
    //   264: aload_0
    //   265: getfield 227	com/yik/yak/ui/activity/FamousActivity:imgShareCardPreview	Landroid/widget/ImageView;
    //   268: invokevirtual 580	android/widget/ImageView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   271: ldc_w 581
    //   274: aload_0
    //   275: invokevirtual 583	com/yik/yak/ui/activity/FamousActivity:c	()F
    //   278: fmul
    //   279: f2i
    //   280: putfield 588	android/view/ViewGroup$LayoutParams:height	I
    //   283: aload_0
    //   284: getfield 590	com/yik/yak/ui/activity/FamousActivity:txtShareFamous	Landroid/widget/TextView;
    //   287: new 592	AP
    //   290: dup
    //   291: aload_0
    //   292: invokespecial 595	AP:<init>	(Lcom/yik/yak/ui/activity/FamousActivity;)V
    //   295: invokevirtual 599	android/widget/TextView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   298: aload_0
    //   299: new 601	android/support/v7/widget/LinearLayoutManager
    //   302: dup
    //   303: aload_0
    //   304: invokespecial 602	android/support/v7/widget/LinearLayoutManager:<init>	(Landroid/content/Context;)V
    //   307: putfield 604	com/yik/yak/ui/activity/FamousActivity:c	Landroid/support/v7/widget/LinearLayoutManager;
    //   310: aload_0
    //   311: getfield 604	com/yik/yak/ui/activity/FamousActivity:c	Landroid/support/v7/widget/LinearLayoutManager;
    //   314: iconst_0
    //   315: invokevirtual 607	android/support/v7/widget/LinearLayoutManager:setOrientation	(I)V
    //   318: aload_0
    //   319: new 609	com/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter
    //   322: dup
    //   323: aload_0
    //   324: getfield 110	com/yik/yak/ui/activity/FamousActivity:b	Landroid/content/Context;
    //   327: aload_0
    //   328: getfield 550	com/yik/yak/ui/activity/FamousActivity:f	Ljava/util/ArrayList;
    //   331: invokespecial 612	com/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter:<init>	(Landroid/content/Context;Ljava/util/ArrayList;)V
    //   334: putfield 614	com/yik/yak/ui/activity/FamousActivity:d	Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;
    //   337: aload_0
    //   338: getfield 616	com/yik/yak/ui/activity/FamousActivity:mRecyclerView	Landroid/support/v7/widget/RecyclerView;
    //   341: aload_0
    //   342: getfield 614	com/yik/yak/ui/activity/FamousActivity:d	Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;
    //   345: invokevirtual 622	android/support/v7/widget/RecyclerView:setAdapter	(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    //   348: aload_0
    //   349: getfield 614	com/yik/yak/ui/activity/FamousActivity:d	Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;
    //   352: aload_0
    //   353: invokevirtual 626	com/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter:setOnItemClickListener	(LCS;)V
    //   356: aload_0
    //   357: getfield 616	com/yik/yak/ui/activity/FamousActivity:mRecyclerView	Landroid/support/v7/widget/RecyclerView;
    //   360: aload_0
    //   361: getfield 604	com/yik/yak/ui/activity/FamousActivity:c	Landroid/support/v7/widget/LinearLayoutManager;
    //   364: invokevirtual 630	android/support/v7/widget/RecyclerView:setLayoutManager	(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    //   367: aload_0
    //   368: aload_0
    //   369: getfield 50	com/yik/yak/ui/activity/FamousActivity:e	Lcom/yik/yak/data/models/Yak;
    //   372: iconst_0
    //   373: iconst_1
    //   374: invokespecial 293	com/yik/yak/ui/activity/FamousActivity:a	(Lcom/yik/yak/data/models/Yak;IZ)V
    //   377: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	378	0	this	FamousActivity
    //   0	378	1	paramBundle	android.os.Bundle
    //   155	38	2	j	int
    //   141	35	3	arrayOfString	String[]
    //   152	27	4	arrayOfInt	int[]
    // Exception table:
    //   from	to	target	type
    //   62	92	196	org/json/JSONException
    //   156	189	259	java/lang/Exception
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.FamousActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */