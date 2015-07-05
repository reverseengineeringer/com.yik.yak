package com.parse;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseACL
{
  private static final String PUBLIC_KEY = "*";
  private static final String UNRESOLVED_KEY = "*unresolved";
  private static ParseACL defaultACL;
  private static boolean defaultACLUsesCurrentUser;
  private static ParseACL defaultACLWithCurrentUser;
  private static WeakReference<ParseUser> lastCurrentUser;
  private JSONObject permissionsById = new JSONObject();
  private boolean shared;
  private ParseUser unresolvedUser;
  
  public ParseACL() {}
  
  public ParseACL(ParseUser paramParseUser)
  {
    this();
    setReadAccess(paramParseUser, true);
    setWriteAccess(paramParseUser, true);
  }
  
  static ParseACL createACLFromJSONObject(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    localParseACL = new ParseACL();
    Iterator localIterator = Parse.keys(paramJSONObject).iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      if (((String)localObject1).equals("unresolvedUser")) {
        try
        {
          localObject1 = paramJSONObject.getJSONObject((String)localObject1);
          unresolvedUser = ((ParseUser)paramParseDecoder.decode(localObject1));
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject);
        }
      }
      try
      {
        Object localObject2 = paramJSONObject.getJSONObject((String)localObject1);
        localObject2 = Parse.keys((JSONObject)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          localParseACL.setAccess((String)((Iterator)localObject2).next(), (String)localObject1, true);
        }
        return localParseACL;
      }
      catch (JSONException paramJSONObject)
      {
        throw new RuntimeException("could not decode ACL: " + paramJSONObject.getMessage());
      }
    }
  }
  
  private boolean getAccess(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = permissionsById.optJSONObject(paramString2);
      if (paramString2 == null) {
        return false;
      }
      if (paramString2.has(paramString1))
      {
        boolean bool = paramString2.getBoolean(paramString1);
        return bool;
      }
    }
    catch (JSONException paramString1)
    {
      throw new RuntimeException("JSON failure with ACL: " + paramString1.getMessage());
    }
    return false;
  }
  
  static ParseACL getDefaultACL()
  {
    if ((defaultACLUsesCurrentUser) && (defaultACL != null))
    {
      if (lastCurrentUser != null) {}
      for (ParseUser localParseUser = (ParseUser)lastCurrentUser.get(); ParseUser.getCurrentUser() == null; localParseUser = null) {
        return defaultACL;
      }
      if (localParseUser != ParseUser.getCurrentUser())
      {
        defaultACLWithCurrentUser = defaultACL.copy();
        defaultACLWithCurrentUser.setShared(true);
        defaultACLWithCurrentUser.setReadAccess(ParseUser.getCurrentUser(), true);
        defaultACLWithCurrentUser.setWriteAccess(ParseUser.getCurrentUser(), true);
        lastCurrentUser = new WeakReference(ParseUser.getCurrentUser());
      }
      return defaultACLWithCurrentUser;
    }
    return defaultACL;
  }
  
  private void prepareUnresolvedUser(ParseUser paramParseUser)
  {
    if (unresolvedUser != paramParseUser)
    {
      permissionsById.remove("*unresolved");
      unresolvedUser = paramParseUser;
      paramParseUser.registerSaveListener(new ParseACL.UserResolutionListener(this));
    }
  }
  
  private void resolveUser(ParseUser paramParseUser)
  {
    if (paramParseUser != unresolvedUser) {
      return;
    }
    try
    {
      if (permissionsById.has("*unresolved"))
      {
        permissionsById.put(paramParseUser.getObjectId(), permissionsById.get("*unresolved"));
        permissionsById.remove("*unresolved");
      }
      unresolvedUser = null;
      return;
    }
    catch (JSONException paramParseUser)
    {
      throw new RuntimeException(paramParseUser);
    }
  }
  
  private void setAccess(String paramString1, String paramString2, boolean paramBoolean)
  {
    JSONObject localJSONObject1;
    try
    {
      JSONObject localJSONObject2 = permissionsById.optJSONObject(paramString2);
      localJSONObject1 = localJSONObject2;
      if (localJSONObject2 == null)
      {
        if (!paramBoolean) {
          return;
        }
        localJSONObject1 = new JSONObject();
        permissionsById.put(paramString2, localJSONObject1);
      }
      if (paramBoolean)
      {
        localJSONObject1.put(paramString1, true);
        return;
      }
    }
    catch (JSONException paramString1)
    {
      throw new RuntimeException("JSON failure with ACL: " + paramString1.getMessage());
    }
    localJSONObject1.remove(paramString1);
    if (localJSONObject1.length() == 0) {
      permissionsById.remove(paramString2);
    }
  }
  
  public static void setDefaultACL(ParseACL paramParseACL, boolean paramBoolean)
  {
    defaultACLWithCurrentUser = null;
    lastCurrentUser = null;
    if (paramParseACL != null)
    {
      defaultACL = paramParseACL.copy();
      defaultACL.setShared(true);
      defaultACLUsesCurrentUser = paramBoolean;
      return;
    }
    defaultACL = null;
  }
  
  private void setUnresolvedReadAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    prepareUnresolvedUser(paramParseUser);
    setReadAccess("*unresolved", paramBoolean);
  }
  
  private void setUnresolvedWriteAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    prepareUnresolvedUser(paramParseUser);
    setWriteAccess("*unresolved", paramBoolean);
  }
  
  private static void validateRoleState(ParseRole paramParseRole)
  {
    if (paramParseRole.getObjectId() == null) {
      throw new IllegalArgumentException("Roles must be saved to the server before they can be used in an ACL.");
    }
  }
  
  ParseACL copy()
  {
    ParseACL localParseACL = new ParseACL();
    try
    {
      permissionsById = new JSONObject(permissionsById.toString());
      unresolvedUser = unresolvedUser;
      if (unresolvedUser != null) {
        unresolvedUser.registerSaveListener(new ParseACL.UserResolutionListener(localParseACL));
      }
      return localParseACL;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }
  
  public boolean getPublicReadAccess()
  {
    return getReadAccess("*");
  }
  
  public boolean getPublicWriteAccess()
  {
    return getWriteAccess("*");
  }
  
  public boolean getReadAccess(ParseUser paramParseUser)
  {
    if (paramParseUser == unresolvedUser) {
      return getReadAccess("*unresolved");
    }
    if (paramParseUser.isLazy()) {
      return false;
    }
    if (paramParseUser.getObjectId() == null) {
      throw new IllegalArgumentException("cannot getReadAccess for a user with null id");
    }
    return getReadAccess(paramParseUser.getObjectId());
  }
  
  public boolean getReadAccess(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cannot getReadAccess for null userId");
    }
    return getAccess("read", paramString);
  }
  
  public boolean getRoleReadAccess(ParseRole paramParseRole)
  {
    validateRoleState(paramParseRole);
    return getRoleReadAccess(paramParseRole.getName());
  }
  
  public boolean getRoleReadAccess(String paramString)
  {
    return getReadAccess("role:" + paramString);
  }
  
  public boolean getRoleWriteAccess(ParseRole paramParseRole)
  {
    validateRoleState(paramParseRole);
    return getRoleWriteAccess(paramParseRole.getName());
  }
  
  public boolean getRoleWriteAccess(String paramString)
  {
    return getWriteAccess("role:" + paramString);
  }
  
  public boolean getWriteAccess(ParseUser paramParseUser)
  {
    if (paramParseUser == unresolvedUser) {
      return getWriteAccess("*unresolved");
    }
    if (paramParseUser.isLazy()) {
      return false;
    }
    if (paramParseUser.getObjectId() == null) {
      throw new IllegalArgumentException("cannot getWriteAccess for a user with null id");
    }
    return getWriteAccess(paramParseUser.getObjectId());
  }
  
  public boolean getWriteAccess(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cannot getWriteAccess for null userId");
    }
    return getAccess("write", paramString);
  }
  
  boolean hasUnresolvedUser()
  {
    return unresolvedUser != null;
  }
  
  boolean isShared()
  {
    return shared;
  }
  
  public void setPublicReadAccess(boolean paramBoolean)
  {
    setReadAccess("*", paramBoolean);
  }
  
  public void setPublicWriteAccess(boolean paramBoolean)
  {
    setWriteAccess("*", paramBoolean);
  }
  
  public void setReadAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    if (paramParseUser.getObjectId() == null)
    {
      if (paramParseUser.isLazy())
      {
        setUnresolvedReadAccess(paramParseUser, paramBoolean);
        return;
      }
      throw new IllegalArgumentException("cannot setReadAccess for a user with null id");
    }
    setReadAccess(paramParseUser.getObjectId(), paramBoolean);
  }
  
  public void setReadAccess(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cannot setReadAccess for null userId");
    }
    setAccess("read", paramString, paramBoolean);
  }
  
  public void setRoleReadAccess(ParseRole paramParseRole, boolean paramBoolean)
  {
    validateRoleState(paramParseRole);
    setRoleReadAccess(paramParseRole.getName(), paramBoolean);
  }
  
  public void setRoleReadAccess(String paramString, boolean paramBoolean)
  {
    setReadAccess("role:" + paramString, paramBoolean);
  }
  
  public void setRoleWriteAccess(ParseRole paramParseRole, boolean paramBoolean)
  {
    validateRoleState(paramParseRole);
    setRoleWriteAccess(paramParseRole.getName(), paramBoolean);
  }
  
  public void setRoleWriteAccess(String paramString, boolean paramBoolean)
  {
    setWriteAccess("role:" + paramString, paramBoolean);
  }
  
  void setShared(boolean paramBoolean)
  {
    shared = paramBoolean;
  }
  
  public void setWriteAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    if (paramParseUser.getObjectId() == null)
    {
      if (paramParseUser.isLazy())
      {
        setUnresolvedWriteAccess(paramParseUser, paramBoolean);
        return;
      }
      throw new IllegalArgumentException("cannot setWriteAccess for a user with null id");
    }
    setWriteAccess(paramParseUser.getObjectId(), paramBoolean);
  }
  
  public void setWriteAccess(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cannot setWriteAccess for null userId");
    }
    setAccess("write", paramString, paramBoolean);
  }
  
  JSONObject toJSONObject(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(permissionsById.toString());
      if (unresolvedUser != null) {
        localJSONObject.put("unresolvedUser", Parse.encode(unresolvedUser, paramParseObjectEncodingStrategy));
      }
      return localJSONObject;
    }
    catch (JSONException paramParseObjectEncodingStrategy)
    {
      throw new RuntimeException(paramParseObjectEncodingStrategy);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseACL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */