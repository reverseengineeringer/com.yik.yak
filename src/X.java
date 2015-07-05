import android.content.Context;
import android.os.Parcelable;

public abstract interface x
{
  public abstract boolean collapseItemActionView(i parami, m paramm);
  
  public abstract boolean expandItemActionView(i parami, m paramm);
  
  public abstract boolean flagActionItems();
  
  public abstract int getId();
  
  public abstract void initForMenu(Context paramContext, i parami);
  
  public abstract void onCloseMenu(i parami, boolean paramBoolean);
  
  public abstract void onRestoreInstanceState(Parcelable paramParcelable);
  
  public abstract Parcelable onSaveInstanceState();
  
  public abstract boolean onSubMenuSelected(D paramD);
  
  public abstract void updateMenuView(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */