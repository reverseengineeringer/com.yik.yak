import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

class o
  extends e<MenuItem.OnActionExpandListener>
  implements MenuItemCompat.OnActionExpandListener
{
  o(l paraml, MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    super(paramOnActionExpandListener);
  }
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)b).onMenuItemActionCollapse(a.a(paramMenuItem));
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)b).onMenuItemActionExpand(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */