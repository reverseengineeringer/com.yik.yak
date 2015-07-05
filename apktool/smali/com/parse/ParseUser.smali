.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "SourceFile"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation


# static fields
.field private static final CURRENT_USER_FILENAME:Ljava/lang/String; = "currentUser"

.field private static final PIN_CURRENT_USER:Ljava/lang/String; = "_currentUser"

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z

.field private static final currentUserMutex:Ljava/lang/Object;


# instance fields
.field private final authData:Lorg/json/JSONObject;

.field private dirty:Z

.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z

.field private final linkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final readOnlyLinkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 61
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    .line 64
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseUser;)LR;
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseUser;LR;)LR;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parse/ParseUser;LR;)LR;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/parse/ParseUser;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isLazy:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;LR;)LR;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseUser;->constructSignUpCommand(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseUser;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isNew:Z

    return p1
.end method

.method static synthetic access$402(Lcom/parse/ParseUser;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parse/ParseUser;->dirty:Z

    return p1
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .prologue
    .line 24
    sput-boolean p0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return p0
.end method

.method static synthetic access$602(Lcom/parse/ParseUser;)Lcom/parse/ParseUser;
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    return-object p0
.end method

.method static synthetic access$700(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseUser;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method private static authenticateAsync(Lcom/parse/ParseAuthenticationProvider;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseAuthenticationProvider;",
            ")",
            "LR",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 1434
    new-instance v1, Lcom/parse/ParseUser$22;

    invoke-direct {v1, v0}, Lcom/parse/ParseUser$22;-><init>(Lad;)V

    invoke-interface {p0, v1}, Lcom/parse/ParseAuthenticationProvider;->authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 1450
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method public static become(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 918
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    if-nez p0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a sessionToken for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_0
    invoke-static {p0}, Lcom/parse/ParseUser;->constructBecomeCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$8;

    invoke-direct {v1}, Lcom/parse/ParseUser$8;-><init>()V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1

    .prologue
    .line 935
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 936
    return-void
.end method

.method private static checkApplicationContext()V
    .locals 2

    .prologue
    .line 1161
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_0
    return-void
.end method

.method static clearCurrentUserFromMemory()V
    .locals 2

    .prologue
    .line 1577
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1578
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1579
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1580
    monitor-exit v1

    .line 1581
    return-void

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static constructBecomeCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2

    .prologue
    .line 860
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "client_me"

    invoke-direct {v0, v1, p0}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-object v0
.end method

.method private static constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 768
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v1, "user_password"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-object v0
.end method

.method private static constructPasswordResetCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_request_password_reset"

    invoke-direct {v0, v1, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-object v0
.end method

.method private constructSignUpCommand(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseUser;->constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 558
    const-string v1, "user_signup"

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setOp(Ljava/lang/String;)V

    .line 559
    return-object v0
.end method

.method private constructSignUpOrLoginCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;
    .locals 7

    .prologue
    .line 564
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 565
    :try_start_0
    new-instance v3, Lcom/parse/ParseCommand;

    const-string v0, "user_signup_or_login"

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseUser;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v4

    .line 570
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 571
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 575
    instance-of v6, v1, Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 576
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 577
    :cond_0
    instance-of v6, v1, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    .line 578
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 579
    :cond_1
    :try_start_3
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 580
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 590
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 591
    const-string v0, "user_password"

    iget-object v1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3
.end method

.method static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1551
    return-void
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1562
    return-void
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1003
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 945
    sget-object v2, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 946
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 948
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    .line 949
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    .line 998
    :goto_0
    return-object v0

    .line 951
    :cond_0
    sget-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v0, :cond_2

    .line 952
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 955
    :cond_1
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 960
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 962
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    :try_start_2
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v3, "_currentUser"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v3

    .line 968
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ParseUser;

    invoke-virtual {v3, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    new-instance v3, Lcom/parse/ParseUser$9;

    invoke-direct {v3}, Lcom/parse/ParseUser$9;-><init>()V

    invoke-virtual {v0, v3}, LR;->d(LQ;)LR;

    move-result-object v0

    .line 983
    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_2
    .catch Lcom/parse/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    :goto_1
    if-nez v0, :cond_5

    .line 991
    :try_start_3
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 992
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 994
    :cond_3
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2

    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 988
    :cond_4
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "currentUser"

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_1

    .line 996
    :cond_5
    check-cast v0, Lcom/parse/ParseUser;

    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 997
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 998
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 1

    .prologue
    .line 1565
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    return v0
.end method

.method private linkWithAsync(Lcom/parse/ParseAuthenticationProvider;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseAuthenticationProvider;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1518
    invoke-static {p1}, Lcom/parse/ParseUser;->authenticateAsync(Lcom/parse/ParseAuthenticationProvider;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$28;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseUser$28;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseAuthenticationProvider;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method private linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;LR;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    const-string v0, "anonymous"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1466
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_0
    new-instance v2, Lcom/parse/ParseUser$26;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseUser$26;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v2}, LR;->b(Ljava/util/concurrent/Callable;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$25;

    invoke-direct {v3, p0, p3}, Lcom/parse/ParseUser$25;-><init>(Lcom/parse/ParseUser;LR;)V

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$24;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseUser$24;-><init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LR;->b(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 836
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    if-nez p0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a username for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    if-nez p1, :cond_1

    .line 796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a password for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$7;

    invoke-direct {v1}, Lcom/parse/ParseUser$7;-><init>()V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1

    .prologue
    .line 856
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 857
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 70
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parse/ParseUser;->isLazy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v2, v0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v2, v0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 79
    const/4 v2, 0x0

    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 80
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :try_start_3
    sget-object v2, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-static {v2}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/parse/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static logInWithAsync(Lcom/parse/ParseAuthenticationProvider;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseAuthenticationProvider;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    invoke-static {p0}, Lcom/parse/ParseUser;->authenticateAsync(Lcom/parse/ParseAuthenticationProvider;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$23;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$23;-><init>(Lcom/parse/ParseAuthenticationProvider;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method static logInWithAsync(Ljava/lang/String;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1241
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    invoke-static {v0}, Lcom/parse/ParseUser;->logInWithAsync(Lcom/parse/ParseAuthenticationProvider;)LR;

    move-result-object v0

    return-object v0
.end method

.method static logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1248
    new-instance v0, Lcom/parse/ParseUser$14;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$14;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1290
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    .line 1291
    if-eqz v1, :cond_2

    .line 1292
    iget-object v2, v1, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1293
    :try_start_0
    invoke-static {v1}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    invoke-virtual {v1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1295
    iget-object v0, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1296
    iget-object v3, v1, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v4, Lcom/parse/ParseUser$15;

    invoke-direct {v4, v1, p0, p1, v0}, Lcom/parse/ParseUser$15;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    monitor-exit v2

    .line 1354
    :goto_0
    return-object v0

    .line 1332
    :cond_0
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LR;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseUser$16;

    invoke-direct {v4, v0, v1}, Lcom/parse/ParseUser$16;-><init>(LQ;Lcom/parse/ParseUser;)V

    invoke-virtual {v3, v4}, LR;->b(LQ;)LR;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 1352
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v1

    invoke-virtual {v1, v0}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static logOut()V
    .locals 5

    .prologue
    .line 1070
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 1073
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_1

    .line 1074
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iget-object v2, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1075
    :try_start_1
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1076
    sget-object v4, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v4, v0}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 1097
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1078
    :cond_0
    :try_start_3
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1079
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/parse/ParseUser;->isNew:Z

    .line 1080
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 1081
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1084
    :cond_1
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1085
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1087
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    :try_start_5
    const-string v0, "_currentUser"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;
    :try_end_5
    .catch Lcom/parse/ParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1095
    :cond_2
    :goto_1
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "currentUser"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1097
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1098
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private logOutWith(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 1536
    invoke-interface {p1}, Lcom/parse/ParseAuthenticationProvider;->deauthenticate()V

    .line 1537
    return-void
.end method

.method static registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 2

    .prologue
    .line 1233
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-interface {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    .line 1238
    :cond_0
    return-void
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1134
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 1135
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseUser;->constructPasswordResetCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    return-object v0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1

    .prologue
    .line 1153
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 1154
    return-void
.end method

.method private resolveLazinessAsync(LR;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1359
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    monitor-exit v1

    .line 1378
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(LR;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$17;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$17;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->c(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1375
    :cond_1
    :try_start_1
    new-instance v0, LP;

    invoke-direct {v0}, LP;-><init>()V

    .line 1378
    new-instance v2, Lcom/parse/ParseUser$21;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$21;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v2}, LR;->b(Ljava/util/concurrent/Callable;)LR;

    move-result-object v2

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(LR;)LQ;

    move-result-object v3

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$20;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;LP;)V

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$19;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$19;-><init>(Lcom/parse/ParseUser;LP;)V

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$18;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$18;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private restoreAnonymity(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    if-eqz p1, :cond_0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 437
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    sget-object v1, Lcom/parse/ParseUser;->currentUserMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1014
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 1015
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eq v0, p0, :cond_0

    .line 1016
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 1019
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1021
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :try_start_2
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    .line 1026
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    const-string v0, "_currentUser"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$10;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->b(LQ;)LR;

    move-result-object v0

    .line 1052
    :goto_0
    new-instance v2, Lcom/parse/ParseUser$12;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$12;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->b(LQ;)LR;

    .line 1061
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 1021
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1062
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1035
    :cond_1
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$11;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->b(LQ;)LR;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_0
.end method

.method private signUpAsync(LR;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 627
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Username cannot be missing or blank"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 633
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Password cannot be missing or blank"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    .line 643
    :try_start_2
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v2, :cond_3

    .line 644
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->saveAsync(LR;)LR;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    .line 690
    :goto_0
    return-object v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 651
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot sign up a user that has already signed up."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_4
    iget-object v2, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot sign up a user that is already signing up."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_5
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 666
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempt to merge currentUser with itself."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_6
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 671
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 673
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 674
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parse/ParseUser;->dirty:Z

    .line 675
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 679
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseUser;->saveAsync(LR;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 690
    :cond_7
    new-instance v2, Lcom/parse/ParseUser$6;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v2}, LR;->b(Ljava/util/concurrent/Callable;)LR;

    move-result-object v2

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(LR;)LQ;

    move-result-object v3

    invoke-virtual {v2, v3}, LR;->b(LQ;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$5;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private stripAnonymity()V
    .locals 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 423
    :cond_0
    monitor-exit v1

    .line 424
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private synchronizeAllAuthData()V
    .locals 3

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1204
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1209
    return-void
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1180
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    monitor-exit v1

    .line 1194
    :goto_0
    return-void

    .line 1184
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    monitor-exit v1

    goto :goto_0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1187
    :cond_1
    :try_start_1
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    .line 1188
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    move-result v0

    .line 1190
    if-nez v0, :cond_2

    .line 1191
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)LR;

    .line 1193
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method cleanUpAuthData()V
    .locals 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    monitor-exit v1

    .line 352
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 341
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 345
    iget-object v3, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 346
    sget-object v3, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    sget-object v3, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObject;->constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 538
    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    monitor-exit v1

    .line 550
    :goto_0
    return-object v0

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 543
    const-string v2, "user_password"

    iget-object v3, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 547
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 550
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-static {p0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    monitor-exit v1

    .line 512
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->fetchAsync(LR;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLinkedServiceNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    monitor-exit v1

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 1544
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1545
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    monitor-exit v1

    return v0

    .line 1546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method linkWithAsync(Ljava/lang/String;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->linkWithAsync(Lcom/parse/ParseAuthenticationProvider;)LR;

    move-result-object v0

    return-object v0
.end method

.method linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseUser$27;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method logOutWith(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1529
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->logOutWith(Lcom/parse/ParseAuthenticationProvider;)V

    .line 1532
    :cond_0
    monitor-exit v1

    .line 1533
    return-void

    .line 1532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 6

    .prologue
    .line 186
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 190
    instance-of v1, p1, Lcom/parse/ParseUser;

    if-eqz v1, :cond_2

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v1, v0

    iget-object v1, v1, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/parse/ParseUser;->isNew()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 194
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 199
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v1, v0

    iget-object v1, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 200
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v2, v0

    iget-object v2, v2, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 205
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v1

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A JSONException occurred where one was not possible."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    check-cast p1, Lcom/parse/ParseUser;

    iget-object v2, p1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    return-void
.end method

.method mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 6

    .prologue
    .line 220
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 224
    const-string v0, "session_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :try_start_1
    const-string v0, "session_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    :try_start_2
    const-string v0, "auth_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    :try_start_3
    const-string v0, "auth_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 238
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2
    const-string v0, "is_new"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    :try_start_6
    const-string v0, "is_new"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    :cond_3
    :try_start_7
    monitor-exit v1

    .line 259
    return-void

    .line 254
    :catch_2
    move-exception v0

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 6

    .prologue
    .line 288
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 292
    const-string v0, "sessionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :try_start_1
    const-string v0, "sessionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_0
    :try_start_2
    const-string v0, "authData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    :try_start_3
    const-string v0, "authData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 306
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 310
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 295
    :catch_1
    move-exception v0

    .line 296
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_2
    const-string v0, "isNew"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    :try_start_6
    const-string v0, "isNew"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    :cond_3
    :try_start_7
    monitor-exit v1

    .line 327
    return-void

    .line 322
    :catch_2
    move-exception v0

    .line 323
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 1585
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 408
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method saveAsync(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(LR;)LR;

    move-result-object v0

    .line 473
    :goto_0
    new-instance v2, Lcom/parse/ParseUser$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 470
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->saveAsync(LR;)LR;

    move-result-object v0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public signUp()V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 747
    return-void
.end method

.method public signUpInBackground()LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 765
    return-void
.end method

.method toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 165
    :try_start_1
    const-string v2, "session_token"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 173
    :try_start_3
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :cond_1
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not encode value for key: session_token"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 175
    :catch_1
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not attach key: auth_data"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 135
    :try_start_1
    const-string v2, "session_token"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 143
    :try_start_3
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :cond_1
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not encode value for key: session_token"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 145
    :catch_1
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not attach key: auth_data"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 268
    :try_start_1
    const-string v2, "sessionToken"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 276
    :try_start_3
    const-string v2, "authData"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :cond_1
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not encode value for key: sessionToken"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 278
    :catch_1
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not attach key: authData"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method unlinkFromAsync(Ljava/lang/String;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1213
    if-nez p1, :cond_0

    .line 1214
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    monitor-exit v1

    .line 1216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$13;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LR;->b(LQ;)LR;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method validateDelete()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 493
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    return-void
.end method

.method validateSave()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 456
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    return-void
.end method
