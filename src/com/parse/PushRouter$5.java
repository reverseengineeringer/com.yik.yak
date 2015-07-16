package com.parse;

import M;
import N;

final class PushRouter$5
  implements M<Void, PushRoutes.Route>
{
  PushRouter$5(String paramString) {}
  
  public PushRoutes.Route then(N<Void> paramN)
  {
    PushRoutes.Route localRoute = PushRouter.access$200(PushRouter.access$000()).get(val$channel);
    paramN = localRoute;
    if (localRoute == null)
    {
      paramN = localRoute;
      if (val$channel != null) {
        paramN = PushRouter.access$200(PushRouter.access$000()).get(null);
      }
    }
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */