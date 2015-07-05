package com.google.android.gms.common.data;

import iE;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class c<T>
  implements Iterator<T>
{
  protected final DataBuffer<T> KW;
  protected int KX;
  
  public c(DataBuffer<T> paramDataBuffer)
  {
    KW = ((DataBuffer)iE.a(paramDataBuffer));
    KX = -1;
  }
  
  public boolean hasNext()
  {
    return KX < KW.getCount() - 1;
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + KX);
    }
    DataBuffer localDataBuffer = KW;
    int i = KX + 1;
    KX = i;
    return (T)localDataBuffer.get(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */