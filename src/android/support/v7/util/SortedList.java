package android.support.v7.util;

import java.lang.reflect.Array;

public class SortedList<T>
{
  private static final int CAPACITY_GROWTH = 10;
  private static final int DELETION = 2;
  private static final int INSERTION = 1;
  public static final int INVALID_POSITION = -1;
  private static final int LOOKUP = 4;
  private static final int MIN_CAPACITY = 10;
  private SortedList.BatchedCallback mBatchedCallback;
  private SortedList.Callback mCallback;
  T[] mData;
  private int mSize;
  private final Class<T> mTClass;
  
  public SortedList(Class<T> paramClass, SortedList.Callback<T> paramCallback)
  {
    this(paramClass, paramCallback, 10);
  }
  
  public SortedList(Class<T> paramClass, SortedList.Callback<T> paramCallback, int paramInt)
  {
    mTClass = paramClass;
    mData = ((Object[])Array.newInstance(paramClass, paramInt));
    mCallback = paramCallback;
    mSize = 0;
  }
  
  private int add(T paramT, boolean paramBoolean)
  {
    int j = findIndexOf(paramT, 1);
    int i;
    if (j == -1) {
      i = 0;
    }
    Object localObject;
    do
    {
      do
      {
        addToData(i, paramT);
        if (paramBoolean) {
          mCallback.onInserted(i, 1);
        }
        return i;
        i = j;
      } while (j >= mSize);
      localObject = mData[j];
      i = j;
    } while (!mCallback.areItemsTheSame(localObject, paramT));
    if (mCallback.areContentsTheSame(localObject, paramT))
    {
      mData[j] = paramT;
      return j;
    }
    mData[j] = paramT;
    mCallback.onChanged(j, 1);
    return j;
  }
  
  private void addToData(int paramInt, T paramT)
  {
    if (paramInt > mSize) {
      throw new IndexOutOfBoundsException("cannot add item to " + paramInt + " because size is " + mSize);
    }
    if (mSize == mData.length)
    {
      Object[] arrayOfObject = (Object[])Array.newInstance(mTClass, mData.length + 10);
      System.arraycopy(mData, 0, arrayOfObject, 0, paramInt);
      arrayOfObject[paramInt] = paramT;
      System.arraycopy(mData, paramInt, arrayOfObject, paramInt + 1, mSize - paramInt);
      mData = arrayOfObject;
    }
    for (;;)
    {
      mSize += 1;
      return;
      System.arraycopy(mData, paramInt, mData, paramInt + 1, mSize - paramInt);
      mData[paramInt] = paramT;
    }
  }
  
  private int findIndexOf(T paramT, int paramInt)
  {
    int i = 0;
    int j = mSize;
    if (i < j)
    {
      int k = (i + j) / 2;
      Object localObject = mData[k];
      int m = mCallback.compare(localObject, paramT);
      if (m < 0)
      {
        k += 1;
        i = j;
        j = k;
      }
      for (;;)
      {
        k = j;
        j = i;
        i = k;
        break;
        if (m == 0)
        {
          if (mCallback.areItemsTheSame(localObject, paramT)) {}
          do
          {
            return k;
            i = linearEqualitySearch(paramT, k, i, j);
            if (paramInt != 1) {
              break;
            }
          } while (i == -1);
          return i;
          return i;
        }
        j = i;
        i = k;
      }
    }
    if (paramInt == 1) {}
    for (;;)
    {
      return i;
      i = -1;
    }
  }
  
  private int linearEqualitySearch(T paramT, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = paramInt1 - 1;
    Object localObject;
    if (j >= paramInt2)
    {
      localObject = mData[j];
      if (mCallback.compare(localObject, paramT) == 0) {}
    }
    else
    {
      paramInt1 += 1;
    }
    for (;;)
    {
      int i;
      if (paramInt1 < paramInt3)
      {
        localObject = mData[paramInt1];
        if (mCallback.compare(localObject, paramT) == 0) {}
      }
      else
      {
        i = -1;
      }
      do
      {
        do
        {
          return i;
          i = j;
        } while (mCallback.areItemsTheSame(localObject, paramT));
        j -= 1;
        break;
        i = paramInt1;
      } while (mCallback.areItemsTheSame(localObject, paramT));
      paramInt1 += 1;
    }
  }
  
  private boolean remove(T paramT, boolean paramBoolean)
  {
    int i = findIndexOf(paramT, 2);
    if (i == -1) {
      return false;
    }
    removeItemAtIndex(i, paramBoolean);
    return true;
  }
  
  private void removeItemAtIndex(int paramInt, boolean paramBoolean)
  {
    System.arraycopy(mData, paramInt + 1, mData, paramInt, mSize - paramInt - 1);
    mSize -= 1;
    mData[mSize] = null;
    if (paramBoolean) {
      mCallback.onRemoved(paramInt, 1);
    }
  }
  
  public int add(T paramT)
  {
    return add(paramT, true);
  }
  
  public void beginBatchedUpdates()
  {
    if ((mCallback instanceof SortedList.BatchedCallback)) {
      return;
    }
    if (mBatchedCallback == null) {
      mBatchedCallback = new SortedList.BatchedCallback(mCallback);
    }
    mCallback = mBatchedCallback;
  }
  
  public void endBatchedUpdates()
  {
    if ((mCallback instanceof SortedList.BatchedCallback)) {
      ((SortedList.BatchedCallback)mCallback).dispatchLastEvent();
    }
    if (mCallback == mBatchedCallback) {
      mCallback = SortedList.BatchedCallback.access$000(mBatchedCallback);
    }
  }
  
  public T get(int paramInt)
  {
    if ((paramInt >= mSize) || (paramInt < 0)) {
      throw new IndexOutOfBoundsException("Asked to get item at " + paramInt + " but size is " + mSize);
    }
    return (T)mData[paramInt];
  }
  
  public int indexOf(T paramT)
  {
    return findIndexOf(paramT, 4);
  }
  
  public void recalculatePositionOfItemAt(int paramInt)
  {
    Object localObject = get(paramInt);
    removeItemAtIndex(paramInt, false);
    int i = add(localObject, false);
    if (paramInt != i) {
      mCallback.onMoved(paramInt, i);
    }
  }
  
  public boolean remove(T paramT)
  {
    return remove(paramT, true);
  }
  
  public T removeItemAt(int paramInt)
  {
    Object localObject = get(paramInt);
    removeItemAtIndex(paramInt, true);
    return (T)localObject;
  }
  
  public int size()
  {
    return mSize;
  }
  
  public void updateItemAt(int paramInt, T paramT)
  {
    Object localObject = get(paramInt);
    int i;
    if ((localObject == paramT) || (!mCallback.areContentsTheSame(localObject, paramT)))
    {
      i = 1;
      if ((localObject == paramT) || (mCallback.compare(localObject, paramT) != 0)) {
        break label73;
      }
      mData[paramInt] = paramT;
      if (i != 0) {
        mCallback.onChanged(paramInt, 1);
      }
    }
    label73:
    do
    {
      return;
      i = 0;
      break;
      if (i != 0) {
        mCallback.onChanged(paramInt, 1);
      }
      removeItemAtIndex(paramInt, false);
      i = add(paramT, false);
    } while (paramInt == i);
    mCallback.onMoved(paramInt, i);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.SortedList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */