package com.parse;

import com.facebook.FacebookRequestError;
import com.facebook.Request.Callback;
import com.facebook.Response;
import com.facebook.model.GraphObject;

class FacebookAuthenticationProvider$2$1
  implements Request.Callback
{
  FacebookAuthenticationProvider$2$1(FacebookAuthenticationProvider.2 param2) {}
  
  public void onCompleted(Response paramResponse)
  {
    if (paramResponse.getError() != null)
    {
      if (paramResponse.getError().getException() != null)
      {
        FacebookAuthenticationProvider.access$200(this$1.this$0, paramResponse.getError().getException());
        return;
      }
      FacebookAuthenticationProvider.access$200(this$1.this$0, new ParseException(-1, "An error occurred while fetching the Facebook user's identity."));
      return;
    }
    FacebookAuthenticationProvider.access$100(this$1.this$0, (String)paramResponse.getGraphObject().getProperty("id"));
  }
}

/* Location:
 * Qualified Name:     com.parse.FacebookAuthenticationProvider.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */