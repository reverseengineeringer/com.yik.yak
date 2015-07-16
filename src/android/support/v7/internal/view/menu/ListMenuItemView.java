package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;
import x;

public class ListMenuItemView
  extends LinearLayout
  implements x
{
  private MenuItemImpl a;
  private ImageView b;
  private RadioButton c;
  private TextView d;
  private CheckBox e;
  private TextView f;
  private Drawable g;
  private int h;
  private Context i;
  private boolean j;
  private int k;
  private Context l;
  private LayoutInflater m;
  private boolean n;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    l = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MenuView, paramInt, 0);
    g = paramAttributeSet.getDrawable(R.styleable.MenuView_android_itemBackground);
    h = paramAttributeSet.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
    j = paramAttributeSet.getBoolean(R.styleable.MenuView_preserveIconSpacing, false);
    i = paramContext;
    paramAttributeSet.recycle();
  }
  
  private void c()
  {
    b = ((ImageView)f().inflate(R.layout.abc_list_menu_item_icon, this, false));
    addView(b, 0);
  }
  
  private void d()
  {
    c = ((RadioButton)f().inflate(R.layout.abc_list_menu_item_radio, this, false));
    addView(c);
  }
  
  private void e()
  {
    e = ((CheckBox)f().inflate(R.layout.abc_list_menu_item_checkbox, this, false));
    addView(e);
  }
  
  private LayoutInflater f()
  {
    if (m == null) {
      m = LayoutInflater.from(l);
    }
    return m;
  }
  
  public MenuItemImpl a()
  {
    return a;
  }
  
  public void a(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    a = paramMenuItemImpl;
    k = paramInt;
    if (paramMenuItemImpl.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      setTitle(paramMenuItemImpl.a(this));
      setCheckable(paramMenuItemImpl.isCheckable());
      setShortcut(paramMenuItemImpl.e(), paramMenuItemImpl.c());
      setIcon(paramMenuItemImpl.getIcon());
      setEnabled(paramMenuItemImpl.isEnabled());
      return;
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(g);
    d = ((TextView)findViewById(R.id.title));
    if (h != -1) {
      d.setTextAppearance(i, h);
    }
    f = ((TextView)findViewById(R.id.shortcut));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((b != null) && (j))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)b.getLayoutParams();
      if ((height > 0) && (width <= 0)) {
        width = height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (c == null) && (e == null)) {}
    label51:
    label133:
    label139:
    do
    {
      return;
      Object localObject1;
      Object localObject2;
      if (a.f())
      {
        if (c == null) {
          d();
        }
        localObject1 = c;
        localObject2 = e;
        if (!paramBoolean) {
          break label139;
        }
        ((CompoundButton)localObject1).setChecked(a.isChecked());
        if (!paramBoolean) {
          break label133;
        }
      }
      for (int i1 = 0;; i1 = 8)
      {
        if (((CompoundButton)localObject1).getVisibility() != i1) {
          ((CompoundButton)localObject1).setVisibility(i1);
        }
        if ((localObject2 == null) || (((CompoundButton)localObject2).getVisibility() == 8)) {
          break;
        }
        ((CompoundButton)localObject2).setVisibility(8);
        return;
        if (e == null) {
          e();
        }
        localObject1 = e;
        localObject2 = c;
        break label51;
      }
      if (e != null) {
        e.setVisibility(8);
      }
    } while (c == null);
    c.setVisibility(8);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (a.f()) {
      if (c == null) {
        d();
      }
    }
    for (Object localObject = c;; localObject = e)
    {
      ((CompoundButton)localObject).setChecked(paramBoolean);
      return;
      if (e == null) {
        e();
      }
    }
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    n = paramBoolean;
    j = paramBoolean;
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i1;
    if ((a.h()) || (n))
    {
      i1 = 1;
      if ((i1 != 0) || (j)) {
        break label36;
      }
    }
    label36:
    while ((b == null) && (paramDrawable == null) && (!j))
    {
      return;
      i1 = 0;
      break;
    }
    if (b == null) {
      c();
    }
    if ((paramDrawable != null) || (j))
    {
      ImageView localImageView = b;
      if (i1 != 0) {}
      for (;;)
      {
        localImageView.setImageDrawable(paramDrawable);
        if (b.getVisibility() == 0) {
          break;
        }
        b.setVisibility(0);
        return;
        paramDrawable = null;
      }
    }
    b.setVisibility(8);
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar)
  {
    if ((paramBoolean) && (a.e())) {}
    for (paramChar = '\000';; paramChar = '\b')
    {
      if (paramChar == 0) {
        f.setText(a.d());
      }
      if (f.getVisibility() != paramChar) {
        f.setVisibility(paramChar);
      }
      return;
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      d.setText(paramCharSequence);
      if (d.getVisibility() != 0) {
        d.setVisibility(0);
      }
    }
    while (d.getVisibility() == 8) {
      return;
    }
    d.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ListMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */