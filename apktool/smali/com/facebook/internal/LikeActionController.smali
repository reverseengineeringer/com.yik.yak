.class public Lcom/facebook/internal/LikeActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"

.field public static final ERROR_PUBLISH_ERROR:Ljava/lang/String; = "Unable to publish the like/unlike action"

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_PENDING_CALL_ANALYTICS_BUNDLE:Ljava/lang/String; = "pending_call_analytics_bundle"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_PENDING_CALL_ID_KEY:Ljava/lang/String; = "pending_call_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x2

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/LikeActionController;",
            ">;"
        }
    .end annotation
.end field

.field private static controllerDiskCache:Lcom/facebook/internal/FileLruCache;

.field private static diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static isInitialized:Z

.field private static isPendingBroadcastReset:Z

.field private static mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static objectIdForPendingController:Ljava/lang/String;

.field private static volatile objectSuffix:I


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private isObjectLiked:Z

.field private isObjectLikedOnServer:Z

.field private isPendingLikeOrUnlike:Z

.field private likeCountStringWithLike:Ljava/lang/String;

.field private likeCountStringWithoutLike:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private objectIsPage:Z

.field private pendingCallAnalyticsBundle:Landroid/os/Bundle;

.field private pendingCallId:Ljava/util/UUID;

.field private session:Lcom/facebook/Session;

.field private socialSentenceWithLike:Ljava/lang/String;

.field private socialSentenceWithoutLike:Ljava/lang/String;

.field private unlikeToken:Ljava/lang/String;

.field private verifiedObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    const-class v0, Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    .line 91
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    .line 527
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 529
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/LikeActionController;IILandroid/content/Intent;Ljava/util/UUID;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/internal/LikeActionController;->refreshStatusAsync()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/facebook/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/facebook/internal/LikeActionController;->isPendingBroadcastReset:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/facebook/internal/LikeActionController;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcom/facebook/internal/LikeActionController;->isPendingBroadcastReset:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/facebook/internal/LikeActionController;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/internal/LikeActionController;->publishDidError(Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/facebook/internal/LikeActionController;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/internal/LikeActionController;->isObjectLikedOnServer:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/facebook/internal/LikeActionController;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/internal/LikeActionController;->objectIsPage:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/facebook/internal/LikeActionController;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method static synthetic access$2900(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/facebook/internal/LikeActionController;->objectSuffix:I

    return v0
.end method

.method static synthetic access$3000(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/internal/LikeActionController;->createControllerForObjectId(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/facebook/internal/LikeActionController;->objectSuffix:I

    return p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600()Lcom/facebook/internal/FileLruCache;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/LikeActionController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    return-object v0
.end method

.method private static broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 504
    return-void
.end method

.method private static broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    if-eqz p0, :cond_1

    .line 509
    if-nez p2, :cond_0

    .line 510
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 513
    :cond_0
    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/internal/LikeActionController;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    if-eqz p2, :cond_2

    .line 517
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 519
    :cond_2
    sget-object v1, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 520
    return-void
.end method

.method private canUseOGPublish()Z
    .locals 2

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->objectIsPage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createControllerForObjectId(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    .locals 3

    .prologue
    .line 206
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1, v0}, Lcom/facebook/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V

    .line 234
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/facebook/internal/LikeActionController;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/LikeActionController;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 218
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/internal/LikeActionController;)V

    .line 222
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/LikeActionController;->putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/internal/LikeActionController;)V

    .line 226
    sget-object v1, Lcom/facebook/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/internal/LikeActionController$2;

    invoke-direct {v2, v0}, Lcom/facebook/internal/LikeActionController$2;-><init>(Lcom/facebook/internal/LikeActionController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    invoke-static {p1, v0}, Lcom/facebook/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V

    goto :goto_0
.end method

.method private static deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 388
    .line 392
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    sget-object v2, Lcom/facebook/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v2, v1}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 394
    if-eqz v1, :cond_0

    .line 395
    :try_start_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    invoke-static {v2}, Lcom/facebook/internal/LikeActionController;->deserializeFromJson(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 404
    :cond_0
    if-eqz v1, :cond_1

    .line 405
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    :cond_1
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 404
    :goto_1
    if-eqz v1, :cond_1

    .line 405
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    .line 405
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 401
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static deserializeFromJson(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 416
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v0, "com.facebook.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 418
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 448
    :goto_0
    return-object v1

    .line 423
    :cond_0
    new-instance v0, Lcom/facebook/internal/LikeActionController;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    const-string v4, "object_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/facebook/internal/LikeActionController;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 428
    const-string v3, "like_count_string_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 429
    const-string v3, "like_count_string_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 430
    const-string v3, "social_sentence_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 431
    const-string v3, "social_sentence_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 432
    const-string v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    .line 433
    const-string v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 434
    const-string v3, "pending_call_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    .line 439
    :cond_1
    const-string v3, "pending_call_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_2

    .line 441
    invoke-static {v2}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 448
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static declared-synchronized ensureApplicationContextExists(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 237
    const-class v1, Lcom/facebook/internal/LikeActionController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit v1

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private fetchVerifiedObjectId(Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;)V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    invoke-interface {p1}, Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    new-instance v0, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1032
    new-instance v1, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1034
    new-instance v2, Lcom/facebook/RequestBatch;

    invoke-direct {v2}, Lcom/facebook/RequestBatch;-><init>()V

    .line 1035
    invoke-virtual {v0, v2}, Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;->addToBatch(Lcom/facebook/RequestBatch;)V

    .line 1036
    invoke-virtual {v1, v2}, Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;->addToBatch(Lcom/facebook/RequestBatch;)V

    .line 1038
    new-instance v3, Lcom/facebook/internal/LikeActionController$10;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/internal/LikeActionController$10;-><init>(Lcom/facebook/internal/LikeActionController;Lcom/facebook/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 1061
    invoke-virtual {v2}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    goto :goto_0
.end method

.method private static getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_0
    if-eqz v0, :cond_1

    .line 489
    invoke-static {v0}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_1
    const-string v1, "%s|%s|com.fb.sdk.like|%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget v3, Lcom/facebook/internal/LikeActionController;->objectSuffix:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getControllerForObjectId(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->ensureApplicationContextExists(Landroid/content/Context;)V

    .line 182
    sget-boolean v0, Lcom/facebook/internal/LikeActionController;->isInitialized:Z

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->performFirstInitialize()V

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 189
    invoke-static {p2, v0}, Lcom/facebook/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/facebook/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;

    invoke-direct {v1, p1, p2}, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;-><init>(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    goto :goto_0
.end method

.method private static getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    .locals 5

    .prologue
    .line 341
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    sget-object v0, Lcom/facebook/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/LikeActionController;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    sget-object v2, Lcom/facebook/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/facebook/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 349
    :cond_0
    return-object v0
.end method

.method private getFacebookDialogCallback(Landroid/os/Bundle;)Lcom/facebook/widget/FacebookDialog$Callback;
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lcom/facebook/internal/LikeActionController$5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/LikeActionController$5;-><init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->ensureApplicationContextExists(Landroid/content/Context;)V

    .line 136
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 137
    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    sget-object v2, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    sget-object v2, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    const-string v3, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 147
    const-string v3, "PENDING_CONTROLLER_KEY"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 152
    :cond_2
    sget-object v2, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    sget-object v2, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/LikeActionController$1;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/facebook/internal/LikeActionController$1;-><init>(IILandroid/content/Intent;Ljava/util/UUID;)V

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/LikeActionController;->getControllerForObjectId(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static invokeCallbackWithController(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V
    .locals 2

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/facebook/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/internal/LikeActionController$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/LikeActionController$3;-><init>(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1066
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    const-string v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1070
    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 3

    .prologue
    .line 1073
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1074
    if-eqz p2, :cond_0

    .line 1075
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v1

    .line 1076
    if-eqz v1, :cond_0

    .line 1077
    const-string v2, "error"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1081
    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;Ljava/util/UUID;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    invoke-virtual {v1, p4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 703
    :cond_1
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->getInstance()Lcom/facebook/internal/PendingCallStore;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/facebook/internal/PendingCallStore;->getPendingCallById(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_0

    .line 709
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/facebook/internal/LikeActionController;->getFacebookDialogCallback(Landroid/os/Bundle;)Lcom/facebook/widget/FacebookDialog$Callback;

    move-result-object v2

    invoke-static {v0, v1, p1, p3, v2}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 718
    invoke-direct {p0}, Lcom/facebook/internal/LikeActionController;->stopTrackingPendingCall()V

    .line 720
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized performFirstInitialize()V
    .locals 5

    .prologue
    .line 243
    const-class v1, Lcom/facebook/internal/LikeActionController;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/internal/LikeActionController;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    monitor-exit v1

    return-void

    .line 247
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/LikeActionController;->handler:Landroid/os/Handler;

    .line 249
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/internal/LikeActionController;->objectSuffix:I

    .line 254
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    sget-object v3, Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    .line 256
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->registerSessionBroadcastReceivers()V

    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/internal/LikeActionController;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 674
    new-instance v0, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p2}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 677
    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->canPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/facebook/internal/LikeActionController;->trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    .line 679
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    const-string v1, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v1, v4, p3}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->getWebFallbackUrl()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController$LikeDialogBuilder;->getAppCall()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/facebook/internal/LikeActionController;->getFacebookDialogCallback(Landroid/os/Bundle;)Lcom/facebook/widget/FacebookDialog$Callback;

    move-result-object v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/facebook/internal/FacebookWebFallbackDialog;->presentWebFallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    move-result v0

    .line 689
    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    const-string v1, "fb_like_control_did_present_fallback_dialog"

    invoke-virtual {v0, v1, v4, p3}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private publishAgainIfNeeded(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    iget-boolean v1, p0, Lcom/facebook/internal/LikeActionController;->isObjectLikedOnServer:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/internal/LikeActionController;->publishDidError(Z)V

    .line 1020
    :cond_0
    return-void

    .line 1018
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private publishDidError(Z)V
    .locals 3

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/facebook/internal/LikeActionController;->updateLikeState(Z)V

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 626
    return-void
.end method

.method private publishLikeAsync(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 825
    new-instance v0, Lcom/facebook/internal/LikeActionController$6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/LikeActionController$6;-><init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;)V

    .line 867
    return-void
.end method

.method private publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 596
    const/4 v1, 0x0

    .line 597
    invoke-direct {p0}, Lcom/facebook/internal/LikeActionController;->canUseOGPublish()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    if-eqz p1, :cond_0

    .line 600
    invoke-direct {p0, p2}, Lcom/facebook/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V

    .line 607
    :goto_0
    return v0

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    invoke-direct {p0, p2}, Lcom/facebook/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private publishUnlikeAsync(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 873
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0}, Lcom/facebook/RequestBatch;-><init>()V

    .line 874
    new-instance v1, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;->addToBatch(Lcom/facebook/RequestBatch;)V

    .line 876
    new-instance v2, Lcom/facebook/internal/LikeActionController$7;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/internal/LikeActionController$7;-><init>(Lcom/facebook/internal/LikeActionController;Lcom/facebook/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 898
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 899
    return-void
.end method

.method private static putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/internal/LikeActionController;)V
    .locals 4

    .prologue
    .line 333
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v1, Lcom/facebook/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 337
    sget-object v1, Lcom/facebook/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method private refreshStatusAsync()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/LikeActionController;->refreshStatusViaService()V

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    new-instance v0, Lcom/facebook/internal/LikeActionController$8;

    invoke-direct {v0, p0}, Lcom/facebook/internal/LikeActionController$8;-><init>(Lcom/facebook/internal/LikeActionController;)V

    invoke-direct {p0, v0}, Lcom/facebook/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/internal/LikeActionController$RequestCompletionCallback;)V

    goto :goto_0
.end method

.method private refreshStatusViaService()V
    .locals 4

    .prologue
    .line 957
    new-instance v0, Lcom/facebook/internal/LikeStatusClient;

    sget-object v1, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/LikeStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0}, Lcom/facebook/internal/LikeStatusClient;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 965
    :cond_0
    new-instance v1, Lcom/facebook/internal/LikeActionController$9;

    invoke-direct {v1, p0}, Lcom/facebook/internal/LikeActionController$9;-><init>(Lcom/facebook/internal/LikeActionController;)V

    .line 1010
    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    goto :goto_0
.end method

.method private static registerSessionBroadcastReceivers()V
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    new-instance v2, Lcom/facebook/internal/LikeActionController$4;

    invoke-direct {v2}, Lcom/facebook/internal/LikeActionController$4;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 330
    return-void
.end method

.method private static serializeToDiskAsync(Lcom/facebook/internal/LikeActionController;)V
    .locals 4

    .prologue
    .line 357
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->serializeToJson(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    sget-object v2, Lcom/facebook/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;

    invoke-direct {v3, v1, v0}, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 363
    :cond_0
    return-void
.end method

.method private static serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    :try_start_0
    sget-object v1, Lcom/facebook/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v1, p0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 373
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 378
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw v0

    .line 377
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static serializeToJson(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 454
    :try_start_0
    const-string v1, "com.facebook.internal.LikeActionController.version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    const-string v1, "like_count_string_with_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v1, "like_count_string_without_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v1, "is_object_liked"

    iget-boolean v2, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 461
    const-string v1, "unlike_token"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "pending_call_id"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_1

    .line 468
    const-string v2, "pending_call_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 472
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTrackingPendingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 796
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->getInstance()Lcom/facebook/internal/PendingCallStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/PendingCallStore;->stopTrackingPendingCall(Ljava/util/UUID;)V

    .line 798
    iput-object v2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    .line 799
    iput-object v2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;

    .line 801
    invoke-direct {p0, v2}, Lcom/facebook/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method private storeObjectIdForPendingController(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 805
    sput-object p1, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 806
    sget-object v0, Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;

    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 810
    return-void
.end method

.method private trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 782
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->getInstance()Lcom/facebook/internal/PendingCallStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/internal/PendingCallStore;->trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V

    .line 785
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/LikeActionController;->pendingCallId:Ljava/util/UUID;

    .line 786
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 789
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController;->pendingCallAnalyticsBundle:Landroid/os/Bundle;

    .line 792
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/internal/LikeActionController;)V

    .line 793
    return-void
.end method

.method private updateLikeState(Z)V
    .locals 7

    .prologue
    .line 629
    iget-object v2, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 644
    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 650
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 657
    :goto_0
    if-nez v0, :cond_2

    .line 671
    :goto_1
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    .line 662
    iput-object v1, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 663
    iput-object v2, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 664
    iput-object v3, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 665
    iput-object v4, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 666
    iput-object v5, p0, Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 668
    invoke-static {p0}, Lcom/facebook/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/internal/LikeActionController;)V

    .line 670
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getLikeCountString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSentence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    goto :goto_0
.end method

.method public isObjectLiked()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method public toggleLike(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    const-string v3, "fb_like_control_did_tap"

    invoke-virtual {v0, v3, v4, p3}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 570
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 572
    :goto_0
    invoke-direct {p0}, Lcom/facebook/internal/LikeActionController;->canUseOGPublish()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    invoke-direct {p0, v0}, Lcom/facebook/internal/LikeActionController;->updateLikeState(Z)V

    .line 576
    iget-boolean v3, p0, Lcom/facebook/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    if-eqz v3, :cond_2

    .line 580
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    const-string v1, "fb_like_control_did_undo_quickly"

    invoke-virtual {v0, v1, v4, p3}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 593
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 570
    goto :goto_0

    .line 584
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/facebook/internal/LikeActionController;->updateLikeState(Z)V

    .line 588
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 587
    goto :goto_2

    .line 591
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1
.end method
