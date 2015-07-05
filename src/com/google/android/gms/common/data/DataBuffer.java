package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.api.Releasable;
import java.util.Iterator;

public abstract class DataBuffer<T>
  implements Releasable, Iterable<T>
{
  protected final DataHolder JG;
  
  protected DataBuffer(DataHolder paramDataHolder)
  {
    JG = paramDataHolder;
    if (JG != null) {
      JG.e(this);
    }
  }
  
  @Deprecated
  public final void close()
  {
    release();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bundle gV()
  {
    return JG.gV();
  }
  
  public abstract T get(int paramInt);
  
  public int getCount()
  {
    if (JG == null) {
      return 0;
    }
    return JG.getCount();
  }
  
  @Deprecated
  public boolean isClosed()
  {
    if (JG == null) {
      return true;
    }
    return JG.isClosed();
  }
  
  public Iterator<T> iterator()
  {
    return new c(this);
  }
  
  public void release()
  {
    if (JG != null) {
      JG.close();
    }
  }
  
  public Iterator<T> singleRefIterator()
  {
    return new h(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */