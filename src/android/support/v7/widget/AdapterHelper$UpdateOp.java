package android.support.v7.widget;

class AdapterHelper$UpdateOp
{
  static final int ADD = 0;
  static final int MOVE = 3;
  static final int POOL_SIZE = 30;
  static final int REMOVE = 1;
  static final int UPDATE = 2;
  int cmd;
  int itemCount;
  int positionStart;
  
  AdapterHelper$UpdateOp(int paramInt1, int paramInt2, int paramInt3)
  {
    cmd = paramInt1;
    positionStart = paramInt2;
    itemCount = paramInt3;
  }
  
  String cmdToString()
  {
    switch (cmd)
    {
    default: 
      return "??";
    case 0: 
      return "add";
    case 1: 
      return "rm";
    case 2: 
      return "up";
    }
    return "mv";
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (UpdateOp)paramObject;
        if (cmd != cmd) {
          return false;
        }
      } while ((cmd == 3) && (Math.abs(itemCount - positionStart) == 1) && (itemCount == positionStart) && (positionStart == itemCount));
      if (itemCount != itemCount) {
        return false;
      }
    } while (positionStart == positionStart);
    return false;
  }
  
  public int hashCode()
  {
    return (cmd * 31 + positionStart) * 31 + itemCount;
  }
  
  public String toString()
  {
    return "[" + cmdToString() + ",s:" + positionStart + "c:" + itemCount + "]";
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AdapterHelper.UpdateOp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */