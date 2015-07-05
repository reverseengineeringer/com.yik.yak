package com.facebook;

class Session$2
  implements Request.Callback
{
  Session$2(Session paramSession) {}
  
  public void onCompleted(Response arg1)
  {
    Session.PermissionsPair localPermissionsPair = Session.handlePermissionResponse(???);
    if (localPermissionsPair != null) {
      synchronized (Session.access$200(this$0))
      {
        Session.access$302(this$0, AccessToken.createFromTokenWithRefreshedPermissions(Session.access$300(this$0), localPermissionsPair.getGrantedPermissions(), localPermissionsPair.getDeclinedPermissions()));
        this$0.postStateChange(Session.access$400(this$0), SessionState.OPENED_TOKEN_UPDATED, null);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */