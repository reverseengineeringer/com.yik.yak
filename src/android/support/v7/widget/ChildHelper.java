package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

class ChildHelper
{
  private static final boolean DEBUG = false;
  private static final String TAG = "ChildrenHelper";
  final ChildHelper.Bucket mBucket;
  final ChildHelper.Callback mCallback;
  final List<View> mHiddenViews;
  
  ChildHelper(ChildHelper.Callback paramCallback)
  {
    mCallback = paramCallback;
    mBucket = new ChildHelper.Bucket();
    mHiddenViews = new ArrayList();
  }
  
  private int getOffset(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = mCallback.getChildCount();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - mBucket.countOnesBefore(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!mBucket.get(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  void addView(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = mCallback.getChildCount();; paramInt = getOffset(paramInt))
    {
      mBucket.insert(paramInt, paramBoolean);
      if (paramBoolean) {
        mHiddenViews.add(paramView);
      }
      mCallback.addView(paramView, paramInt);
      return;
    }
  }
  
  void addView(View paramView, boolean paramBoolean)
  {
    addView(paramView, -1, paramBoolean);
  }
  
  void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = mCallback.getChildCount();; paramInt = getOffset(paramInt))
    {
      mBucket.insert(paramInt, paramBoolean);
      if (paramBoolean) {
        mHiddenViews.add(paramView);
      }
      mCallback.attachViewToParent(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  void detachViewFromParent(int paramInt)
  {
    paramInt = getOffset(paramInt);
    mBucket.remove(paramInt);
    mCallback.detachViewFromParent(paramInt);
  }
  
  View findHiddenNonRemovedView(int paramInt1, int paramInt2)
  {
    int j = mHiddenViews.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)mHiddenViews.get(i);
      RecyclerView.ViewHolder localViewHolder = mCallback.getChildViewHolder(localView);
      if ((localViewHolder.getLayoutPosition() == paramInt1) && (!localViewHolder.isInvalid()) && ((paramInt2 == -1) || (localViewHolder.getItemViewType() == paramInt2))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  View getChildAt(int paramInt)
  {
    paramInt = getOffset(paramInt);
    return mCallback.getChildAt(paramInt);
  }
  
  int getChildCount()
  {
    return mCallback.getChildCount() - mHiddenViews.size();
  }
  
  View getUnfilteredChildAt(int paramInt)
  {
    return mCallback.getChildAt(paramInt);
  }
  
  int getUnfilteredChildCount()
  {
    return mCallback.getChildCount();
  }
  
  void hide(View paramView)
  {
    int i = mCallback.indexOfChild(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    mBucket.set(i);
    mHiddenViews.add(paramView);
  }
  
  int indexOfChild(View paramView)
  {
    int i = mCallback.indexOfChild(paramView);
    if (i == -1) {}
    while (mBucket.get(i)) {
      return -1;
    }
    return i - mBucket.countOnesBefore(i);
  }
  
  boolean isHidden(View paramView)
  {
    return mHiddenViews.contains(paramView);
  }
  
  void removeAllViewsUnfiltered()
  {
    mBucket.reset();
    mHiddenViews.clear();
    mCallback.removeAllViews();
  }
  
  void removeView(View paramView)
  {
    int i = mCallback.indexOfChild(paramView);
    if (i < 0) {
      return;
    }
    if (mBucket.remove(i)) {
      mHiddenViews.remove(paramView);
    }
    mCallback.removeViewAt(i);
  }
  
  void removeViewAt(int paramInt)
  {
    paramInt = getOffset(paramInt);
    View localView = mCallback.getChildAt(paramInt);
    if (localView == null) {
      return;
    }
    if (mBucket.remove(paramInt)) {
      mHiddenViews.remove(localView);
    }
    mCallback.removeViewAt(paramInt);
  }
  
  boolean removeViewIfHidden(View paramView)
  {
    int i = mCallback.indexOfChild(paramView);
    if (i == -1)
    {
      mHiddenViews.remove(paramView);
      return true;
    }
    if (mBucket.get(i))
    {
      mBucket.remove(i);
      mHiddenViews.remove(paramView);
      mCallback.removeViewAt(i);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    return mBucket.toString() + ", hidden list:" + mHiddenViews.size();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ChildHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */