package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class b
  implements Releasable, Result
{
  protected final Status Eb;
  protected final DataHolder JG;
  
  protected b(DataHolder paramDataHolder)
  {
    Eb = new Status(paramDataHolder.getStatusCode());
    JG = paramDataHolder;
  }
  
  public Status getStatus()
  {
    return Eb;
  }
  
  public void release()
  {
    if (JG != null) {
      JG.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */