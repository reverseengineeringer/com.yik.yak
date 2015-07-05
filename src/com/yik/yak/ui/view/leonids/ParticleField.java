package com.yik.yak.ui.view.leonids;

import FC;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;

public class ParticleField
  extends View
{
  private ArrayList<FC> a;
  
  public ParticleField(Context paramContext)
  {
    super(paramContext);
  }
  
  public ParticleField(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ParticleField(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(ArrayList<FC> paramArrayList)
  {
    a = paramArrayList;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = 0;
    while (i < a.size())
    {
      ((FC)a.get(i)).a(paramCanvas);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.leonids.ParticleField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */