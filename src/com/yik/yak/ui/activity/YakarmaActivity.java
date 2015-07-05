package com.yik.yak.ui.activity;

import Cw;
import Cx;
import Cy;
import Cz;
import Gs;
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
import zQ;

public class YakarmaActivity
  extends BaseAppCompatActivity
{
  public final ViewTreeObserver.OnScrollChangedListener b = new Cw(this);
  private ScrollView c;
  private ScrollView d;
  private ScrollView e;
  private Context f;
  
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
    setContentView(2130903078);
    if (Build.VERSION.SDK_INT >= 21)
    {
      getWindow().addFlags(Integer.MIN_VALUE);
      getWindow().setStatusBarColor(getResources().getColor(2131427564));
    }
    a("");
    f = this;
    a((ImageView)findViewById(2131558559), 2130837815);
    a((ImageView)findViewById(2131558561), 2130837596);
    c = ((ScrollView)findViewById(2131558558));
    d = ((ScrollView)findViewById(2131558560));
    e = ((ScrollView)findViewById(2131558562));
    e.setOnTouchListener(new Cx(this));
    ((TextView)findViewById(2131558563)).setText(zQ.f());
    ((Button)findViewById(2131558566)).setOnClickListener(new Cy(this));
    Gs.a().l();
  }
  
  public void onResume()
  {
    super.onResume();
    e.post(new Cz(this));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.YakarmaActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */