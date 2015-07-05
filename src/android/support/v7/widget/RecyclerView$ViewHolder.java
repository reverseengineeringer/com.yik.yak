package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

public abstract class RecyclerView$ViewHolder
{
  static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
  static final int FLAG_BOUND = 1;
  static final int FLAG_CHANGED = 64;
  static final int FLAG_IGNORE = 128;
  static final int FLAG_INVALID = 4;
  static final int FLAG_NOT_RECYCLABLE = 16;
  static final int FLAG_REMOVED = 8;
  static final int FLAG_RETURNED_FROM_SCRAP = 32;
  static final int FLAG_TMP_DETACHED = 256;
  static final int FLAG_UPDATE = 2;
  public final View itemView;
  private int mFlags;
  private int mIsRecyclableCount = 0;
  long mItemId = -1L;
  int mItemViewType = -1;
  int mOldPosition = -1;
  RecyclerView mOwnerRecyclerView;
  int mPosition = -1;
  int mPreLayoutPosition = -1;
  private RecyclerView.Recycler mScrapContainer = null;
  ViewHolder mShadowedHolder = null;
  ViewHolder mShadowingHolder = null;
  
  public RecyclerView$ViewHolder(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    itemView = paramView;
  }
  
  private boolean doesTransientStatePreventRecycling()
  {
    return ((mFlags & 0x10) == 0) && (ViewCompat.hasTransientState(itemView));
  }
  
  private boolean shouldBeKeptAsChild()
  {
    return (mFlags & 0x10) != 0;
  }
  
  void addFlags(int paramInt)
  {
    mFlags |= paramInt;
  }
  
  void clearOldPosition()
  {
    mOldPosition = -1;
    mPreLayoutPosition = -1;
  }
  
  void clearReturnedFromScrapFlag()
  {
    mFlags &= 0xFFFFFFDF;
  }
  
  void clearTmpDetachFlag()
  {
    mFlags &= 0xFEFF;
  }
  
  void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    addFlags(8);
    offsetPosition(paramInt2, paramBoolean);
    mPosition = paramInt1;
  }
  
  public final int getAdapterPosition()
  {
    if (mOwnerRecyclerView == null) {
      return -1;
    }
    return RecyclerView.access$4600(mOwnerRecyclerView, this);
  }
  
  public final long getItemId()
  {
    return mItemId;
  }
  
  public final int getItemViewType()
  {
    return mItemViewType;
  }
  
  public final int getLayoutPosition()
  {
    if (mPreLayoutPosition == -1) {
      return mPosition;
    }
    return mPreLayoutPosition;
  }
  
  public final int getOldPosition()
  {
    return mOldPosition;
  }
  
  @Deprecated
  public final int getPosition()
  {
    if (mPreLayoutPosition == -1) {
      return mPosition;
    }
    return mPreLayoutPosition;
  }
  
  boolean hasAnyOfTheFlags(int paramInt)
  {
    return (mFlags & paramInt) != 0;
  }
  
  boolean isAdapterPositionUnknown()
  {
    return ((mFlags & 0x200) != 0) || (isInvalid());
  }
  
  boolean isBound()
  {
    return (mFlags & 0x1) != 0;
  }
  
  boolean isChanged()
  {
    return (mFlags & 0x40) != 0;
  }
  
  boolean isInvalid()
  {
    return (mFlags & 0x4) != 0;
  }
  
  public final boolean isRecyclable()
  {
    return ((mFlags & 0x10) == 0) && (!ViewCompat.hasTransientState(itemView));
  }
  
  boolean isRemoved()
  {
    return (mFlags & 0x8) != 0;
  }
  
  boolean isScrap()
  {
    return mScrapContainer != null;
  }
  
  boolean isTmpDetached()
  {
    return (mFlags & 0x100) != 0;
  }
  
  boolean needsUpdate()
  {
    return (mFlags & 0x2) != 0;
  }
  
  void offsetPosition(int paramInt, boolean paramBoolean)
  {
    if (mOldPosition == -1) {
      mOldPosition = mPosition;
    }
    if (mPreLayoutPosition == -1) {
      mPreLayoutPosition = mPosition;
    }
    if (paramBoolean) {
      mPreLayoutPosition += paramInt;
    }
    mPosition += paramInt;
    if (itemView.getLayoutParams() != null) {
      itemView.getLayoutParams()).mInsetsDirty = true;
    }
  }
  
  void resetInternal()
  {
    mFlags = 0;
    mPosition = -1;
    mOldPosition = -1;
    mItemId = -1L;
    mPreLayoutPosition = -1;
    mIsRecyclableCount = 0;
    mShadowedHolder = null;
    mShadowingHolder = null;
  }
  
  void saveOldPosition()
  {
    if (mOldPosition == -1) {
      mOldPosition = mPosition;
    }
  }
  
  void setFlags(int paramInt1, int paramInt2)
  {
    mFlags = (mFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final void setIsRecyclable(boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = mIsRecyclableCount - 1;
      mIsRecyclableCount = i;
      if (mIsRecyclableCount >= 0) {
        break label59;
      }
      mIsRecyclableCount = 0;
      new StringBuilder().append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ").append(this).toString();
    }
    label59:
    do
    {
      return;
      i = mIsRecyclableCount + 1;
      break;
      if ((!paramBoolean) && (mIsRecyclableCount == 1))
      {
        mFlags |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (mIsRecyclableCount != 0));
    mFlags &= 0xFFFFFFEF;
  }
  
  void setScrapContainer(RecyclerView.Recycler paramRecycler)
  {
    mScrapContainer = paramRecycler;
  }
  
  boolean shouldIgnore()
  {
    return (mFlags & 0x80) != 0;
  }
  
  void stopIgnoring()
  {
    mFlags &= 0xFF7F;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + mPosition + " id=" + mItemId + ", oldPos=" + mOldPosition + ", pLpos:" + mPreLayoutPosition);
    if (isScrap()) {
      localStringBuilder.append(" scrap");
    }
    if (isInvalid()) {
      localStringBuilder.append(" invalid");
    }
    if (!isBound()) {
      localStringBuilder.append(" unbound");
    }
    if (needsUpdate()) {
      localStringBuilder.append(" update");
    }
    if (isRemoved()) {
      localStringBuilder.append(" removed");
    }
    if (shouldIgnore()) {
      localStringBuilder.append(" ignored");
    }
    if (isChanged()) {
      localStringBuilder.append(" changed");
    }
    if (isTmpDetached()) {
      localStringBuilder.append(" tmpDetached");
    }
    if (!isRecyclable()) {
      localStringBuilder.append(" not recyclable(" + mIsRecyclableCount + ")");
    }
    if (isAdapterPositionUnknown()) {
      localStringBuilder.append("undefined adapter position");
    }
    if (itemView.getParent() == null) {
      localStringBuilder.append(" no parent");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  void unScrap()
  {
    mScrapContainer.unscrapView(this);
  }
  
  boolean wasReturnedFromScrap()
  {
    return (mFlags & 0x20) != 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */