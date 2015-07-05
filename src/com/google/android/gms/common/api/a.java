package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class a<L>
  implements d.b<L>
{
  private final DataHolder JG;
  
  protected a(DataHolder paramDataHolder)
  {
    JG = paramDataHolder;
  }
  
  protected abstract void a(L paramL, DataHolder paramDataHolder);
  
  public final void c(L paramL)
  {
    a(paramL, JG);
  }
  
  public void gG()
  {
    if (JG != null) {
      JG.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */