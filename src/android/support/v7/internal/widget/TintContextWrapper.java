package android.support.v7.internal.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;

public class TintContextWrapper
  extends ContextWrapper
{
  private Resources mResources;
  
  private TintContextWrapper(Context paramContext)
  {
    super(paramContext);
  }
  
  public static Context wrap(Context paramContext)
  {
    Object localObject = paramContext;
    if (!(paramContext instanceof TintContextWrapper)) {
      localObject = new TintContextWrapper(paramContext);
    }
    return (Context)localObject;
  }
  
  public Resources getResources()
  {
    if (mResources == null) {
      mResources = new TintContextWrapper.TintResources(super.getResources(), TintManager.get(this));
    }
    return mResources;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintContextWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */