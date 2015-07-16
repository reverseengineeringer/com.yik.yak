import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

class r
  extends m
  implements android.view.ActionProvider.VisibilityListener
{
  android.support.v4.view.ActionProvider.VisibilityListener c;
  
  public r(q paramq, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramq, paramContext, paramActionProvider);
  }
  
  public boolean isVisible()
  {
    return a.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (c != null) {
      c.onActionProviderVisibilityChanged(paramBoolean);
    }
  }
  
  public View onCreateActionView(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public boolean overridesItemVisibility()
  {
    return a.overridesItemVisibility();
  }
  
  public void refreshVisibility()
  {
    a.refreshVisibility();
  }
  
  public void setVisibilityListener(android.support.v4.view.ActionProvider.VisibilityListener paramVisibilityListener)
  {
    c = paramVisibilityListener;
    ActionProvider localActionProvider = a;
    if (paramVisibilityListener != null) {}
    for (paramVisibilityListener = this;; paramVisibilityListener = null)
    {
      localActionProvider.setVisibilityListener(paramVisibilityListener);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */