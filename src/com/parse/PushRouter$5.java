package com.parse;

import Q;
import R;

final class PushRouter$5
  implements Q<Void, PushRoutes.Route>
{
  PushRouter$5(String paramString) {}
  
  public PushRoutes.Route then(R<Void> paramR)
  {
    PushRoutes.Route localRoute = PushRouter.access$200(PushRouter.access$000()).get(val$channel);
    paramR = localRoute;
    if (localRoute == null)
    {
      paramR = localRoute;
      if (val$channel != null) {
        paramR = PushRouter.access$200(PushRouter.access$000()).get(null);
      }
    }
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */