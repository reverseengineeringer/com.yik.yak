package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R.bool;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import u;

public class MenuBuilder
  implements SupportMenu
{
  private static final int[] d = { 1, 4, 5, 3, 2, 0 };
  CharSequence a;
  Drawable b;
  View c;
  private final Context e;
  private final Resources f;
  private boolean g;
  private boolean h;
  private h i;
  private ArrayList<MenuItemImpl> j;
  private ArrayList<MenuItemImpl> k;
  private boolean l;
  private ArrayList<MenuItemImpl> m;
  private ArrayList<MenuItemImpl> n;
  private boolean o;
  private int p = 0;
  private ContextMenu.ContextMenuInfo q;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private ArrayList<MenuItemImpl> v = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<u>> w = new CopyOnWriteArrayList();
  private MenuItemImpl x;
  
  public MenuBuilder(Context paramContext)
  {
    e = paramContext;
    f = paramContext.getResources();
    j = new ArrayList();
    k = new ArrayList();
    l = true;
    m = new ArrayList();
    n = new ArrayList();
    o = true;
    d(true);
  }
  
  private static int a(ArrayList<MenuItemImpl> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((MenuItemImpl)paramArrayList.get(i1)).b() <= paramInt) {
        return i1 + 1;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private MenuItemImpl a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    return new MenuItemImpl(this, paramInt1, paramInt2, paramInt3, paramInt4, paramCharSequence, paramInt5);
  }
  
  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = d(paramInt3);
    paramCharSequence = a(paramInt1, paramInt2, paramInt3, i1, paramCharSequence, p);
    if (q != null) {
      paramCharSequence.a(q);
    }
    j.add(a(j, i1), paramCharSequence);
    b(true);
    return paramCharSequence;
  }
  
  private void a(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = d();
    if (paramView != null)
    {
      c = paramView;
      a = null;
      b = null;
      b(false);
      return;
    }
    if (paramInt1 > 0)
    {
      a = localResources.getText(paramInt1);
      label47:
      if (paramInt2 <= 0) {
        break label83;
      }
      b = ContextCompat.getDrawable(e(), paramInt2);
    }
    for (;;)
    {
      c = null;
      break;
      if (paramCharSequence == null) {
        break label47;
      }
      a = paramCharSequence;
      break label47;
      label83:
      if (paramDrawable != null) {
        b = paramDrawable;
      }
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= j.size())) {}
    do
    {
      return;
      j.remove(paramInt);
    } while (!paramBoolean);
    b(true);
  }
  
  private boolean a(SubMenuBuilder paramSubMenuBuilder, u paramu)
  {
    boolean bool = false;
    if (w.isEmpty()) {
      return false;
    }
    if (paramu != null) {
      bool = paramu.onSubMenuSelected(paramSubMenuBuilder);
    }
    paramu = w.iterator();
    u localu;
    if (paramu.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramu.next();
      localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      }
    }
    for (;;)
    {
      break;
      if (!bool)
      {
        bool = localu.onSubMenuSelected(paramSubMenuBuilder);
        continue;
        return bool;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (w.isEmpty()) {
      return;
    }
    g();
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      } else {
        localu.updateMenuView(paramBoolean);
      }
    }
    h();
  }
  
  private static int d(int paramInt)
  {
    int i1 = (0xFFFF0000 & paramInt) >> 16;
    if ((i1 < 0) || (i1 >= d.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    return d[i1] << 16 | 0xFFFF & paramInt;
  }
  
  private void d(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (f.getConfiguration().keyboard != 1) && (f.getBoolean(R.bool.abc_config_showMenuShortcutsWhenKeyboardPresent))) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      h = paramBoolean;
      return;
    }
  }
  
  private void e(Bundle paramBundle)
  {
    if (w.isEmpty()) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (WeakReference)localIterator.next();
      u localu = (u)((WeakReference)localObject).get();
      if (localu == null)
      {
        w.remove(localObject);
      }
      else
      {
        int i1 = localu.getId();
        if (i1 > 0)
        {
          localObject = localu.onSaveInstanceState();
          if (localObject != null) {
            localSparseArray.put(i1, localObject);
          }
        }
      }
    }
    paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
  }
  
  private void f(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if ((paramBundle == null) || (w.isEmpty())) {}
    for (;;)
    {
      return;
      Iterator localIterator = w.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (WeakReference)localIterator.next();
        u localu = (u)((WeakReference)localObject).get();
        if (localu == null)
        {
          w.remove(localObject);
        }
        else
        {
          int i1 = localu.getId();
          if (i1 > 0)
          {
            localObject = (Parcelable)paramBundle.get(i1);
            if (localObject != null) {
              localu.onRestoreInstanceState((Parcelable)localObject);
            }
          }
        }
      }
    }
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    int i2 = size();
    int i1 = paramInt2;
    if (paramInt2 < 0) {
      i1 = 0;
    }
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).getGroupId() == paramInt1) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public MenuBuilder a(int paramInt)
  {
    p = paramInt;
    return this;
  }
  
  protected MenuBuilder a(Drawable paramDrawable)
  {
    a(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected MenuBuilder a(View paramView)
  {
    a(0, null, 0, null, paramView);
    return this;
  }
  
  protected MenuBuilder a(CharSequence paramCharSequence)
  {
    a(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  MenuItemImpl a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = v;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1) {
      return (MenuItemImpl)localArrayList.get(0);
    }
    boolean bool = b();
    int i1 = 0;
    label84:
    if (i1 < i4)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)localArrayList.get(i1);
      if (bool) {}
      for (int i2 = localMenuItemImpl.getAlphabeticShortcut();; i2 = localMenuItemImpl.getNumericShortcut())
      {
        if (i2 == meta[0])
        {
          paramKeyEvent = localMenuItemImpl;
          if ((i3 & 0x2) == 0) {
            break;
          }
        }
        if (i2 == meta[2])
        {
          paramKeyEvent = localMenuItemImpl;
          if ((i3 & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (i2 == 8))
        {
          paramKeyEvent = localMenuItemImpl;
          if (paramInt == 67) {
            break;
          }
        }
        i1 += 1;
        break label84;
      }
    }
    return null;
  }
  
  protected String a()
  {
    return "android:menu:actionviewstates";
  }
  
  public void a(Bundle paramBundle)
  {
    e(paramBundle);
  }
  
  public void a(MenuItemImpl paramMenuItemImpl)
  {
    l = true;
    b(true);
  }
  
  void a(MenuItem paramMenuItem)
  {
    int i2 = paramMenuItem.getGroupId();
    int i3 = j.size();
    int i1 = 0;
    if (i1 < i3)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if ((localMenuItemImpl.getGroupId() != i2) || (!localMenuItemImpl.f())) {}
      while (!localMenuItemImpl.isCheckable())
      {
        i1 += 1;
        break;
      }
      if (localMenuItemImpl == paramMenuItem) {}
      for (boolean bool = true;; bool = false)
      {
        localMenuItemImpl.b(bool);
        break;
      }
    }
  }
  
  public void a(h paramh)
  {
    i = paramh;
  }
  
  void a(List<MenuItemImpl> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = b();
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int i4 = j.size();
    int i1 = 0;
    label49:
    MenuItemImpl localMenuItemImpl;
    if (i1 < i4)
    {
      localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.hasSubMenu()) {
        ((MenuBuilder)localMenuItemImpl.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label184;
      }
    }
    label184:
    for (int i2 = localMenuItemImpl.getAlphabeticShortcut();; i2 = localMenuItemImpl.getNumericShortcut())
    {
      if (((i3 & 0x5) == 0) && (i2 != 0) && ((i2 == meta[0]) || (i2 == meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localMenuItemImpl.isEnabled())) {
        paramList.add(localMenuItemImpl);
      }
      i1 += 1;
      break label49;
      break;
    }
  }
  
  public void a(u paramu)
  {
    a(paramu, e);
  }
  
  public void a(u paramu, Context paramContext)
  {
    w.add(new WeakReference(paramu));
    paramu.initForMenu(paramContext, this);
    o = true;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (u) {
      return;
    }
    u = true;
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      } else {
        localu.onCloseMenu(this, paramBoolean);
      }
    }
    u = false;
  }
  
  boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (i != null) && (i.onMenuItemSelected(paramMenuBuilder, paramMenuItem));
  }
  
  public boolean a(MenuItem paramMenuItem, int paramInt)
  {
    return a(paramMenuItem, null, paramInt);
  }
  
  public boolean a(MenuItem paramMenuItem, u paramu, int paramInt)
  {
    boolean bool2 = false;
    Object localObject = (MenuItemImpl)paramMenuItem;
    boolean bool1 = bool2;
    if (localObject != null)
    {
      if (((MenuItemImpl)localObject).isEnabled()) {
        break label33;
      }
      bool1 = bool2;
    }
    label33:
    label101:
    do
    {
      return bool1;
      bool1 = ((MenuItemImpl)localObject).a();
      paramMenuItem = ((MenuItemImpl)localObject).getSupportActionProvider();
      if ((paramMenuItem != null) && (paramMenuItem.hasSubMenu())) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (!((MenuItemImpl)localObject).m()) {
          break label101;
        }
        bool2 = ((MenuItemImpl)localObject).expandActionView() | bool1;
        bool1 = bool2;
        if (!bool2) {
          break;
        }
        a(true);
        return bool2;
      }
      if ((!((MenuItemImpl)localObject).hasSubMenu()) && (i1 == 0)) {
        break;
      }
      a(false);
      if (!((MenuItemImpl)localObject).hasSubMenu()) {
        ((MenuItemImpl)localObject).a(new SubMenuBuilder(e(), this, (MenuItemImpl)localObject));
      }
      localObject = (SubMenuBuilder)((MenuItemImpl)localObject).getSubMenu();
      if (i1 != 0) {
        paramMenuItem.onPrepareSubMenu((SubMenu)localObject);
      }
      bool2 = a((SubMenuBuilder)localObject, paramu) | bool1;
      bool1 = bool2;
    } while (bool2);
    a(true);
    return bool2;
    if ((paramInt & 0x1) == 0) {
      a(true);
    }
    return bool1;
  }
  
  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, f.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = e.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i1) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (specificIndex >= 0)) {
        paramArrayOfMenuItem[specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i1 = 0;
      break;
    }
    label214:
    return i1;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, f.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (MenuItemImpl)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    SubMenuBuilder localSubMenuBuilder = new SubMenuBuilder(e, this, paramCharSequence);
    paramCharSequence.a(localSubMenuBuilder);
    return localSubMenuBuilder;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public int b(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).getItemId() == paramInt) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public void b(Bundle paramBundle)
  {
    f(paramBundle);
  }
  
  void b(MenuItemImpl paramMenuItemImpl)
  {
    o = true;
    b(true);
  }
  
  public void b(u paramu)
  {
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if ((localu == null) || (localu == paramu)) {
        w.remove(localWeakReference);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (!r)
    {
      if (paramBoolean)
      {
        l = true;
        o = true;
      }
      c(paramBoolean);
      return;
    }
    s = true;
  }
  
  boolean b()
  {
    return g;
  }
  
  public int c(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  public void c(Bundle paramBundle)
  {
    int i2 = size();
    int i1 = 0;
    Object localObject3;
    for (Object localObject1 = null; i1 < i2; localObject1 = localObject3)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = MenuItemCompat.getActionView(localMenuItem);
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (MenuItemCompat.isActionViewExpanded(localMenuItem))
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((SubMenuBuilder)localMenuItem.getSubMenu()).c(paramBundle);
      }
      i1 += 1;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(a(), (SparseArray)localObject1);
    }
  }
  
  public boolean c()
  {
    return h;
  }
  
  public boolean c(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool2 = false;
    if (w.isEmpty()) {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    boolean bool1 = false;
    if (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      }
      do
      {
        break;
        bool2 = localu.expandItemActionView(this, paramMenuItemImpl);
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = paramMenuItemImpl;
      return bool1;
    }
  }
  
  public void clear()
  {
    if (x != null) {
      d(x);
    }
    j.clear();
    b(true);
  }
  
  public void clearHeader()
  {
    b = null;
    a = null;
    c = null;
    b(false);
  }
  
  public void close()
  {
    a(true);
  }
  
  Resources d()
  {
    return f;
  }
  
  public void d(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i1;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(a());
        int i2 = size();
        i1 = 0;
        while (i1 < i2)
        {
          MenuItem localMenuItem = getItem(i1);
          View localView = MenuItemCompat.getActionView(localMenuItem);
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((SubMenuBuilder)localMenuItem.getSubMenu()).d(paramBundle);
          }
          i1 += 1;
        }
        i1 = paramBundle.getInt("android:menu:expandedactionview");
      } while (i1 <= 0);
      paramBundle = findItem(i1);
    } while (paramBundle == null);
    MenuItemCompat.expandActionView(paramBundle);
  }
  
  public boolean d(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!w.isEmpty())
    {
      if (x != paramMenuItemImpl) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    g();
    Iterator localIterator = w.iterator();
    bool1 = false;
    if (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      u localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      }
      do
      {
        break;
        bool2 = localu.collapseItemActionView(this, paramMenuItemImpl);
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    }
    for (;;)
    {
      h();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      x = null;
      return bool1;
    }
  }
  
  public Context e()
  {
    return e;
  }
  
  public void f()
  {
    if (i != null) {
      i.onMenuModeChange(this);
    }
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (MenuItemImpl)j.get(i1);
      if (((MenuItemImpl)localObject).getItemId() == paramInt) {}
      MenuItem localMenuItem;
      do
      {
        return (MenuItem)localObject;
        if (!((MenuItemImpl)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((MenuItemImpl)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i1 += 1;
    }
    return null;
  }
  
  public void g()
  {
    if (!r)
    {
      r = true;
      s = false;
    }
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)j.get(paramInt);
  }
  
  public void h()
  {
    r = false;
    if (s)
    {
      s = false;
      b(true);
    }
  }
  
  public boolean hasVisibleItems()
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).isVisible()) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public ArrayList<MenuItemImpl> i()
  {
    if (!l) {
      return k;
    }
    k.clear();
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.isVisible()) {
        k.add(localMenuItemImpl);
      }
      i1 += 1;
    }
    l = false;
    o = true;
    return k;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  public void j()
  {
    ArrayList localArrayList = i();
    if (!o) {
      return;
    }
    Object localObject = w.iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      u localu = (u)localWeakReference.get();
      if (localu == null) {
        w.remove(localWeakReference);
      }
      for (;;)
      {
        break;
        i1 = localu.flagActionItems() | i1;
      }
    }
    if (i1 != 0)
    {
      m.clear();
      n.clear();
      int i3 = localArrayList.size();
      i1 = 0;
      if (i1 < i3)
      {
        localObject = (MenuItemImpl)localArrayList.get(i1);
        if (((MenuItemImpl)localObject).i()) {
          m.add(localObject);
        }
        for (;;)
        {
          int i2;
          i1 += 1;
          break;
          n.add(localObject);
        }
      }
    }
    else
    {
      m.clear();
      n.clear();
      n.addAll(i());
    }
    o = false;
  }
  
  public ArrayList<MenuItemImpl> k()
  {
    j();
    return m;
  }
  
  public ArrayList<MenuItemImpl> l()
  {
    j();
    return n;
  }
  
  public CharSequence m()
  {
    return a;
  }
  
  public Drawable n()
  {
    return b;
  }
  
  public View o()
  {
    return c;
  }
  
  public MenuBuilder p()
  {
    return this;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = a(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      a(true);
    }
    return bool;
  }
  
  boolean q()
  {
    return t;
  }
  
  public MenuItemImpl r()
  {
    return x;
  }
  
  public void removeGroup(int paramInt)
  {
    int i2 = c(paramInt);
    if (i2 >= 0)
    {
      int i3 = j.size();
      int i1 = 0;
      while ((i1 < i3 - i2) && (((MenuItemImpl)j.get(i2)).getGroupId() == paramInt))
      {
        a(i2, false);
        i1 += 1;
      }
      b(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    a(b(paramInt), true);
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.getGroupId() == paramInt)
      {
        localMenuItemImpl.a(paramBoolean2);
        localMenuItemImpl.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.getGroupId() == paramInt) {
        localMenuItemImpl.setEnabled(paramBoolean);
      }
      i1 += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i3 = j.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i2);
      if ((localMenuItemImpl.getGroupId() != paramInt) || (!localMenuItemImpl.c(paramBoolean))) {
        break label74;
      }
      i1 = 1;
    }
    label74:
    for (;;)
    {
      i2 += 1;
      break;
      if (i1 != 0) {
        b(true);
      }
      return;
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    g = paramBoolean;
    b(false);
  }
  
  public int size()
  {
    return j.size();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.MenuBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */