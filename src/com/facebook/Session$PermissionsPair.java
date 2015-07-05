package com.facebook;

import java.util.List;

class Session$PermissionsPair
{
  List<String> declinedPermissions;
  List<String> grantedPermissions;
  
  public Session$PermissionsPair(List<String> paramList1, List<String> paramList2)
  {
    grantedPermissions = paramList1;
    declinedPermissions = paramList2;
  }
  
  public List<String> getDeclinedPermissions()
  {
    return declinedPermissions;
  }
  
  public List<String> getGrantedPermissions()
  {
    return grantedPermissions;
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.PermissionsPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */