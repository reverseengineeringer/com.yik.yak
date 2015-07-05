package android.support.v7.widget;

import android.support.v4.util.ArrayMap;
import android.util.SparseArray;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView$State
{
  private SparseArray<Object> mData;
  private int mDeletedInvisibleItemCountSincePreviousLayout = 0;
  final List<View> mDisappearingViewsInLayoutPass = new ArrayList();
  private boolean mInPreLayout = false;
  int mItemCount = 0;
  ArrayMap<Long, RecyclerView.ViewHolder> mOldChangedHolders = new ArrayMap();
  ArrayMap<RecyclerView.ViewHolder, RecyclerView.ItemHolderInfo> mPostLayoutHolderMap = new ArrayMap();
  ArrayMap<RecyclerView.ViewHolder, RecyclerView.ItemHolderInfo> mPreLayoutHolderMap = new ArrayMap();
  private int mPreviousLayoutItemCount = 0;
  private boolean mRunPredictiveAnimations = false;
  private boolean mRunSimpleAnimations = false;
  private boolean mStructureChanged = false;
  private int mTargetPosition = -1;
  
  private void removeFrom(ArrayMap<Long, RecyclerView.ViewHolder> paramArrayMap, RecyclerView.ViewHolder paramViewHolder)
  {
    int i = paramArrayMap.size() - 1;
    for (;;)
    {
      if (i >= 0)
      {
        if (paramViewHolder == paramArrayMap.valueAt(i)) {
          paramArrayMap.removeAt(i);
        }
      }
      else {
        return;
      }
      i -= 1;
    }
  }
  
  void addToDisappearingList(View paramView)
  {
    if (!mDisappearingViewsInLayoutPass.contains(paramView)) {
      mDisappearingViewsInLayoutPass.add(paramView);
    }
  }
  
  public boolean didStructureChange()
  {
    return mStructureChanged;
  }
  
  public <T> T get(int paramInt)
  {
    if (mData == null) {
      return null;
    }
    return (T)mData.get(paramInt);
  }
  
  public int getItemCount()
  {
    if (mInPreLayout) {
      return mPreviousLayoutItemCount - mDeletedInvisibleItemCountSincePreviousLayout;
    }
    return mItemCount;
  }
  
  public int getTargetScrollPosition()
  {
    return mTargetPosition;
  }
  
  public boolean hasTargetScrollPosition()
  {
    return mTargetPosition != -1;
  }
  
  public boolean isPreLayout()
  {
    return mInPreLayout;
  }
  
  public void onViewIgnored(RecyclerView.ViewHolder paramViewHolder)
  {
    onViewRecycled(paramViewHolder);
  }
  
  void onViewRecycled(RecyclerView.ViewHolder paramViewHolder)
  {
    mPreLayoutHolderMap.remove(paramViewHolder);
    mPostLayoutHolderMap.remove(paramViewHolder);
    if (mOldChangedHolders != null) {
      removeFrom(mOldChangedHolders, paramViewHolder);
    }
    mDisappearingViewsInLayoutPass.remove(itemView);
  }
  
  public void put(int paramInt, Object paramObject)
  {
    if (mData == null) {
      mData = new SparseArray();
    }
    mData.put(paramInt, paramObject);
  }
  
  public void remove(int paramInt)
  {
    if (mData == null) {
      return;
    }
    mData.remove(paramInt);
  }
  
  void removeFromDisappearingList(View paramView)
  {
    mDisappearingViewsInLayoutPass.remove(paramView);
  }
  
  State reset()
  {
    mTargetPosition = -1;
    if (mData != null) {
      mData.clear();
    }
    mItemCount = 0;
    mStructureChanged = false;
    return this;
  }
  
  public String toString()
  {
    return "State{mTargetPosition=" + mTargetPosition + ", mPreLayoutHolderMap=" + mPreLayoutHolderMap + ", mPostLayoutHolderMap=" + mPostLayoutHolderMap + ", mData=" + mData + ", mItemCount=" + mItemCount + ", mPreviousLayoutItemCount=" + mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + mStructureChanged + ", mInPreLayout=" + mInPreLayout + ", mRunSimpleAnimations=" + mRunSimpleAnimations + ", mRunPredictiveAnimations=" + mRunPredictiveAnimations + '}';
  }
  
  public boolean willRunPredictiveAnimations()
  {
    return mRunPredictiveAnimations;
  }
  
  public boolean willRunSimpleAnimations()
  {
    return mRunSimpleAnimations;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.State
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */