package com.facebook;

import F;
import M;
import N;
import android.net.Uri;
import java.util.Map;

class FacebookAppLinkResolver$1
  implements M<Map<Uri, F>, F>
{
  FacebookAppLinkResolver$1(FacebookAppLinkResolver paramFacebookAppLinkResolver, Uri paramUri) {}
  
  public F then(N<Map<Uri, F>> paramN)
  {
    return (F)((Map)paramN.e()).get(val$uri);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */