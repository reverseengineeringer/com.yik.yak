import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.ListPopupWindow.ForwardingListener;

public class b
  extends ListPopupWindow.ForwardingListener
{
  public b(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }
  
  public ListPopupWindow getPopup()
  {
    if (ActionMenuItemView.a(a) != null) {
      return ActionMenuItemView.a(a).getPopup();
    }
    return null;
  }
  
  protected boolean onForwardingStarted()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ActionMenuItemView.b(a) != null)
    {
      bool1 = bool2;
      if (ActionMenuItemView.b(a).invokeItem(ActionMenuItemView.c(a)))
      {
        ListPopupWindow localListPopupWindow = getPopup();
        bool1 = bool2;
        if (localListPopupWindow != null)
        {
          bool1 = bool2;
          if (localListPopupWindow.isShowing()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  protected boolean onForwardingStopped()
  {
    ListPopupWindow localListPopupWindow = getPopup();
    if (localListPopupWindow != null)
    {
      localListPopupWindow.dismiss();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */