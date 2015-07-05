package com.facebook.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.android.R.color;
import com.facebook.android.R.dimen;
import com.facebook.android.R.styleable;
import com.facebook.internal.LikeActionController;
import com.facebook.internal.LikeBoxCountView;
import com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition;
import com.facebook.internal.LikeButton;
import com.facebook.internal.Utility;

public class LikeView
  extends FrameLayout
{
  private static final int NO_FOREGROUND_COLOR = -1;
  private LikeView.AuxiliaryViewPosition auxiliaryViewPosition = LikeView.AuxiliaryViewPosition.DEFAULT;
  private BroadcastReceiver broadcastReceiver;
  private LinearLayout containerView;
  private LikeView.LikeActionControllerCreationCallback creationCallback;
  private int edgePadding;
  private int foregroundColor = -1;
  private LikeView.HorizontalAlignment horizontalAlignment = LikeView.HorizontalAlignment.DEFAULT;
  private int internalPadding;
  private LikeActionController likeActionController;
  private LikeBoxCountView likeBoxCountView;
  private LikeButton likeButton;
  private LikeView.Style likeViewStyle = LikeView.Style.DEFAULT;
  private String objectId;
  private LikeView.OnErrorListener onErrorListener;
  private Fragment parentFragment;
  private TextView socialSentenceView;
  
  public LikeView(Context paramContext)
  {
    super(paramContext);
    initialize(paramContext);
  }
  
  public LikeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    parseAttributes(paramAttributeSet);
    initialize(paramContext);
  }
  
  private void associateWithLikeActionController(LikeActionController paramLikeActionController)
  {
    likeActionController = paramLikeActionController;
    broadcastReceiver = new LikeView.LikeControllerBroadcastReceiver(this, null);
    paramLikeActionController = LocalBroadcastManager.getInstance(getContext());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
    paramLikeActionController.registerReceiver(broadcastReceiver, localIntentFilter);
  }
  
  private Bundle getAnalyticsParameters()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("style", likeViewStyle.toString());
    localBundle.putString("auxiliary_position", auxiliaryViewPosition.toString());
    localBundle.putString("horizontal_alignment", horizontalAlignment.toString());
    localBundle.putString("object_id", Utility.coerceValueIfNullOrEmpty(objectId, ""));
    return localBundle;
  }
  
  public static boolean handleOnActivityResult(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    return LikeActionController.handleOnActivityResult(paramContext, paramInt1, paramInt2, paramIntent);
  }
  
  private void initialize(Context paramContext)
  {
    edgePadding = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_edge_padding);
    internalPadding = getResources().getDimensionPixelSize(R.dimen.com_facebook_likeview_internal_padding);
    if (foregroundColor == -1) {
      foregroundColor = getResources().getColor(R.color.com_facebook_likeview_text_color);
    }
    setBackgroundColor(0);
    containerView = new LinearLayout(paramContext);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    containerView.setLayoutParams(localLayoutParams);
    initializeLikeButton(paramContext);
    initializeSocialSentenceView(paramContext);
    initializeLikeCountView(paramContext);
    containerView.addView(likeButton);
    containerView.addView(socialSentenceView);
    containerView.addView(likeBoxCountView);
    addView(containerView);
    setObjectIdForced(objectId);
    updateLikeStateAndLayout();
  }
  
  private void initializeLikeButton(Context paramContext)
  {
    if (likeActionController != null) {}
    for (boolean bool = likeActionController.isObjectLiked();; bool = false)
    {
      likeButton = new LikeButton(paramContext, bool);
      likeButton.setOnClickListener(new LikeView.1(this));
      paramContext = new LinearLayout.LayoutParams(-2, -2);
      likeButton.setLayoutParams(paramContext);
      return;
    }
  }
  
  private void initializeLikeCountView(Context paramContext)
  {
    likeBoxCountView = new LikeBoxCountView(paramContext);
    paramContext = new LinearLayout.LayoutParams(-1, -1);
    likeBoxCountView.setLayoutParams(paramContext);
  }
  
  private void initializeSocialSentenceView(Context paramContext)
  {
    socialSentenceView = new TextView(paramContext);
    socialSentenceView.setTextSize(0, getResources().getDimension(R.dimen.com_facebook_likeview_text_size));
    socialSentenceView.setMaxLines(2);
    socialSentenceView.setTextColor(foregroundColor);
    socialSentenceView.setGravity(17);
    paramContext = new LinearLayout.LayoutParams(-2, -1);
    socialSentenceView.setLayoutParams(paramContext);
  }
  
  private void parseAttributes(AttributeSet paramAttributeSet)
  {
    if ((paramAttributeSet == null) || (getContext() == null)) {}
    do
    {
      return;
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.com_facebook_like_view);
    } while (paramAttributeSet == null);
    objectId = Utility.coerceValueIfNullOrEmpty(paramAttributeSet.getString(R.styleable.com_facebook_like_view_object_id), null);
    likeViewStyle = LikeView.Style.fromInt(paramAttributeSet.getInt(R.styleable.com_facebook_like_view_style, LikeView.Style.access$000(LikeView.Style.DEFAULT)));
    if (likeViewStyle == null) {
      throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
    }
    auxiliaryViewPosition = LikeView.AuxiliaryViewPosition.fromInt(paramAttributeSet.getInt(R.styleable.com_facebook_like_view_auxiliary_view_position, LikeView.AuxiliaryViewPosition.access$100(LikeView.AuxiliaryViewPosition.DEFAULT)));
    if (auxiliaryViewPosition == null) {
      throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
    }
    horizontalAlignment = LikeView.HorizontalAlignment.fromInt(paramAttributeSet.getInt(R.styleable.com_facebook_like_view_horizontal_alignment, LikeView.HorizontalAlignment.access$200(LikeView.HorizontalAlignment.DEFAULT)));
    if (horizontalAlignment == null) {
      throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
    }
    foregroundColor = paramAttributeSet.getColor(R.styleable.com_facebook_like_view_foreground_color, -1);
    paramAttributeSet.recycle();
  }
  
  private void setObjectIdForced(String paramString)
  {
    tearDownObjectAssociations();
    objectId = paramString;
    if (Utility.isNullOrEmpty(paramString)) {
      return;
    }
    creationCallback = new LikeView.LikeActionControllerCreationCallback(this, null);
    LikeActionController.getControllerForObjectId(getContext(), paramString, creationCallback);
  }
  
  private void tearDownObjectAssociations()
  {
    if (broadcastReceiver != null)
    {
      LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(broadcastReceiver);
      broadcastReceiver = null;
    }
    if (creationCallback != null)
    {
      creationCallback.cancel();
      creationCallback = null;
    }
    likeActionController = null;
  }
  
  private void toggleLike()
  {
    Object localObject;
    if (likeActionController != null)
    {
      if (parentFragment != null) {
        break label78;
      }
      localObject = getContext();
      if (!(localObject instanceof Activity)) {
        break label48;
      }
      localObject = (Activity)localObject;
    }
    for (;;)
    {
      likeActionController.toggleLike((Activity)localObject, parentFragment, getAnalyticsParameters());
      return;
      label48:
      if ((localObject instanceof ContextWrapper))
      {
        localObject = ((ContextWrapper)localObject).getBaseContext();
        if ((localObject instanceof Activity))
        {
          localObject = (Activity)localObject;
          continue;
          label78:
          localObject = parentFragment.getActivity();
          continue;
        }
      }
      localObject = null;
    }
  }
  
  private void updateBoxCountCaretPosition()
  {
    switch (LikeView.2.$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition[auxiliaryViewPosition.ordinal()])
    {
    default: 
      return;
    case 1: 
      likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM);
      return;
    case 2: 
      likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP);
      return;
    }
    LikeBoxCountView localLikeBoxCountView = likeBoxCountView;
    if (horizontalAlignment == LikeView.HorizontalAlignment.RIGHT) {}
    for (LikeBoxCountView.LikeBoxCountViewCaretPosition localLikeBoxCountViewCaretPosition = LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT;; localLikeBoxCountViewCaretPosition = LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT)
    {
      localLikeBoxCountView.setCaretPosition(localLikeBoxCountViewCaretPosition);
      return;
    }
  }
  
  private void updateLayout()
  {
    int j = 1;
    Object localObject1 = (FrameLayout.LayoutParams)containerView.getLayoutParams();
    Object localObject2 = (LinearLayout.LayoutParams)likeButton.getLayoutParams();
    int i;
    if (horizontalAlignment == LikeView.HorizontalAlignment.LEFT)
    {
      i = 3;
      gravity = (i | 0x30);
      gravity = i;
      socialSentenceView.setVisibility(8);
      likeBoxCountView.setVisibility(8);
      if ((likeViewStyle != LikeView.Style.STANDARD) || (likeActionController == null) || (Utility.isNullOrEmpty(likeActionController.getSocialSentence()))) {
        break label257;
      }
      localObject1 = socialSentenceView;
      label104:
      ((View)localObject1).setVisibility(0);
      getLayoutParamsgravity = i;
      localObject2 = containerView;
      i = j;
      if (auxiliaryViewPosition == LikeView.AuxiliaryViewPosition.INLINE) {
        i = 0;
      }
      ((LinearLayout)localObject2).setOrientation(i);
      if ((auxiliaryViewPosition != LikeView.AuxiliaryViewPosition.TOP) && ((auxiliaryViewPosition != LikeView.AuxiliaryViewPosition.INLINE) || (horizontalAlignment != LikeView.HorizontalAlignment.RIGHT))) {
        break label299;
      }
      containerView.removeView(likeButton);
      containerView.addView(likeButton);
    }
    for (;;)
    {
      switch (LikeView.2.$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition[auxiliaryViewPosition.ordinal()])
      {
      default: 
        label257:
        do
        {
          return;
          if (horizontalAlignment == LikeView.HorizontalAlignment.CENTER)
          {
            i = 1;
            break;
          }
          i = 5;
          break;
        } while ((likeViewStyle != LikeView.Style.BOX_COUNT) || (likeActionController == null) || (Utility.isNullOrEmpty(likeActionController.getLikeCountString())));
        updateBoxCountCaretPosition();
        localObject1 = likeBoxCountView;
        break label104;
        label299:
        containerView.removeView((View)localObject1);
        containerView.addView((View)localObject1);
      }
    }
    ((View)localObject1).setPadding(edgePadding, edgePadding, edgePadding, internalPadding);
    return;
    ((View)localObject1).setPadding(edgePadding, internalPadding, edgePadding, edgePadding);
    return;
    if (horizontalAlignment == LikeView.HorizontalAlignment.RIGHT)
    {
      ((View)localObject1).setPadding(edgePadding, edgePadding, internalPadding, edgePadding);
      return;
    }
    ((View)localObject1).setPadding(internalPadding, edgePadding, edgePadding, edgePadding);
  }
  
  private void updateLikeStateAndLayout()
  {
    if (likeActionController == null)
    {
      likeButton.setLikeState(false);
      socialSentenceView.setText(null);
      likeBoxCountView.setText(null);
    }
    for (;;)
    {
      updateLayout();
      return;
      likeButton.setLikeState(likeActionController.isObjectLiked());
      socialSentenceView.setText(likeActionController.getSocialSentence());
      likeBoxCountView.setText(likeActionController.getLikeCountString());
    }
  }
  
  public LikeView.OnErrorListener getOnErrorListener()
  {
    return onErrorListener;
  }
  
  protected void onDetachedFromWindow()
  {
    setObjectId(null);
    super.onDetachedFromWindow();
  }
  
  public void setAuxiliaryViewPosition(LikeView.AuxiliaryViewPosition paramAuxiliaryViewPosition)
  {
    if (paramAuxiliaryViewPosition != null) {}
    for (;;)
    {
      if (auxiliaryViewPosition != paramAuxiliaryViewPosition)
      {
        auxiliaryViewPosition = paramAuxiliaryViewPosition;
        updateLayout();
      }
      return;
      paramAuxiliaryViewPosition = LikeView.AuxiliaryViewPosition.DEFAULT;
    }
  }
  
  public void setForegroundColor(int paramInt)
  {
    if (foregroundColor != paramInt) {
      socialSentenceView.setTextColor(paramInt);
    }
  }
  
  public void setFragment(Fragment paramFragment)
  {
    parentFragment = paramFragment;
  }
  
  public void setHorizontalAlignment(LikeView.HorizontalAlignment paramHorizontalAlignment)
  {
    if (paramHorizontalAlignment != null) {}
    for (;;)
    {
      if (horizontalAlignment != paramHorizontalAlignment)
      {
        horizontalAlignment = paramHorizontalAlignment;
        updateLayout();
      }
      return;
      paramHorizontalAlignment = LikeView.HorizontalAlignment.DEFAULT;
    }
  }
  
  public void setLikeViewStyle(LikeView.Style paramStyle)
  {
    if (paramStyle != null) {}
    for (;;)
    {
      if (likeViewStyle != paramStyle)
      {
        likeViewStyle = paramStyle;
        updateLayout();
      }
      return;
      paramStyle = LikeView.Style.DEFAULT;
    }
  }
  
  public void setObjectId(String paramString)
  {
    paramString = Utility.coerceValueIfNullOrEmpty(paramString, null);
    if (!Utility.areObjectsEqual(paramString, objectId))
    {
      setObjectIdForced(paramString);
      updateLikeStateAndLayout();
    }
  }
  
  public void setOnErrorListener(LikeView.OnErrorListener paramOnErrorListener)
  {
    onErrorListener = paramOnErrorListener;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LikeView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */