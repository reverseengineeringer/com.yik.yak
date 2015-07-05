import android.content.Context;
import android.view.SubMenu;
import android.view.View;

class p
  extends android.support.v4.view.ActionProvider
{
  final android.view.ActionProvider a;
  
  public p(o paramo, Context paramContext, android.view.ActionProvider paramActionProvider)
  {
    super(paramContext);
    a = paramActionProvider;
  }
  
  public boolean hasSubMenu()
  {
    return a.hasSubMenu();
  }
  
  public View onCreateActionView()
  {
    return a.onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return a.onPerformDefaultAction();
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    a.onPrepareSubMenu(b.a(paramSubMenu));
  }
}

/* Location:
 * Qualified Name:     p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */