import android.view.View;

class ub
{
  private final int a;
  
  public ub(View paramView, String paramString)
  {
    a = (paramView.hashCode() ^ paramString.hashCode());
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ub))
    {
      bool1 = bool2;
      if (a == paramObject.hashCode()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */