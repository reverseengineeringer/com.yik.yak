package com.yik.yak.ui.activity;

import Aa;
import CO;
import CP;
import CQ;
import CR;
import Ha;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;

public class YakarmaActivity
  extends BaseAppCompatActivity
{
  public final ViewTreeObserver.OnScrollChangedListener c = new CO(this);
  private ScrollView d;
  private ScrollView e;
  private ScrollView f;
  private Context g;
  
  private boolean a(ImageView paramImageView, int paramInt)
  {
    try
    {
      Object localObject = new DisplayMetrics();
      getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
      int i = widthPixels;
      localObject = getResources().getDrawable(paramInt);
      if (localObject == null) {
        return false;
      }
      localObject = ((BitmapDrawable)localObject).getBitmap();
      paramInt = ((Bitmap)localObject).getWidth();
      int j = ((Bitmap)localObject).getHeight();
      float f1 = i / paramInt;
      Matrix localMatrix = new Matrix();
      localMatrix.postScale(f1, f1);
      localObject = Bitmap.createBitmap((Bitmap)localObject, 0, 0, paramInt, j, localMatrix, true);
      paramInt = ((Bitmap)localObject).getWidth();
      i = ((Bitmap)localObject).getHeight();
      paramImageView.setImageDrawable(new BitmapDrawable(getResources(), (Bitmap)localObject));
      localObject = (RelativeLayout.LayoutParams)paramImageView.getLayoutParams();
      width = paramInt;
      height = i;
      paramImageView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      return true;
    }
    catch (OutOfMemoryError paramImageView)
    {
      paramImageView.printStackTrace();
      return false;
    }
    catch (Exception paramImageView)
    {
      paramImageView.printStackTrace();
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903081);
    if (Build.VERSION.SDK_INT >= 21)
    {
      getWindow().addFlags(Integer.MIN_VALUE);
      getWindow().setStatusBarColor(getResources().getColor(2131427564));
    }
    a("");
    g = this;
    a((ImageView)findViewById(2131558571), 2130837826);
    a((ImageView)findViewById(2131558573), 2130837596);
    d = ((ScrollView)findViewById(2131558570));
    e = ((ScrollView)findViewById(2131558572));
    f = ((ScrollView)findViewById(2131558574));
    f.setOnTouchListener(new CP(this));
    ((TextView)findViewById(2131558575)).setText(Aa.j());
    ((Button)findViewById(2131558578)).setOnClickListener(new CQ(this));
    Ha.a().p();
  }
  
  public void onResume()
  {
    super.onResume();
    f.post(new CR(this));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.YakarmaActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */