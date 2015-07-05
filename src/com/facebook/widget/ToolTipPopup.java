package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.android.R.drawable;
import com.facebook.android.R.id;
import java.lang.ref.WeakReference;

public class ToolTipPopup
{
  public static final long DEFAULT_POPUP_DISPLAY_TIME = 6000L;
  private final WeakReference<View> mAnchorViewRef;
  private final Context mContext;
  private long mNuxDisplayTime = 6000L;
  private ToolTipPopup.PopupContentView mPopupContent;
  private PopupWindow mPopupWindow;
  private final ViewTreeObserver.OnScrollChangedListener mScrollListener = new ToolTipPopup.1(this);
  private ToolTipPopup.Style mStyle = ToolTipPopup.Style.BLUE;
  private final String mText;
  
  public ToolTipPopup(String paramString, View paramView)
  {
    mText = paramString;
    mAnchorViewRef = new WeakReference(paramView);
    mContext = paramView.getContext();
  }
  
  private void registerObserver()
  {
    unregisterObserver();
    if (mAnchorViewRef.get() != null) {
      ((View)mAnchorViewRef.get()).getViewTreeObserver().addOnScrollChangedListener(mScrollListener);
    }
  }
  
  private void unregisterObserver()
  {
    if (mAnchorViewRef.get() != null) {
      ((View)mAnchorViewRef.get()).getViewTreeObserver().removeOnScrollChangedListener(mScrollListener);
    }
  }
  
  private void updateArrows()
  {
    if ((mPopupWindow != null) && (mPopupWindow.isShowing()))
    {
      if (mPopupWindow.isAboveAnchor()) {
        mPopupContent.showBottomArrow();
      }
    }
    else {
      return;
    }
    mPopupContent.showTopArrow();
  }
  
  public void dismiss()
  {
    unregisterObserver();
    if (mPopupWindow != null) {
      mPopupWindow.dismiss();
    }
  }
  
  public void setNuxDisplayTime(long paramLong)
  {
    mNuxDisplayTime = paramLong;
  }
  
  public void setStyle(ToolTipPopup.Style paramStyle)
  {
    mStyle = paramStyle;
  }
  
  public void show()
  {
    if (mAnchorViewRef.get() != null)
    {
      mPopupContent = new ToolTipPopup.PopupContentView(this, mContext);
      ((TextView)mPopupContent.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body)).setText(mText);
      if (mStyle != ToolTipPopup.Style.BLUE) {
        break label258;
      }
      ToolTipPopup.PopupContentView.access$300(mPopupContent).setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
      ToolTipPopup.PopupContentView.access$400(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
      ToolTipPopup.PopupContentView.access$500(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
      ToolTipPopup.PopupContentView.access$600(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
    }
    for (;;)
    {
      View localView = ((Activity)mContext).getWindow().getDecorView();
      int i = localView.getWidth();
      int j = localView.getHeight();
      registerObserver();
      mPopupContent.onMeasure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(j, Integer.MIN_VALUE));
      mPopupWindow = new PopupWindow(mPopupContent, mPopupContent.getMeasuredWidth(), mPopupContent.getMeasuredHeight());
      mPopupWindow.showAsDropDown((View)mAnchorViewRef.get());
      updateArrows();
      if (mNuxDisplayTime > 0L) {
        mPopupContent.postDelayed(new ToolTipPopup.2(this), mNuxDisplayTime);
      }
      mPopupWindow.setTouchable(true);
      mPopupContent.setOnClickListener(new ToolTipPopup.3(this));
      return;
      label258:
      ToolTipPopup.PopupContentView.access$300(mPopupContent).setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
      ToolTipPopup.PopupContentView.access$400(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
      ToolTipPopup.PopupContentView.access$500(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
      ToolTipPopup.PopupContentView.access$600(mPopupContent).setImageResource(R.drawable.com_facebook_tooltip_black_xout);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.ToolTipPopup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */