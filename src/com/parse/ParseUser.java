package com.parse;

import P;
import Q;
import R;
import ad;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParseClassName("_User")
public class ParseUser
  extends ParseObject
{
  private static final String CURRENT_USER_FILENAME = "currentUser";
  private static final String PIN_CURRENT_USER = "_currentUser";
  private static Map<String, ParseAuthenticationProvider> authenticationProviders = new HashMap();
  private static boolean autoUserEnabled;
  private static ParseUser currentUser;
  private static boolean currentUserMatchesDisk = false;
  private static final Object currentUserMutex = new Object();
  private final JSONObject authData = new JSONObject();
  private boolean dirty;
  private boolean isCurrentUser = false;
  private boolean isLazy = false;
  private boolean isNew;
  private final Set<String> linkedServiceNames = new HashSet();
  private String password;
  private final Set<String> readOnlyLinkedServiceNames = Collections.unmodifiableSet(linkedServiceNames);
  private String sessionToken;
  
  private static R<JSONObject> authenticateAsync(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    ad localad = R.a();
    paramParseAuthenticationProvider.authenticate(new ParseUser.22(localad));
    return localad.a();
  }
  
  public static ParseUser become(String paramString)
  {
    return (ParseUser)Parse.waitForTask(becomeInBackground(paramString));
  }
  
  public static R<ParseUser> becomeInBackground(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Must specify a sessionToken for the user to log in with");
    }
    return constructBecomeCommand(paramString).executeAsync().d(new ParseUser.8());
  }
  
  public static void becomeInBackground(String paramString, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(becomeInBackground(paramString), paramLogInCallback);
  }
  
  private static void checkApplicationContext()
  {
    if (Parse.applicationContext == null) {
      throw new RuntimeException("You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library.");
    }
  }
  
  static void clearCurrentUserFromMemory()
  {
    synchronized (currentUserMutex)
    {
      currentUser = null;
      currentUserMatchesDisk = false;
      return;
    }
  }
  
  private static ParseCommand constructBecomeCommand(String paramString)
  {
    return new ParseCommand("client_me", paramString);
  }
  
  private static ParseCommand constructLogInCommand(String paramString1, String paramString2)
  {
    ParseCommand localParseCommand = new ParseCommand("user_login", null);
    localParseCommand.put("username", paramString1);
    localParseCommand.put("user_password", paramString2);
    return localParseCommand;
  }
  
  private static ParseCommand constructPasswordResetCommand(String paramString1, String paramString2)
  {
    paramString2 = new ParseCommand("user_request_password_reset", paramString2);
    paramString2.put("email", paramString1);
    return paramString2;
  }
  
  private ParseCommand constructSignUpCommand(ParseOperationSet paramParseOperationSet, String paramString)
  {
    paramParseOperationSet = constructSaveCommand(paramParseOperationSet, PointerEncodingStrategy.get(), paramString);
    paramParseOperationSet.setOp("user_signup");
    return paramParseOperationSet;
  }
  
  private ParseCommand constructSignUpOrLoginCommand(ParseOperationSet paramParseOperationSet)
  {
    for (;;)
    {
      ParseCommand localParseCommand;
      String str;
      synchronized (mutex)
      {
        localParseCommand = new ParseCommand("user_signup_or_login", null);
        paramParseOperationSet = toJSONObjectForSaving(paramParseOperationSet, PointerEncodingStrategy.get());
        Iterator localIterator = paramParseOperationSet.keys();
        if (localIterator.hasNext()) {
          str = (String)localIterator.next();
        }
      }
      try
      {
        Object localObject2 = paramParseOperationSet.get(str);
        if ((localObject2 instanceof JSONObject))
        {
          localParseCommand.put(str, (JSONObject)localObject2);
          continue;
        }
        if ((localObject2 instanceof JSONArray))
        {
          localParseCommand.put(str, (JSONArray)localObject2);
          continue;
          paramParseOperationSet = finally;
          throw paramParseOperationSet;
        }
        if ((localObject2 instanceof String))
        {
          localParseCommand.put(str, (String)localObject2);
          continue;
        }
        localParseCommand.put(str, paramParseOperationSet.getInt(str));
      }
      catch (JSONException localJSONException) {}
      if (password != null) {
        localParseCommand.put("user_password", password);
      }
      return localParseCommand;
    }
  }
  
  static void disableAutomaticUser()
  {
    autoUserEnabled = false;
  }
  
  public static void enableAutomaticUser()
  {
    autoUserEnabled = true;
  }
  
  static String getCurrentSessionToken()
  {
    synchronized (currentUserMutex)
    {
      if (getCurrentUser() != null)
      {
        String str = getCurrentUser().getSessionToken();
        return str;
      }
      return null;
    }
  }
  
  public static ParseUser getCurrentUser()
  {
    synchronized (currentUserMutex)
    {
      checkApplicationContext();
      ParseUser localParseUser;
      if (currentUser != null)
      {
        localParseUser = currentUser;
        return localParseUser;
      }
      if (currentUserMatchesDisk)
      {
        if (isAutomaticUserEnabled()) {
          ParseAnonymousUtils.lazyLogIn();
        }
        localParseUser = currentUser;
        return localParseUser;
      }
    }
    currentUserMatchesDisk = true;
    boolean bool = OfflineStore.isEnabled();
    if (bool) {}
    try
    {
      for (Object localObject2 = (ParseObject)Parse.waitForTask(ParseQuery.getQuery(ParseUser.class).fromPin("_currentUser", true).findInBackground((ParseUser)null).d(new ParseUser.9())); localObject2 == null; localObject2 = getFromDisk(Parse.applicationContext, "currentUser"))
      {
        if (isAutomaticUserEnabled()) {
          ParseAnonymousUtils.lazyLogIn();
        }
        localObject2 = currentUser;
        return (ParseUser)localObject2;
      }
      currentUser = (ParseUser)localObject2;
      currentUserisCurrentUser = true;
      localObject2 = currentUser;
      return (ParseUser)localObject2;
    }
    catch (ParseException localParseException)
    {
      for (;;)
      {
        Object localObject3 = null;
      }
    }
  }
  
  public static ParseQuery<ParseUser> getQuery()
  {
    return ParseQuery.getQuery(ParseUser.class);
  }
  
  static boolean isAutomaticUserEnabled()
  {
    return autoUserEnabled;
  }
  
  private R<Void> linkWithAsync(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    return authenticateAsync(paramParseAuthenticationProvider).d(new ParseUser.28(this, paramParseAuthenticationProvider));
  }
  
  private R<Void> linkWithAsync(String paramString, JSONObject paramJSONObject, R<Void> paramR)
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("anonymous");
    synchronized (mutex)
    {
      paramString = R.b(new ParseUser.26(this, paramString, paramJSONObject)).d(new ParseUser.25(this, paramR)).b(new ParseUser.24(this, localJSONObject, paramString));
      return paramString;
    }
  }
  
  public static ParseUser logIn(String paramString1, String paramString2)
  {
    return (ParseUser)Parse.waitForTask(logInInBackground(paramString1, paramString2));
  }
  
  public static R<ParseUser> logInInBackground(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Must specify a username for the user to log in with");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("Must specify a password for the user to log in with");
    }
    return constructLogInCommand(paramString1, paramString2).executeAsync().d(new ParseUser.7());
  }
  
  public static void logInInBackground(String paramString1, String paramString2, LogInCallback paramLogInCallback)
  {
    Parse.callbackOnMainThreadAsync(logInInBackground(paramString1, paramString2), paramLogInCallback);
  }
  
  /* Error */
  static ParseUser logInLazyUser(String paramString, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: getstatic 49	com/parse/ParseUser:currentUserMutex	Ljava/lang/Object;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: ldc 2
    //   8: invokestatic 414	com/parse/ParseObject:create	(Ljava/lang/Class;)Lcom/parse/ParseObject;
    //   11: checkcast 2	com/parse/ParseUser
    //   14: astore 4
    //   16: aload 4
    //   18: iconst_1
    //   19: putfield 57	com/parse/ParseUser:isCurrentUser	Z
    //   22: aload 4
    //   24: iconst_1
    //   25: putfield 55	com/parse/ParseUser:isLazy	Z
    //   28: aload 4
    //   30: getfield 62	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   33: aload_0
    //   34: aload_1
    //   35: invokevirtual 417	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   38: pop
    //   39: aload 4
    //   41: getfield 67	com/parse/ParseUser:linkedServiceNames	Ljava/util/Set;
    //   44: aload_0
    //   45: invokeinterface 423 2 0
    //   50: pop
    //   51: aload 4
    //   53: putstatic 133	com/parse/ParseUser:currentUser	Lcom/parse/ParseUser;
    //   56: iconst_0
    //   57: putstatic 51	com/parse/ParseUser:currentUserMatchesDisk	Z
    //   60: invokestatic 333	com/parse/OfflineStore:isEnabled	()Z
    //   63: istore_2
    //   64: iload_2
    //   65: ifeq +13 -> 78
    //   68: getstatic 133	com/parse/ParseUser:currentUser	Lcom/parse/ParseUser;
    //   71: invokestatic 80	com/parse/ParseUser:saveCurrentUserAsync	(Lcom/parse/ParseUser;)LR;
    //   74: invokestatic 181	com/parse/Parse:waitForTask	(LR;)Ljava/lang/Object;
    //   77: pop
    //   78: aload_3
    //   79: monitorexit
    //   80: aload 4
    //   82: areturn
    //   83: astore_0
    //   84: new 216	java/lang/RuntimeException
    //   87: dup
    //   88: aload_0
    //   89: invokespecial 426	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   92: athrow
    //   93: astore_0
    //   94: aload_3
    //   95: monitorexit
    //   96: aload_0
    //   97: athrow
    //   98: astore_0
    //   99: goto -21 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramString	String
    //   0	102	1	paramJSONObject	JSONObject
    //   63	2	2	bool	boolean
    //   3	92	3	localObject	Object
    //   14	67	4	localParseUser	ParseUser
    // Exception table:
    //   from	to	target	type
    //   28	51	83	org/json/JSONException
    //   6	28	93	finally
    //   28	51	93	finally
    //   51	64	93	finally
    //   68	78	93	finally
    //   78	80	93	finally
    //   84	93	93	finally
    //   94	96	93	finally
    //   68	78	98	com/parse/ParseException
  }
  
  private static R<ParseUser> logInWithAsync(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    return authenticateAsync(paramParseAuthenticationProvider).d(new ParseUser.23(paramParseAuthenticationProvider));
  }
  
  static R<ParseUser> logInWithAsync(String paramString)
  {
    if (!authenticationProviders.containsKey(paramString)) {
      throw new IllegalArgumentException("No authentication provider could be found for the provided authType");
    }
    return logInWithAsync((ParseAuthenticationProvider)authenticationProviders.get(paramString));
  }
  
  static R<ParseUser> logInWithAsync(String paramString, JSONObject paramJSONObject)
  {
    Object localObject2 = new ParseUser.14(paramString, paramJSONObject);
    ParseUser localParseUser = getCurrentUser();
    if (localParseUser != null) {
      synchronized (mutex)
      {
        if (ParseAnonymousUtils.isLinked(localParseUser))
        {
          if (localParseUser.isLazy())
          {
            localObject2 = authData.optJSONObject("anonymous");
            paramString = taskQueue.enqueue(new ParseUser.15(localParseUser, paramString, paramJSONObject, (JSONObject)localObject2));
            return paramString;
          }
          paramString = localParseUser.linkWithAsync(paramString, paramJSONObject).b(new ParseUser.16((Q)localObject2, localParseUser));
          return paramString;
        }
      }
    }
    return R.a(null).b((Q)localObject2);
  }
  
  public static void logOut()
  {
    synchronized (currentUserMutex)
    {
      checkApplicationContext();
      if (currentUser == null) {
        break label100;
      }
      synchronized (currentUsermutex)
      {
        Iterator localIterator = currentUser.getLinkedServiceNames().iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          currentUser.logOutWith(str);
        }
      }
    }
    currentUserisCurrentUser = false;
    currentUserisNew = false;
    currentUsersessionToken = null;
    label100:
    currentUserMatchesDisk = true;
    currentUser = null;
    boolean bool = OfflineStore.isEnabled();
    if (bool) {}
    try
    {
      Parse.waitForTask(ParseObject.unpinAllInBackground("_currentUser"));
      new File(Parse.getParseDir(), "currentUser").delete();
      return;
    }
    catch (ParseException localParseException)
    {
      for (;;) {}
    }
  }
  
  private void logOutWith(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    paramParseAuthenticationProvider.deauthenticate();
  }
  
  static void registerAuthenticationProvider(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    authenticationProviders.put(paramParseAuthenticationProvider.getAuthType(), paramParseAuthenticationProvider);
    if (getCurrentUser() != null) {
      getCurrentUser().synchronizeAuthData(paramParseAuthenticationProvider.getAuthType());
    }
  }
  
  public static void requestPasswordReset(String paramString)
  {
    Parse.waitForTask(requestPasswordResetInBackground(paramString));
  }
  
  public static R<Void> requestPasswordResetInBackground(String paramString)
  {
    return constructPasswordResetCommand(paramString, getCurrentSessionToken()).executeAsync().j();
  }
  
  public static void requestPasswordResetInBackground(String paramString, RequestPasswordResetCallback paramRequestPasswordResetCallback)
  {
    Parse.callbackOnMainThreadAsync(requestPasswordResetInBackground(paramString), paramRequestPasswordResetCallback);
  }
  
  private R<Void> resolveLazinessAsync(R<Void> paramR)
  {
    synchronized (mutex)
    {
      if (!isLazy())
      {
        paramR = R.a(null);
        return paramR;
      }
      if (linkedServiceNames.size() == 0)
      {
        paramR = signUpAsync(paramR).c(new ParseUser.17(this));
        return paramR;
      }
    }
    P localP = new P();
    paramR = R.b(new ParseUser.21(this)).d(TaskQueue.waitFor(paramR)).d(new ParseUser.20(this, localP)).d(new ParseUser.19(this, localP)).d(new ParseUser.18(this));
    return paramR;
  }
  
  /* Error */
  private void restoreAnonymity(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 261	com/parse/ParseUser:mutex	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_1
    //   8: ifnull +28 -> 36
    //   11: aload_0
    //   12: getfield 67	com/parse/ParseUser:linkedServiceNames	Ljava/util/Set;
    //   15: ldc_w 365
    //   18: invokeinterface 423 2 0
    //   23: pop
    //   24: aload_0
    //   25: getfield 62	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   28: ldc_w 365
    //   31: aload_1
    //   32: invokevirtual 417	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   35: pop
    //   36: aload_2
    //   37: monitorexit
    //   38: return
    //   39: astore_1
    //   40: new 216	java/lang/RuntimeException
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 426	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   48: athrow
    //   49: astore_1
    //   50: aload_2
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	ParseUser
    //   0	54	1	paramJSONObject	JSONObject
    //   4	47	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   24	36	39	org/json/JSONException
    //   11	24	49	finally
    //   24	36	49	finally
    //   36	38	49	finally
    //   40	49	49	finally
    //   50	52	49	finally
  }
  
  private static R<Void> saveCurrentUserAsync(ParseUser paramParseUser)
  {
    for (;;)
    {
      synchronized (currentUserMutex)
      {
        checkApplicationContext();
        if (currentUser != paramParseUser) {
          logOut();
        }
        synchronized (mutex)
        {
          isCurrentUser = true;
          paramParseUser.synchronizeAllAuthData();
          if (OfflineStore.isEnabled())
          {
            ??? = ParseObject.unpinAllInBackground("_currentUser").b(new ParseUser.10(paramParseUser));
            ((R)???).b(new ParseUser.12(paramParseUser));
            return (R<Void>)???;
          }
        }
      }
      ??? = R.a(null).b(new ParseUser.11(paramParseUser));
    }
  }
  
  private R<Void> signUpAsync(R<Void> paramR)
  {
    String str1;
    String str2;
    synchronized (mutex)
    {
      str1 = getCurrentSessionToken();
      if ((getUsername() == null) || (getUsername().length() == 0)) {
        throw new IllegalArgumentException("Username cannot be missing or blank");
      }
    }
    return paramR;
  }
  
  private void stripAnonymity()
  {
    synchronized (mutex)
    {
      if (ParseAnonymousUtils.isLinked(this)) {
        linkedServiceNames.remove("anonymous");
      }
      try
      {
        authData.put("anonymous", JSONObject.NULL);
        dirty = true;
        return;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException);
      }
    }
  }
  
  private void synchronizeAllAuthData()
  {
    synchronized (mutex)
    {
      if (authData != null)
      {
        Iterator localIterator = authData.keys();
        if (localIterator.hasNext()) {
          synchronizeAuthData((String)localIterator.next());
        }
      }
    }
  }
  
  private void synchronizeAuthData(String paramString)
  {
    synchronized (mutex)
    {
      if (!isCurrentUser()) {
        return;
      }
      if (!authenticationProviders.containsKey(paramString)) {
        return;
      }
    }
    ParseAuthenticationProvider localParseAuthenticationProvider = (ParseAuthenticationProvider)authenticationProviders.get(paramString);
    if (!localParseAuthenticationProvider.restoreAuthentication(authData.optJSONObject(localParseAuthenticationProvider.getAuthType()))) {
      unlinkFromAsync(paramString);
    }
  }
  
  void cleanUpAuthData()
  {
    synchronized (mutex)
    {
      if (!isCurrentUser()) {
        return;
      }
      Iterator localIterator = authData.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (authData.isNull(str))
        {
          localIterator.remove();
          linkedServiceNames.remove(str);
          if (authenticationProviders.containsKey(str)) {
            ((ParseAuthenticationProvider)authenticationProviders.get(str)).restoreAuthentication(null);
          }
        }
      }
    }
  }
  
  ParseCommand constructSaveCommand(ParseOperationSet paramParseOperationSet, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy, String paramString)
  {
    synchronized (mutex)
    {
      paramParseOperationSet = super.constructSaveCommand(paramParseOperationSet, paramParseObjectEncodingStrategy, paramString);
      if (paramParseOperationSet == null) {
        return null;
      }
      if (password != null) {
        paramParseOperationSet.put("user_password", password);
      }
      if (authData.length() > 0) {
        paramParseOperationSet.put("auth_data", authData);
      }
      return paramParseOperationSet;
    }
  }
  
  public ParseUser fetch()
  {
    return (ParseUser)super.fetch();
  }
  
  <T extends ParseObject> R<T> fetchAsync(R<Void> paramR)
  {
    synchronized (mutex)
    {
      if (isLazy())
      {
        paramR = R.a(this);
        return paramR;
      }
      paramR = super.fetchAsync(paramR).d(new ParseUser.2(this));
      return paramR;
    }
  }
  
  public ParseUser fetchIfNeeded()
  {
    return (ParseUser)super.fetchIfNeeded();
  }
  
  public String getEmail()
  {
    return getString("email");
  }
  
  Set<String> getLinkedServiceNames()
  {
    synchronized (mutex)
    {
      Set localSet = readOnlyLinkedServiceNames;
      return localSet;
    }
  }
  
  public String getSessionToken()
  {
    synchronized (mutex)
    {
      String str = sessionToken;
      return str;
    }
  }
  
  public String getUsername()
  {
    return getString("username");
  }
  
  public boolean isAuthenticated()
  {
    for (;;)
    {
      synchronized (mutex)
      {
        ParseUser localParseUser = getCurrentUser();
        if (!isLazy())
        {
          if ((sessionToken == null) || (localParseUser == null) || (!getObjectId().equals(localParseUser.getObjectId()))) {
            break label60;
          }
          break label55;
          return bool;
        }
      }
      label55:
      boolean bool = true;
      continue;
      label60:
      bool = false;
    }
  }
  
  boolean isCurrentUser()
  {
    synchronized (mutex)
    {
      boolean bool = isCurrentUser;
      return bool;
    }
  }
  
  boolean isDirty(boolean paramBoolean)
  {
    return (dirty) || (super.isDirty(paramBoolean));
  }
  
  boolean isLazy()
  {
    synchronized (mutex)
    {
      boolean bool = isLazy;
      return bool;
    }
  }
  
  public boolean isNew()
  {
    synchronized (mutex)
    {
      boolean bool = isNew;
      return bool;
    }
  }
  
  R<Void> linkWithAsync(String paramString)
  {
    if (!authenticationProviders.containsKey(paramString)) {
      throw new IllegalArgumentException("No authentication provider could be found for the provided authType");
    }
    return linkWithAsync((ParseAuthenticationProvider)authenticationProviders.get(paramString));
  }
  
  R<Void> linkWithAsync(String paramString, JSONObject paramJSONObject)
  {
    return taskQueue.enqueue(new ParseUser.27(this, paramString, paramJSONObject));
  }
  
  void logOutWith(String paramString)
  {
    synchronized (mutex)
    {
      if ((authenticationProviders.containsKey(paramString)) && (linkedServiceNames.contains(paramString))) {
        logOutWith((ParseAuthenticationProvider)authenticationProviders.get(paramString));
      }
      return;
    }
  }
  
  void mergeFromObject(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      super.mergeFromObject(paramParseObject);
      if (!(paramParseObject instanceof ParseUser)) {
        break label177;
      }
      sessionToken = sessionToken;
      isNew = ((ParseUser)paramParseObject).isNew();
      localIterator = authData.keys();
      if (localIterator.hasNext())
      {
        localIterator.next();
        localIterator.remove();
      }
    }
    Iterator localIterator = authData.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        Object localObject2 = authData.get(str);
        authData.put(str, localObject2);
      }
      catch (JSONException paramParseObject)
      {
        throw new RuntimeException("A JSONException occurred where one was not possible.");
      }
    }
    linkedServiceNames.clear();
    linkedServiceNames.addAll(linkedServiceNames);
    label177:
  }
  
  void mergeFromServer(JSONObject paramJSONObject, ParseDecoder paramParseDecoder, boolean paramBoolean)
  {
    synchronized (mutex)
    {
      super.mergeFromServer(paramJSONObject, paramParseDecoder, paramBoolean);
      paramBoolean = paramJSONObject.has("session_token");
      if (!paramBoolean) {}
    }
    try
    {
      sessionToken = paramJSONObject.getString("session_token");
      paramBoolean = paramJSONObject.has("auth_data");
      if (paramBoolean)
      {
        try
        {
          paramParseDecoder = paramJSONObject.getJSONObject("auth_data");
          Iterator localIterator = paramParseDecoder.keys();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            authData.put(str, paramParseDecoder.get(str));
            if (!paramParseDecoder.isNull(str)) {
              linkedServiceNames.add(str);
            }
            synchronizeAuthData(str);
          }
          paramJSONObject = finally;
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject);
        }
        throw paramJSONObject;
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new RuntimeException(paramJSONObject.getMessage());
    }
    paramBoolean = paramJSONObject.has("is_new");
    if (paramBoolean) {}
    try
    {
      isNew = paramJSONObject.getBoolean("is_new");
      return;
    }
    catch (JSONException paramJSONObject)
    {
      throw new RuntimeException(paramJSONObject);
    }
  }
  
  void mergeREST(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    synchronized (mutex)
    {
      super.mergeREST(paramJSONObject, paramParseDecoder);
      bool = paramJSONObject.has("sessionToken");
      if (!bool) {}
    }
    try
    {
      sessionToken = paramJSONObject.getString("sessionToken");
      bool = paramJSONObject.has("authData");
      if (bool)
      {
        try
        {
          paramParseDecoder = paramJSONObject.getJSONObject("authData");
          Iterator localIterator = paramParseDecoder.keys();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            authData.put(str, paramParseDecoder.get(str));
            if (!paramParseDecoder.isNull(str)) {
              linkedServiceNames.add(str);
            }
            synchronizeAuthData(str);
          }
          paramJSONObject = finally;
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject);
        }
        throw paramJSONObject;
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new RuntimeException(paramJSONObject.getMessage());
    }
    boolean bool = paramJSONObject.has("isNew");
    if (bool) {}
    try
    {
      isNew = paramJSONObject.getBoolean("isNew");
      return;
    }
    catch (JSONException paramJSONObject)
    {
      throw new RuntimeException(paramJSONObject);
    }
  }
  
  boolean needsDefaultACL()
  {
    return false;
  }
  
  public void put(String paramString, Object paramObject)
  {
    synchronized (mutex)
    {
      if ("username".equals(paramString)) {
        stripAnonymity();
      }
      super.put(paramString, paramObject);
      return;
    }
  }
  
  public void remove(String paramString)
  {
    if ("username".equals(paramString)) {
      throw new IllegalArgumentException("Can't remove the username key.");
    }
    super.remove(paramString);
  }
  
  R<Void> saveAsync(R<Void> paramR)
  {
    synchronized (mutex)
    {
      if (isLazy())
      {
        paramR = resolveLazinessAsync(paramR);
        paramR = paramR.d(new ParseUser.1(this));
        return paramR;
      }
      paramR = super.saveAsync(paramR);
    }
  }
  
  public void setEmail(String paramString)
  {
    put("email", paramString);
  }
  
  public void setPassword(String paramString)
  {
    synchronized (mutex)
    {
      password = paramString;
      dirty = true;
      return;
    }
  }
  
  public void setUsername(String paramString)
  {
    put("username", paramString);
  }
  
  public void signUp()
  {
    Parse.waitForTask(signUpInBackground());
  }
  
  public R<Void> signUpInBackground()
  {
    return taskQueue.enqueue(new ParseUser.3(this));
  }
  
  public void signUpInBackground(SignUpCallback paramSignUpCallback)
  {
    Parse.callbackOnMainThreadAsync(signUpInBackground(), paramSignUpCallback);
  }
  
  JSONObject toJSONObjectForDataFile(boolean paramBoolean, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    synchronized (mutex)
    {
      paramParseObjectEncodingStrategy = super.toJSONObjectForDataFile(paramBoolean, paramParseObjectEncodingStrategy);
      String str = sessionToken;
      if (str != null) {}
      try
      {
        paramParseObjectEncodingStrategy.put("session_token", sessionToken);
        int i = authData.length();
        if (i > 0) {}
        paramParseObjectEncodingStrategy = finally;
      }
      catch (JSONException paramParseObjectEncodingStrategy)
      {
        try
        {
          paramParseObjectEncodingStrategy.put("auth_data", authData);
          return paramParseObjectEncodingStrategy;
        }
        catch (JSONException paramParseObjectEncodingStrategy)
        {
          throw new RuntimeException("could not attach key: auth_data");
        }
        paramParseObjectEncodingStrategy = paramParseObjectEncodingStrategy;
        throw new RuntimeException("could not encode value for key: session_token");
      }
    }
  }
  
  JSONObject toJSONObjectForSaving(ParseOperationSet paramParseOperationSet, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    synchronized (mutex)
    {
      paramParseOperationSet = super.toJSONObjectForSaving(paramParseOperationSet, paramParseObjectEncodingStrategy);
      paramParseObjectEncodingStrategy = sessionToken;
      if (paramParseObjectEncodingStrategy != null) {}
      try
      {
        paramParseOperationSet.put("session_token", sessionToken);
        int i = authData.length();
        if (i > 0) {}
        paramParseOperationSet = finally;
      }
      catch (JSONException paramParseOperationSet)
      {
        try
        {
          paramParseOperationSet.put("auth_data", authData);
          return paramParseOperationSet;
        }
        catch (JSONException paramParseOperationSet)
        {
          throw new RuntimeException("could not attach key: auth_data");
        }
        paramParseOperationSet = paramParseOperationSet;
        throw new RuntimeException("could not encode value for key: session_token");
      }
    }
  }
  
  JSONObject toRest(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    synchronized (mutex)
    {
      paramParseObjectEncodingStrategy = super.toRest(paramParseObjectEncodingStrategy);
      String str = sessionToken;
      if (str != null) {}
      try
      {
        paramParseObjectEncodingStrategy.put("sessionToken", sessionToken);
        int i = authData.length();
        if (i > 0) {}
        paramParseObjectEncodingStrategy = finally;
      }
      catch (JSONException paramParseObjectEncodingStrategy)
      {
        try
        {
          paramParseObjectEncodingStrategy.put("authData", authData);
          return paramParseObjectEncodingStrategy;
        }
        catch (JSONException paramParseObjectEncodingStrategy)
        {
          throw new RuntimeException("could not attach key: authData");
        }
        paramParseObjectEncodingStrategy = paramParseObjectEncodingStrategy;
        throw new RuntimeException("could not encode value for key: sessionToken");
      }
    }
  }
  
  R<Void> unlinkFromAsync(String paramString)
  {
    localObject = mutex;
    if (paramString == null) {}
    try
    {
      paramString = R.a(null);
      return paramString;
    }
    finally {}
    paramString = R.a(null).b(new ParseUser.13(this, paramString));
    return paramString;
  }
  
  void validateDelete()
  {
    synchronized (mutex)
    {
      super.validateDelete();
      if ((!isAuthenticated()) && (isDirty())) {
        throw new IllegalArgumentException("Cannot delete a ParseUser that is not authenticated.");
      }
    }
  }
  
  void validateSave()
  {
    synchronized (mutex)
    {
      if (getObjectId() == null) {
        throw new IllegalArgumentException("Cannot save a ParseUser until it has been signed up. Call signUp first.");
      }
    }
    if ((!isAuthenticated()) && (isDirty()) && (!getObjectId().equals(getCurrentUser().getObjectId()))) {
      throw new IllegalArgumentException("Cannot save a ParseUser that is not authenticated.");
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */