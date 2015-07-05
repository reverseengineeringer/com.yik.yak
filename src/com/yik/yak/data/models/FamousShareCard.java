package com.yik.yak.data.models;

import android.graphics.drawable.Drawable;

public class FamousShareCard
{
  private String mCaption;
  private int mColor;
  private Drawable mDrawable;
  
  public FamousShareCard(Drawable paramDrawable, String paramString, int paramInt)
  {
    mDrawable = paramDrawable;
    mCaption = paramString;
    mColor = paramInt;
  }
  
  public int getBackgroundColor()
  {
    return mColor;
  }
  
  public String getCaption()
  {
    return mCaption;
  }
  
  public Drawable getDrawable()
  {
    return mDrawable;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    mColor = paramInt;
  }
  
  public void setCaption(String paramString)
  {
    mCaption = paramString;
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    mDrawable = paramDrawable;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.FamousShareCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */