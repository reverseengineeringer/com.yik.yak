package com.facebook;

import com.facebook.model.GraphUser;
import java.util.ArrayList;

class AuthorizationClient$3
  implements Request.Callback
{
  AuthorizationClient$3(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList) {}
  
  public void onCompleted(Response paramResponse)
  {
    try
    {
      paramResponse = (GraphUser)paramResponse.getGraphObjectAs(GraphUser.class);
      if (paramResponse != null) {
        val$fbids.add(paramResponse.getId());
      }
      return;
    }
    catch (Exception paramResponse) {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */