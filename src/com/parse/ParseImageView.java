package com.parse;

import N;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class ParseImageView
  extends ImageView
{
  private ParseFile file;
  private boolean isLoaded = false;
  private Drawable placeholder;
  
  public ParseImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ParseImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ParseImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public N<byte[]> loadInBackground()
  {
    if (file == null) {
      return N.a(null);
    }
    ParseFile localParseFile = file;
    return file.getDataInBackground().d(new ParseImageView.1(this, localParseFile), N.b);
  }
  
  public void loadInBackground(GetDataCallback paramGetDataCallback)
  {
    Parse.callbackOnMainThreadAsync(loadInBackground(), paramGetDataCallback, true);
  }
  
  protected void onDetachedFromWindow()
  {
    if (file != null) {
      file.cancel();
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    isLoaded = true;
  }
  
  public void setParseFile(ParseFile paramParseFile)
  {
    if (file != null) {
      file.cancel();
    }
    isLoaded = false;
    file = paramParseFile;
    setImageDrawable(placeholder);
  }
  
  public void setPlaceholder(Drawable paramDrawable)
  {
    placeholder = paramDrawable;
    if (!isLoaded) {
      setImageDrawable(placeholder);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */