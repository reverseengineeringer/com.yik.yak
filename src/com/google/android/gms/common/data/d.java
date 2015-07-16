package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import iB;
import ix;

public abstract class d
{
  protected final DataHolder JG;
  protected int KZ;
  private int La;
  
  public d(DataHolder paramDataHolder, int paramInt)
  {
    JG = ((DataHolder)iB.a(paramDataHolder));
    as(paramInt);
  }
  
  protected void a(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    JG.a(paramString, KZ, La, paramCharArrayBuffer);
  }
  
  public boolean aQ(String paramString)
  {
    return JG.aQ(paramString);
  }
  
  protected Uri aR(String paramString)
  {
    return JG.g(paramString, KZ, La);
  }
  
  protected boolean aS(String paramString)
  {
    return JG.h(paramString, KZ, La);
  }
  
  protected void as(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < JG.getCount())) {}
    for (boolean bool = true;; bool = false)
    {
      iB.a(bool);
      KZ = paramInt;
      La = JG.au(KZ);
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      bool1 = bool2;
      if (ix.a(Integer.valueOf(KZ), Integer.valueOf(KZ)))
      {
        bool1 = bool2;
        if (ix.a(Integer.valueOf(La), Integer.valueOf(La)))
        {
          bool1 = bool2;
          if (JG == JG) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  protected int gW()
  {
    return KZ;
  }
  
  protected boolean getBoolean(String paramString)
  {
    return JG.d(paramString, KZ, La);
  }
  
  protected byte[] getByteArray(String paramString)
  {
    return JG.f(paramString, KZ, La);
  }
  
  protected float getFloat(String paramString)
  {
    return JG.e(paramString, KZ, La);
  }
  
  protected int getInteger(String paramString)
  {
    return JG.b(paramString, KZ, La);
  }
  
  protected long getLong(String paramString)
  {
    return JG.a(paramString, KZ, La);
  }
  
  protected String getString(String paramString)
  {
    return JG.c(paramString, KZ, La);
  }
  
  public int hashCode()
  {
    return ix.a(new Object[] { Integer.valueOf(KZ), Integer.valueOf(La), JG });
  }
  
  public boolean isDataValid()
  {
    return !JG.isClosed();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */