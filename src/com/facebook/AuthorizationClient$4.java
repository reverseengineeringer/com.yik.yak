package com.facebook;

import java.util.ArrayList;

class AuthorizationClient$4
  implements Request.Callback
{
  AuthorizationClient$4(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList1, ArrayList paramArrayList2) {}
  
  public void onCompleted(Response paramResponse)
  {
    try
    {
      paramResponse = Session.handlePermissionResponse(paramResponse);
      if (paramResponse != null)
      {
        val$grantedPermissions.addAll(paramResponse.getGrantedPermissions());
        val$declinedPermissions.addAll(paramResponse.getDeclinedPermissions());
      }
      return;
    }
    catch (Exception paramResponse) {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */