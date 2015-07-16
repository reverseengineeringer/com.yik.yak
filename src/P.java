import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class p
  extends e<MenuItem.OnMenuItemClickListener>
  implements MenuItem.OnMenuItemClickListener
{
  p(l paraml, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    super(paramOnMenuItemClickListener);
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnMenuItemClickListener)b).onMenuItemClick(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */