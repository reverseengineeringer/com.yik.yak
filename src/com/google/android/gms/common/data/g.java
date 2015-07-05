package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class g<T>
  extends DataBuffer<T>
{
  private boolean Lr = false;
  private ArrayList<Integer> Ls;
  
  protected g(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  private void hb()
  {
    for (;;)
    {
      int i;
      String str2;
      try
      {
        if (Lr) {
          break label193;
        }
        int j = JG.getCount();
        Ls = new ArrayList();
        if (j <= 0) {
          break label188;
        }
        Ls.add(Integer.valueOf(0));
        String str3 = ha();
        i = JG.au(0);
        String str1 = JG.c(str3, 0, i);
        i = 1;
        if (i >= j) {
          break label188;
        }
        int k = JG.au(i);
        str2 = JG.c(str3, i, k);
        if (str2 == null) {
          throw new NullPointerException("Missing value for markerColumn: " + str3 + ", at row: " + i + ", for window: " + k);
        }
      }
      finally {}
      if (!str2.equals(localObject1))
      {
        Ls.add(Integer.valueOf(i));
        Object localObject2 = str2;
        break label196;
        label188:
        Lr = true;
        label193:
        return;
      }
      label196:
      i += 1;
    }
  }
  
  int ax(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= Ls.size())) {
      throw new IllegalArgumentException("Position " + paramInt + " is out of bounds for this buffer");
    }
    return ((Integer)Ls.get(paramInt)).intValue();
  }
  
  protected int ay(int paramInt)
  {
    int j;
    if ((paramInt < 0) || (paramInt == Ls.size()))
    {
      j = 0;
      return j;
    }
    if (paramInt == Ls.size() - 1) {}
    for (int i = JG.getCount() - ((Integer)Ls.get(paramInt)).intValue();; i = ((Integer)Ls.get(paramInt + 1)).intValue() - ((Integer)Ls.get(paramInt)).intValue())
    {
      j = i;
      if (i != 1) {
        break;
      }
      paramInt = ax(paramInt);
      int k = JG.au(paramInt);
      String str = hc();
      j = i;
      if (str == null) {
        break;
      }
      j = i;
      if (JG.c(str, paramInt, k) != null) {
        break;
      }
      return 0;
    }
  }
  
  protected abstract T f(int paramInt1, int paramInt2);
  
  public final T get(int paramInt)
  {
    hb();
    return (T)f(ax(paramInt), ay(paramInt));
  }
  
  public int getCount()
  {
    hb();
    return Ls.size();
  }
  
  protected abstract String ha();
  
  protected String hc()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */