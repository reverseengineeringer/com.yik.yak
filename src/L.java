import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

@TargetApi(14)
public class l
  extends d<SupportMenuItem>
  implements MenuItem
{
  private Method c;
  
  l(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }
  
  m a(android.view.ActionProvider paramActionProvider)
  {
    return new m(this, a, paramActionProvider);
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (c == null) {
        c = ((SupportMenuItem)b).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
      }
      c.invoke(b, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException) {}
  }
  
  public boolean collapseActionView()
  {
    return ((SupportMenuItem)b).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((SupportMenuItem)b).expandActionView();
  }
  
  public android.view.ActionProvider getActionProvider()
  {
    android.support.v4.view.ActionProvider localActionProvider = ((SupportMenuItem)b).getSupportActionProvider();
    if ((localActionProvider instanceof m)) {
      return a;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = ((SupportMenuItem)b).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof n)) {
      localView1 = ((n)localView2).a();
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return ((SupportMenuItem)b).getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return ((SupportMenuItem)b).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((SupportMenuItem)b).getIcon();
  }
  
  public Intent getIntent()
  {
    return ((SupportMenuItem)b).getIntent();
  }
  
  public int getItemId()
  {
    return ((SupportMenuItem)b).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((SupportMenuItem)b).getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return ((SupportMenuItem)b).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((SupportMenuItem)b).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((SupportMenuItem)b).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((SupportMenuItem)b).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((SupportMenuItem)b).getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return ((SupportMenuItem)b).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((SupportMenuItem)b).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((SupportMenuItem)b).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((SupportMenuItem)b).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((SupportMenuItem)b).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((SupportMenuItem)b).isVisible();
  }
  
  public MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramActionProvider != null) {}
    for (paramActionProvider = a(paramActionProvider);; paramActionProvider = null)
    {
      localSupportMenuItem.setSupportActionProvider(paramActionProvider);
      return this;
    }
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((SupportMenuItem)b).setActionView(paramInt);
    View localView = ((SupportMenuItem)b).getActionView();
    if ((localView instanceof CollapsibleActionView)) {
      ((SupportMenuItem)b).setActionView(new n(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView)) {
      localObject = new n(paramView);
    }
    ((SupportMenuItem)b).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((SupportMenuItem)b).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((SupportMenuItem)b).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((SupportMenuItem)b).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((SupportMenuItem)b).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((SupportMenuItem)b).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramOnActionExpandListener != null) {}
    for (paramOnActionExpandListener = new o(this, paramOnActionExpandListener);; paramOnActionExpandListener = null)
    {
      localSupportMenuItem.setSupportOnActionExpandListener(paramOnActionExpandListener);
      return this;
    }
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new p(this, paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localSupportMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((SupportMenuItem)b).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((SupportMenuItem)b).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((SupportMenuItem)b).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((SupportMenuItem)b).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((SupportMenuItem)b).setVisible(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */