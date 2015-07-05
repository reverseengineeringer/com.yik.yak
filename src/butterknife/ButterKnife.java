package butterknife;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.util.Property;
import android.view.View;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ButterKnife
{
  static final Map<Class<?>, ButterKnife.Injector<Object>> INJECTORS = new LinkedHashMap();
  static final ButterKnife.Injector<Object> NOP_INJECTOR = new ButterKnife.1();
  private static final String TAG = "ButterKnife";
  private static boolean debug = false;
  
  private ButterKnife()
  {
    throw new AssertionError("No instances.");
  }
  
  @TargetApi(14)
  public static <T extends View, V> void apply(List<T> paramList, Property<? super T, V> paramProperty, V paramV)
  {
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      paramProperty.set(paramList.get(i), paramV);
      i += 1;
    }
  }
  
  public static <T extends View> void apply(List<T> paramList, ButterKnife.Action<? super T> paramAction)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      paramAction.apply((View)paramList.get(i), i);
      i += 1;
    }
  }
  
  public static <T extends View, V> void apply(List<T> paramList, ButterKnife.Setter<? super T, V> paramSetter, V paramV)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      paramSetter.set((View)paramList.get(i), paramV, i);
      i += 1;
    }
  }
  
  public static <T extends View> T findById(Activity paramActivity, int paramInt)
  {
    return paramActivity.findViewById(paramInt);
  }
  
  public static <T extends View> T findById(Dialog paramDialog, int paramInt)
  {
    return paramDialog.findViewById(paramInt);
  }
  
  public static <T extends View> T findById(View paramView, int paramInt)
  {
    return paramView.findViewById(paramInt);
  }
  
  private static ButterKnife.Injector<Object> findInjectorForClass(Class<?> paramClass)
  {
    Object localObject = (ButterKnife.Injector)INJECTORS.get(paramClass);
    if (localObject != null) {
      return (ButterKnife.Injector<Object>)localObject;
    }
    localObject = paramClass.getName();
    if ((((String)localObject).startsWith("android.")) || (((String)localObject).startsWith("java."))) {
      return NOP_INJECTOR;
    }
    try
    {
      localObject = (ButterKnife.Injector)Class.forName((String)localObject + "$$ViewInjector").newInstance();
      INJECTORS.put(paramClass, localObject);
      return (ButterKnife.Injector<Object>)localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        if (debug) {
          new StringBuilder().append("Not found. Trying superclass ").append(paramClass.getSuperclass().getName()).toString();
        }
        ButterKnife.Injector localInjector = findInjectorForClass(paramClass.getSuperclass());
      }
    }
  }
  
  public static void inject(Activity paramActivity)
  {
    inject(paramActivity, paramActivity, ButterKnife.Finder.ACTIVITY);
  }
  
  public static void inject(Dialog paramDialog)
  {
    inject(paramDialog, paramDialog, ButterKnife.Finder.DIALOG);
  }
  
  public static void inject(View paramView)
  {
    inject(paramView, paramView, ButterKnife.Finder.VIEW);
  }
  
  public static void inject(Object paramObject, Activity paramActivity)
  {
    inject(paramObject, paramActivity, ButterKnife.Finder.ACTIVITY);
  }
  
  public static void inject(Object paramObject, Dialog paramDialog)
  {
    inject(paramObject, paramDialog, ButterKnife.Finder.DIALOG);
  }
  
  public static void inject(Object paramObject, View paramView)
  {
    inject(paramObject, paramView, ButterKnife.Finder.VIEW);
  }
  
  static void inject(Object paramObject1, Object paramObject2, ButterKnife.Finder paramFinder)
  {
    Object localObject = paramObject1.getClass();
    try
    {
      if (debug) {
        new StringBuilder().append("Looking up view injector for ").append(((Class)localObject).getName()).toString();
      }
      localObject = findInjectorForClass((Class)localObject);
      if (localObject != null) {
        ((ButterKnife.Injector)localObject).inject(paramFinder, paramObject1, paramObject2);
      }
      return;
    }
    catch (RuntimeException paramObject1)
    {
      throw ((Throwable)paramObject1);
    }
    catch (Exception paramObject2)
    {
      throw new RuntimeException("Unable to inject views for " + paramObject1, (Throwable)paramObject2);
    }
  }
  
  public static void reset(Object paramObject)
  {
    Object localObject = paramObject.getClass();
    try
    {
      if (debug) {
        new StringBuilder().append("Looking up view injector for ").append(((Class)localObject).getName()).toString();
      }
      localObject = findInjectorForClass((Class)localObject);
      if (localObject != null) {
        ((ButterKnife.Injector)localObject).reset(paramObject);
      }
      return;
    }
    catch (RuntimeException paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to reset views for " + paramObject, localException);
    }
  }
  
  public static void setDebug(boolean paramBoolean)
  {
    debug = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     butterknife.ButterKnife
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */