package com.google.android.gms.common.data;

public abstract interface DataBufferObserver
{
  public abstract void onDataChanged();
  
  public abstract void onDataRangeChanged(int paramInt1, int paramInt2);
  
  public abstract void onDataRangeInserted(int paramInt1, int paramInt2);
  
  public abstract void onDataRangeMoved(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onDataRangeRemoved(int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataBufferObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */