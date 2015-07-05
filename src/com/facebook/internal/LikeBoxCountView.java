package com.facebook.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.android.R.color;
import com.facebook.android.R.dimen;

public class LikeBoxCountView
  extends FrameLayout
{
  private int additionalTextPadding;
  private Paint borderPaint;
  private float borderRadius;
  private float caretHeight;
  private LikeBoxCountView.LikeBoxCountViewCaretPosition caretPosition = LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT;
  private float caretWidth;
  private TextView likeCountLabel;
  private int textPadding;
  
  public LikeBoxCountView(Context paramContext)
  {
    super(paramContext);
    initialize(paramContext);
  }
  
  private void drawBorder(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Path localPath = new Path();
    float f = borderRadius * 2.0F;
    localPath.addArc(new RectF(paramFloat1, paramFloat2, paramFloat1 + f, paramFloat2 + f), -180.0F, 90.0F);
    if (caretPosition == LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP)
    {
      localPath.lineTo((paramFloat3 - paramFloat1 - caretWidth) / 2.0F + paramFloat1, paramFloat2);
      localPath.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, paramFloat2 - caretHeight);
      localPath.lineTo((paramFloat3 - paramFloat1 + caretWidth) / 2.0F + paramFloat1, paramFloat2);
    }
    localPath.lineTo(paramFloat3 - borderRadius, paramFloat2);
    localPath.addArc(new RectF(paramFloat3 - f, paramFloat2, paramFloat3, paramFloat2 + f), -90.0F, 90.0F);
    if (caretPosition == LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT)
    {
      localPath.lineTo(paramFloat3, (paramFloat4 - paramFloat2 - caretWidth) / 2.0F + paramFloat2);
      localPath.lineTo(caretHeight + paramFloat3, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat3, (paramFloat4 - paramFloat2 + caretWidth) / 2.0F + paramFloat2);
    }
    localPath.lineTo(paramFloat3, paramFloat4 - borderRadius);
    localPath.addArc(new RectF(paramFloat3 - f, paramFloat4 - f, paramFloat3, paramFloat4), 0.0F, 90.0F);
    if (caretPosition == LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM)
    {
      localPath.lineTo((paramFloat3 - paramFloat1 + caretWidth) / 2.0F + paramFloat1, paramFloat4);
      localPath.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, caretHeight + paramFloat4);
      localPath.lineTo((paramFloat3 - paramFloat1 - caretWidth) / 2.0F + paramFloat1, paramFloat4);
    }
    localPath.lineTo(borderRadius + paramFloat1, paramFloat4);
    localPath.addArc(new RectF(paramFloat1, paramFloat4 - f, f + paramFloat1, paramFloat4), 90.0F, 90.0F);
    if (caretPosition == LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT)
    {
      localPath.lineTo(paramFloat1, (paramFloat4 - paramFloat2 + caretWidth) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat1 - caretHeight, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      localPath.lineTo(paramFloat1, (paramFloat4 - paramFloat2 - caretWidth) / 2.0F + paramFloat2);
    }
    localPath.lineTo(paramFloat1, borderRadius + paramFloat2);
    paramCanvas.drawPath(localPath, borderPaint);
  }
  
  private void initialize(Context paramContext)
  {
    setWillNotDraw(false);
    caretHeight = getResources().getDimension(R.dimen.com_facebook_likeboxcountview_caret_height);
    caretWidth = getResources().getDimension(R.dimen.com_facebook_likeboxcountview_caret_width);
    borderRadius = getResources().getDimension(R.dimen.com_facebook_likeboxcountview_border_radius);
    borderPaint = new Paint();
    borderPaint.setColor(getResources().getColor(R.color.com_facebook_likeboxcountview_border_color));
    borderPaint.setStrokeWidth(getResources().getDimension(R.dimen.com_facebook_likeboxcountview_border_width));
    borderPaint.setStyle(Paint.Style.STROKE);
    initializeLikeCountLabel(paramContext);
    addView(likeCountLabel);
    setCaretPosition(caretPosition);
  }
  
  private void initializeLikeCountLabel(Context paramContext)
  {
    likeCountLabel = new TextView(paramContext);
    paramContext = new FrameLayout.LayoutParams(-1, -1);
    likeCountLabel.setLayoutParams(paramContext);
    likeCountLabel.setGravity(17);
    likeCountLabel.setTextSize(0, getResources().getDimension(R.dimen.com_facebook_likeboxcountview_text_size));
    likeCountLabel.setTextColor(getResources().getColor(R.color.com_facebook_likeboxcountview_text_color));
    textPadding = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeboxcountview_text_padding);
    additionalTextPadding = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeboxcountview_caret_height);
  }
  
  private void setAdditionalTextPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    likeCountLabel.setPadding(textPadding + paramInt1, textPadding + paramInt2, textPadding + paramInt3, textPadding + paramInt4);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int m = getPaddingTop();
    int k = getPaddingLeft();
    int j = getWidth() - getPaddingRight();
    int i = getHeight() - getPaddingBottom();
    switch (LikeBoxCountView.1.$SwitchMap$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition[caretPosition.ordinal()])
    {
    }
    for (;;)
    {
      drawBorder(paramCanvas, k, m, j, i);
      return;
      i = (int)(i - caretHeight);
      continue;
      k = (int)(k + caretHeight);
      continue;
      m = (int)(m + caretHeight);
      continue;
      j = (int)(j - caretHeight);
    }
  }
  
  public void setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition paramLikeBoxCountViewCaretPosition)
  {
    caretPosition = paramLikeBoxCountViewCaretPosition;
    switch (LikeBoxCountView.1.$SwitchMap$com$facebook$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition[paramLikeBoxCountViewCaretPosition.ordinal()])
    {
    default: 
      return;
    case 1: 
      setAdditionalTextPadding(additionalTextPadding, 0, 0, 0);
      return;
    case 2: 
      setAdditionalTextPadding(0, additionalTextPadding, 0, 0);
      return;
    case 3: 
      setAdditionalTextPadding(0, 0, additionalTextPadding, 0);
      return;
    }
    setAdditionalTextPadding(0, 0, 0, additionalTextPadding);
  }
  
  public void setText(String paramString)
  {
    likeCountLabel.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeBoxCountView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */