package com.facebook;

import J;
import Q;
import R;
import android.net.Uri;
import java.util.Map;

class FacebookAppLinkResolver$1
  implements Q<Map<Uri, J>, J>
{
  FacebookAppLinkResolver$1(FacebookAppLinkResolver paramFacebookAppLinkResolver, Uri paramUri) {}
  
  public J then(R<Map<Uri, J>> paramR)
  {
    return (J)((Map)paramR.e()).get(val$uri);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */