package com.parse;

import android.os.Bundle;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class FacebookAuthenticationProvider$2
  implements Session.StatusCallback
{
  FacebookAuthenticationProvider$2(FacebookAuthenticationProvider paramFacebookAuthenticationProvider) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if (paramSessionState == SessionState.OPENING) {}
    do
    {
      return;
      if (!paramSessionState.isOpened()) {
        break;
      }
    } while (FacebookAuthenticationProvider.access$300(this$0) == null);
    paramSession = Request.newGraphPathRequest(paramSession, "me", new FacebookAuthenticationProvider.2.1(this));
    paramSession.getParameters().putString("fields", "id");
    paramSession.executeAsync();
    return;
    if (paramException != null)
    {
      FacebookAuthenticationProvider.access$200(this$0, paramException);
      return;
    }
    FacebookAuthenticationProvider.access$400(this$0);
  }
}

/* Location:
 * Qualified Name:     com.parse.FacebookAuthenticationProvider.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */