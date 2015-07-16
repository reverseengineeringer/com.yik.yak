package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v7.internal.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import i;
import w;

public final class ExpandedMenuView
  extends ListView
  implements AdapterView.OnItemClickListener, i, w
{
  private static final int[] a = { 16842964, 16843049 };
  private MenuBuilder b;
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, a, paramInt, 0);
    if (paramContext.hasValue(0)) {
      setBackgroundDrawable(paramContext.getDrawable(0));
    }
    if (paramContext.hasValue(1)) {
      setDivider(paramContext.getDrawable(1));
    }
    paramContext.recycle();
  }
  
  public void initialize(MenuBuilder paramMenuBuilder)
  {
    b = paramMenuBuilder;
  }
  
  public boolean invokeItem(MenuItemImpl paramMenuItemImpl)
  {
    return b.a(paramMenuItemImpl, 0);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    invokeItem((MenuItemImpl)getAdapter().getItem(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ExpandedMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */