package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public class h<T>
  extends c<T>
{
  private T Lt;
  
  public h(DataBuffer<T> paramDataBuffer)
  {
    super(paramDataBuffer);
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + KX);
    }
    KX += 1;
    if (KX == 0)
    {
      Lt = KW.get(0);
      if (!(Lt instanceof d)) {
        throw new IllegalStateException("DataBuffer reference of type " + Lt.getClass() + " is not movable");
      }
    }
    else
    {
      ((d)Lt).as(KX);
    }
    return (T)Lt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */