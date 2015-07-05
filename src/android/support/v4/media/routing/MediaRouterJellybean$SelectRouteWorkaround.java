package android.support.v4.media.routing;

import android.media.MediaRouter;
import android.media.MediaRouter.RouteInfo;
import android.os.Build.VERSION;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybean$SelectRouteWorkaround
{
  private Method mSelectRouteIntMethod;
  
  public MediaRouterJellybean$SelectRouteWorkaround()
  {
    if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 17)) {
      throw new UnsupportedOperationException();
    }
    try
    {
      mSelectRouteIntMethod = MediaRouter.class.getMethod("selectRouteInt", new Class[] { Integer.TYPE, MediaRouter.RouteInfo.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
  }
  
  public void selectRoute(Object paramObject1, int paramInt, Object paramObject2)
  {
    paramObject1 = (MediaRouter)paramObject1;
    paramObject2 = (MediaRouter.RouteInfo)paramObject2;
    if (((((MediaRouter.RouteInfo)paramObject2).getSupportedTypes() & 0x800000) == 0) && (mSelectRouteIntMethod != null)) {}
    try
    {
      mSelectRouteIntMethod.invoke(paramObject1, new Object[] { Integer.valueOf(paramInt), paramObject2 });
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      ((MediaRouter)paramObject1).selectRoute(paramInt, (MediaRouter.RouteInfo)paramObject2);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.SelectRouteWorkaround
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */