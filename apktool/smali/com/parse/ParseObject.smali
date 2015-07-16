.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final API_VERSION:Ljava/lang/String; = "2"

.field private static final AUTO_CLASS_NAME:Ljava/lang/String; = "_Automatic"

.field public static final DEFAULT_PIN:Ljava/lang/String; = "_default"

.field private static final NEW_OFFLINE_OBJECT_ID_PLACEHOLDER:Ljava/lang/String; = "*** Offline Object ***"

.field private static final REST_KEY_COMPLETE:Ljava/lang/String; = "__complete"

.field private static final REST_KEY_OPERATIONS:Ljava/lang/String; = "__operations"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseObject"

.field static final VERSION_NAME:Ljava/lang/String; = "1.7.1"

.field private static final classNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final impreciseDateFormat:Ljava/text/DateFormat;

.field private static final isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hasBeenFetched:Z

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field isDeleted:Z

.field isDeletingEventually:I

.field private localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field private objectId:Ljava/lang/String;

.field final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final taskQueue:Lcom/parse/TaskQueue;

.field private updatedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    const-string v0, "https://api.parse.com"

    sput-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 70
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    sput-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    .line 98
    new-instance v0, Lcom/parse/ParseObject$1;

    invoke-direct {v0}, Lcom/parse/ParseObject$1;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "_Automatic"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v0}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 137
    sget-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a Parse class name when creating a new ParseObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    const-string v1, "_Automatic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/parse/ParseObject;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must create this type of ParseObject using ParseObject.create() or the proper subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/parse/ParseObject;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must register this ParseObject subclass before instantiating it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 164
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/parse/ParseOperationSet;

    invoke-direct {v2}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 170
    iput-object p1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    .line 171
    if-nez v0, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 181
    :goto_0
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->registerNewObject(Lcom/parse/ParseObject;)V

    .line 185
    :cond_4
    return-void

    .line 175
    :cond_5
    const-string v1, "*** Offline Object ***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 176
    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 178
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parse/ParseObject;Ljava/lang/Object;)LN;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseObject;LN;)LN;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->deleteAsync(LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParseObject;ZLjava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parse/ParseObject;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;)LN;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method private applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2671
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2672
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2673
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    .line 2674
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2675
    invoke-interface {v1, v4, p0, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2676
    if-eqz v1, :cond_0

    .line 2677
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2682
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2679
    :cond_0
    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2682
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    return-void
.end method

.method private canBeSerialized()Z
    .locals 4

    .prologue
    .line 2217
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2218
    :try_start_0
    new-instance v0, LL;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, LL;-><init>(Ljava/lang/Object;)V

    .line 2224
    new-instance v2, Lcom/parse/ParseObject$36;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$36;-><init>(Lcom/parse/ParseObject;LL;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parse/ParseObject$36;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2239
    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    invoke-static {p2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseJSONCacheItem;

    .line 1003
    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ParseObject contains container item that isn\'t cached."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1009
    :cond_0
    :try_start_1
    new-instance v2, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v2, p2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1021
    :cond_1
    :goto_0
    monitor-exit v1

    .line 1022
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3279
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject has no data for this key.  Call fetchIfNeeded() to get the data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3283
    :cond_0
    return-void
.end method

.method private checkpointAllMutableContainers()V
    .locals 3

    .prologue
    .line 971
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 973
    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    goto :goto_0

    .line 975
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

    .line 976
    return-void
.end method

.method private checkpointMutableContainer(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 982
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_0
    invoke-static {p1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    :try_start_1
    new-instance v0, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v0, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_0
    monitor-exit v1

    .line 993
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 988
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2208
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 2211
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2145
    new-instance v0, Lcom/parse/ParseObject$35;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/parse/ParseObject$35;-><init>(Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$35;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2200
    return-void
.end method

.method private collectFetchedObjects()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 645
    new-instance v1, Lcom/parse/ParseObject$4;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$4;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;)V

    .line 657
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 658
    return-object v0
.end method

.method private constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;
    .locals 5

    .prologue
    .line 1916
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1917
    :try_start_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "delete"

    invoke-direct {v0, v2, p2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1919
    const-string v2, "classname"

    iget-object v3, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    :try_start_1
    const-string v3, "objectId"

    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1926
    :try_start_2
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1927
    monitor-exit v1

    return-object v0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create instance of subclass."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :cond_1
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 238
    if-nez p1, :cond_0

    .line 239
    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    const-string v2, "*** Offline Object ***"

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 245
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {v0, p0, p1}, Lcom/parse/OfflineStore;->getOrCreateObjectWithoutData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 248
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ParseObject;

    .line 249
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 255
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A ParseObject subclass default constructor must not make changes to the object that cause it to be dirty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 241
    :cond_0
    :try_start_2
    sget-object v1, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create instance of subclass."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :cond_1
    :try_start_4
    invoke-static {p0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 252
    const/4 v0, 0x1

    goto :goto_1

    .line 269
    :cond_2
    sget-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method private currentOperations()Lcom/parse/ParseOperationSet;
    .locals 2

    .prologue
    .line 2662
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2663
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    monitor-exit v1

    return-object v0

    .line 2664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2251
    invoke-static {p0, v1, v0}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 2253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile;

    .line 2255
    invoke-virtual {v0}, Lcom/parse/ParseFile;->saveInBackground()LN;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2258
    :cond_0
    invoke-static {v2}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseObject$37;

    invoke-direct {v2, v1, p1}, Lcom/parse/ParseObject$37;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2095
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 2096
    return-void
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2039
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2040
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2041
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2042
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 2050
    new-instance v2, Lcom/parse/ParseObject$34;

    invoke-direct {v2, v1, p1}, Lcom/parse/ParseObject$34;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LN;->b(LM;)LN;

    move-result-object v0

    .line 2082
    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2121
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 2122
    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2108
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 2109
    return-void
.end method

.method private deleteAsync(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1937
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1938
    const/4 v1, 0x0

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$31;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$31;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(LN;)LM;

    move-result-object v2

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$30;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$30;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$29;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$29;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method static enqueueForAll(Ljava/util/List;LM;)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "LM",
            "<",
            "Ljava/lang/Void;",
            "LN",
            "<TT;>;>;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, LN;->a()LZ;

    move-result-object v2

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 358
    iget-object v0, v0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v0}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_0
    new-instance v3, Lcom/parse/LockSet;

    invoke-direct {v3, v1}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 362
    invoke-virtual {v3}, Lcom/parse/LockSet;->lock()V

    .line 369
    :try_start_0
    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v0

    invoke-interface {p1, v0}, LM;->then(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 379
    iget-object v1, v1, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v6, Lcom/parse/ParseObject$2;

    invoke-direct {v6, v4, v0}, Lcom/parse/ParseObject$2;-><init>(Ljava/util/List;LN;)V

    invoke-virtual {v1, v6}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    throw v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    :try_start_2
    throw v0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 389
    :cond_1
    invoke-static {v4}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v1

    new-instance v4, Lcom/parse/ParseObject$3;

    invoke-direct {v4, v2}, Lcom/parse/ParseObject$3;-><init>(LZ;)V

    invoke-virtual {v1, v4}, LN;->a(LM;)LN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    return-object v0
.end method

.method private enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should only be used to enqueue saveEventually operation sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$14;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2615
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2542
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2543
    invoke-static {p0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 2561
    :goto_0
    return-object v0

    .line 2546
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2548
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2549
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All objects should have the same class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2552
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    .line 2553
    if-nez v4, :cond_2

    .line 2554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All objects must exist on the server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2557
    :cond_2
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2559
    :cond_3
    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 2560
    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 2561
    new-instance v1, Lcom/parse/ParseObject$42;

    invoke-direct {v1, v0, p1}, Lcom/parse/ParseObject$42;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p2, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$41;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$41;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2524
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2445
    const/4 v1, 0x0

    .line 2446
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2447
    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2448
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All objects should have the same class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2452
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 2453
    if-eqz v0, :cond_1

    .line 2454
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    move-object v1, v0

    .line 2457
    goto :goto_0

    .line 2459
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2460
    invoke-static {p0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 2465
    :goto_1
    return-object v0

    .line 2463
    :cond_3
    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 2464
    const-string v1, "objectId"

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 2465
    new-instance v1, Lcom/parse/ParseObject$39;

    invoke-direct {v1, v0, p1}, Lcom/parse/ParseObject$39;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p2, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$38;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$38;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_1
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2504
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 2505
    new-instance v1, Lcom/parse/ParseObject$40;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$40;-><init>(Ljava/util/List;Lcom/parse/ParseUser;)V

    invoke-static {p0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2537
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 2538
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2596
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 2597
    new-instance v1, Lcom/parse/ParseObject$43;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$43;-><init>(Ljava/util/List;Lcom/parse/ParseUser;)V

    invoke-static {p0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2628
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 2629
    return-void
.end method

.method private static findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1101
    check-cast p0, Ljava/util/List;

    .line 1102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1103
    invoke-static {v1, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 1105
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1107
    check-cast p0, Ljava/util/Map;

    .line 1108
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1109
    invoke-static {v1, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 1111
    :cond_1
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_2

    .line 1112
    check-cast p0, Lcom/parse/ParseObject;

    .line 1113
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_2
    return-void
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 501
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 504
    if-eqz v2, :cond_0

    .line 505
    const-string v1, "objectId"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string v0, "classname"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p0, p3, p2}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 511
    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 5

    .prologue
    .line 3167
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3168
    :try_start_0
    const-string v1, "ACL"

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3169
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v2, "ACL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3170
    if-nez v2, :cond_0

    .line 3171
    const/4 v2, 0x0

    monitor-exit v3

    .line 3182
    :goto_0
    return-object v2

    .line 3173
    :cond_0
    instance-of v1, v2, Lcom/parse/ParseACL;

    if-nez v1, :cond_1

    .line 3174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "only ACLs can be stored in the ACL key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3183
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3176
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/parse/ParseACL;->isShared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3177
    check-cast v2, Lcom/parse/ParseACL;

    invoke-virtual {v2}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 3178
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v4, "ACL"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 3180
    monitor-exit v3

    goto :goto_0

    .line 3182
    :cond_2
    check-cast v2, Lcom/parse/ParseACL;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 340
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3313
    sget-object v0, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3314
    if-nez v0, :cond_0

    .line 3315
    const-class v0, Lcom/parse/ParseClassName;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseClassName;

    .line 3316
    if-nez v0, :cond_1

    .line 3317
    const/4 v0, 0x0

    .line 3322
    :cond_0
    :goto_0
    return-object v0

    .line 3319
    :cond_1
    invoke-interface {v0}, Lcom/parse/ParseClassName;->value()Ljava/lang/String;

    move-result-object v0

    .line 3320
    sget-object v1, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject#getFromDisk is not allowed when OfflineStore is enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    invoke-static {p0, p1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 458
    if-nez v2, :cond_1

    .line 468
    :goto_0
    return-object v0

    .line 463
    :cond_1
    :try_start_0
    const-string v1, "classname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 464
    new-instance v3, Lcom/parse/ParseDecoder;

    invoke-direct {v3}, Lcom/parse/ParseDecoder;-><init>()V

    .line 465
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 466
    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleDeleteResultAsync(Ljava/lang/Object;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1969
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1971
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1972
    if-eqz p1, :cond_2

    .line 1973
    :goto_0
    if-eqz v1, :cond_0

    .line 1974
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/parse/ParseObject;->isDeleted:Z

    .line 1976
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 1979
    if-eqz v1, :cond_1

    .line 1980
    new-instance v2, Lcom/parse/ParseObject$32;

    invoke-direct {v2, p0, v1}, Lcom/parse/ParseObject$32;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v2}, LN;->b(LM;)LN;

    move-result-object v0

    .line 1994
    :cond_1
    return-object v0

    .line 1972
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1976
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasDirtyChildren()Z
    .locals 3

    .prologue
    .line 910
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 916
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static declared-synchronized impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .prologue
    .line 405
    const-class v1, Lcom/parse/ParseObject;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 409
    :goto_0
    monitor-exit v1

    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    :try_start_1
    const-string v2, "com.parse.ParseObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 2

    .prologue
    .line 291
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.parse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3206
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3207
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    .line 3209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 619
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 620
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 621
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 623
    if-nez p1, :cond_0

    .line 625
    invoke-virtual {v0, p3}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 633
    :goto_0
    monitor-exit v1

    .line 634
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-direct {p0, p3, v0}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 630
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 631
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static pinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3422
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3423
    return-void
.end method

.method public static pinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3479
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3480
    return-void
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3401
    invoke-static {p0, p1}, Lcom/parse/ParsePin;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3461
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3381
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3382
    return-void
.end method

.method public static pinAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3442
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3443
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 4

    .prologue
    .line 2689
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2690
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2691
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v2, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2692
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 2693
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v0, v3}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    goto :goto_0

    .line 2695
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

    .line 2696
    return-void
.end method

.method static registerParseSubclasses()V
    .locals 1

    .prologue
    .line 3348
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3349
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3350
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3351
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3352
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3353
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 306
    if-nez v1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ParseClassName annoation provided on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 311
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not accessible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default constructor provided for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 320
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    :cond_2
    :goto_0
    return-void

    .line 324
    :cond_3
    sget-object v2, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    invoke-static {}, Lcom/parse/ParseUser;->clearCurrentUserFromMemory()V

    goto :goto_0

    .line 328
    :cond_4
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-static {}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromMemory()V

    goto :goto_0
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2413
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 2414
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2439
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2426
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 2427
    return-void
.end method

.method private setObjectIdInternal(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1085
    if-eqz v2, :cond_0

    .line 1086
    invoke-virtual {v2, p0, v0, p1}, Lcom/parse/OfflineStore;->updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1091
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1095
    :cond_1
    monitor-exit v1

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unpinAll()V
    .locals 1

    .prologue
    .line 3655
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3656
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3618
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3619
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3530
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3531
    return-void
.end method

.method public static unpinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3576
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3577
    return-void
.end method

.method public static unpinAllInBackground()LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3643
    const-string v0, "_default"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3604
    invoke-static {p0}, Lcom/parse/ParsePin;->unpinAllObjectsAsync(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3513
    invoke-static {p0, p1}, Lcom/parse/ParsePin;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/util/List;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3561
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 3631
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()LN;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3632
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 3590
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3591
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3496
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3497
    return-void
.end method

.method public static unpinAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3546
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3547
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2779
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2780
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2792
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 2793
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2794
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2820
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/lang/Object;)V

    .line 2821
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2822
    return-void
.end method

.method addToHashedObjects(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v2, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v2, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    monitor-exit v1

    .line 439
    return-void

    .line 436
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t serialize container value to JSON."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2806
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2807
    return-void
.end method

.method checkForChangesToMutableContainers()V
    .locals 4

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/parse/ParseObject;->checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1033
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1034
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    return-void
.end method

.method constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 5

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1129
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "create"

    .line 1130
    :goto_0
    new-instance v3, Lcom/parse/ParseCommand;

    invoke-direct {v3, v0, p3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v3}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1133
    const-string v0, "classname"

    iget-object v4, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :try_start_1
    const-string v0, "data"

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    :try_start_2
    monitor-exit v1

    return-object v3

    .line 1129
    :cond_0
    const-string v0, "update"

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not decode data"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2848
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2849
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5

    .prologue
    .line 564
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 565
    :try_start_0
    iget-object v0, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 566
    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 567
    invoke-virtual {v0, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    return-void
.end method

.method public final delete()V
    .locals 1

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 2020
    return-void
.end method

.method deleteAsync(Ljava/lang/String;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1964
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1965
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method public final deleteEventually()LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1634
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1635
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1636
    iget v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1639
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1640
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1644
    :goto_0
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1645
    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)LN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1652
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 1654
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v3

    .line 1655
    invoke-virtual {v3, v1}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 1657
    new-instance v1, Lcom/parse/ParseObject$16;

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1667
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1670
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1672
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    .line 1682
    :goto_2
    return-object v0

    .line 1648
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    goto :goto_1

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot deleteEventually this object."

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1674
    :cond_1
    new-instance v1, Lcom/parse/ParseObject$17;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteEventually()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1614
    return-void
.end method

.method public final deleteInBackground()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$33;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$33;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 2031
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method fetchAsync(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1810
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1812
    new-instance v1, Lcom/parse/ParseObject$27;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$27;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-static {v1}, LN;->b(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(LN;)LM;

    move-result-object v1

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$26;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$25;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$24;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$24;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastore()V
    .locals 1

    .prologue
    .line 3690
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3691
    return-void
.end method

.method fetchFromLocalDatastoreAsync()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3665
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 3666
    if-nez v0, :cond_0

    .line 3667
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must enable the local datastore before calling fetchFromLocalDatastore()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3670
    :cond_0
    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;)LN;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastoreInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3679
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3680
    return-void
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public final fetchIfNeededInBackground()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1882
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1883
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-static {p0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    monitor-exit v1

    .line 1886
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()LN;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1912
    return-void
.end method

.method public final fetchInBackground()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$28;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1872
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 3254
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3256
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3258
    instance-of v1, v2, Lcom/parse/ParseACL;

    if-eqz v1, :cond_0

    const-string v1, "ACL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3259
    move-object v0, v2

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 3260
    invoke-virtual {v1}, Lcom/parse/ParseACL;->isShared()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3261
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    .line 3262
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v4, "ACL"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3263
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 3264
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v2

    monitor-exit v3

    .line 3274
    :goto_0
    return-object v2

    .line 3270
    :cond_0
    instance-of v1, v2, Lcom/parse/ParseRelation;

    if-eqz v1, :cond_1

    .line 3271
    move-object v0, v2

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v1, v0

    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3274
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3275
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 3163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 3062
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3063
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3064
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3065
    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 3066
    const/4 v0, 0x0

    monitor-exit v1

    .line 3068
    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 3069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 2879
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2880
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2881
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2882
    instance-of v2, v0, [B

    if-nez v2, :cond_0

    .line 2883
    const/4 v0, 0x0

    monitor-exit v1

    .line 2886
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [B

    check-cast v0, [B

    monitor-exit v1

    goto :goto_0

    .line 2887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 3080
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3081
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3082
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3083
    instance-of v2, v0, Ljava/util/Date;

    if-nez v2, :cond_0

    .line 3084
    const/4 v0, 0x0

    monitor-exit v1

    .line 3086
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Date;

    monitor-exit v1

    goto :goto_0

    .line 3087
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 3032
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3033
    if-nez v0, :cond_0

    .line 3034
    const-wide/16 v0, 0x0

    .line 3036
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 3017
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3018
    if-nez v0, :cond_0

    .line 3019
    const/4 v0, 0x0

    .line 3021
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 2916
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2917
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2918
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2920
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2921
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 2922
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2925
    :cond_0
    instance-of v2, v0, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    .line 2926
    const/4 v0, 0x0

    monitor-exit v1

    .line 2928
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    monitor-exit v1

    goto :goto_0

    .line 2929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2993
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2994
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2996
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 2997
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 2998
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3001
    :cond_0
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 3002
    const/4 v0, 0x0

    monitor-exit v1

    .line 3005
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    monitor-exit v1

    goto :goto_0

    .line 3006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2940
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2941
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2943
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 2944
    new-instance v2, Lcom/parse/ParseDecoder;

    invoke-direct {v2}, Lcom/parse/ParseDecoder;-><init>()V

    .line 2945
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 2946
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2949
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_1

    .line 2950
    const/4 v0, 0x0

    monitor-exit v1

    .line 2954
    :goto_0
    return-object v0

    .line 2953
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 2954
    monitor-exit v1

    goto :goto_0

    .line 2955
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 3047
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3048
    if-nez v0, :cond_0

    .line 3049
    const-wide/16 v0, 0x0

    .line 3051
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 2966
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2967
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2969
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 2970
    new-instance v2, Lcom/parse/ParseDecoder;

    invoke-direct {v2}, Lcom/parse/ParseDecoder;-><init>()V

    .line 2971
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 2972
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2975
    :cond_0
    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 2976
    const/4 v0, 0x0

    monitor-exit v1

    .line 2980
    :goto_0
    return-object v0

    .line 2979
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 2980
    monitor-exit v1

    goto :goto_0

    .line 2981
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3

    .prologue
    .line 2898
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2899
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2901
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_0

    .line 2902
    const/4 v0, 0x0

    monitor-exit v1

    .line 2904
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/Number;

    monitor-exit v1

    goto :goto_0

    .line 2905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1056
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1058
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1055
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1061
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2

    .prologue
    .line 3134
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3135
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 3136
    const/4 v0, 0x0

    .line 3138
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3

    .prologue
    .line 3149
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3152
    instance-of v2, v0, Lcom/parse/ParseGeoPoint;

    if-nez v2, :cond_0

    .line 3153
    const/4 v0, 0x0

    monitor-exit v1

    .line 3155
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/parse/ParseGeoPoint;

    monitor-exit v1

    goto :goto_0

    .line 3156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2

    .prologue
    .line 3100
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3101
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 3102
    const/4 v0, 0x0

    .line 3104
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2

    .prologue
    .line 3117
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3118
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 3119
    const/4 v0, 0x0

    .line 3121
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3221
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3223
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3224
    instance-of v2, v0, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_0

    .line 3226
    check-cast v0, Lcom/parse/ParseRelation;

    .line 3227
    invoke-virtual {v0, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3228
    monitor-exit v1

    .line 3240
    :goto_0
    return-object v0

    .line 3230
    :cond_0
    new-instance v0, Lcom/parse/ParseRelation;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3239
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3240
    monitor-exit v1

    goto :goto_0

    .line 3242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2861
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2862
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2864
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2865
    const/4 v0, 0x0

    monitor-exit v1

    .line 2867
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 2868
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 541
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleDeleteEventuallyResultAsync(Ljava/lang/Object;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1687
    :try_start_0
    iget v0, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1688
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1691
    new-instance v1, Lcom/parse/ParseObject$18;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0

    .line 1688
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleFetchResultAsync(Lorg/json/JSONObject;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1707
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v1

    .line 1713
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1714
    if-eqz v2, :cond_0

    .line 1715
    new-instance v3, Lcom/parse/ParseObject$20;

    invoke-direct {v3, p0, v2}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v3}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v3, Lcom/parse/ParseObject$19;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v3}, LN;->b(LM;)LN;

    move-result-object v0

    .line 1733
    :cond_0
    new-instance v3, Lcom/parse/ParseObject$21;

    invoke-direct {v3, p0, v1, p1}, Lcom/parse/ParseObject$21;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, LN;->d(LM;)LN;

    move-result-object v0

    .line 1746
    if-eqz v2, :cond_1

    .line 1747
    new-instance v1, Lcom/parse/ParseObject$23;

    invoke-direct {v1, p0, v2}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$22;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$22;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    .line 1765
    :cond_1
    return-object v0
.end method

.method handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1575
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    .line 1577
    new-instance v1, Lcom/parse/ParseObject$15;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1270
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v1

    .line 1276
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1277
    if-eqz v2, :cond_0

    .line 1278
    new-instance v3, Lcom/parse/ParseObject$5;

    invoke-direct {v3, p0, v2}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v3}, LN;->b(LM;)LN;

    move-result-object v0

    .line 1286
    :cond_0
    new-instance v3, Lcom/parse/ParseObject$6;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v3}, LN;->a(LM;)LN;

    move-result-object v0

    .line 1297
    if-eqz v2, :cond_1

    .line 1298
    new-instance v1, Lcom/parse/ParseObject$7;

    invoke-direct {v1, p0, v2}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    .line 1306
    :cond_1
    new-instance v1, Lcom/parse/ParseObject$8;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;

    move-result-object v0

    .line 1314
    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2655
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChanges()Z
    .locals 2

    .prologue
    .line 938
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasOutstandingOperations()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 948
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3

    .prologue
    .line 3286
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3287
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2754
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2755
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 2766
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 2767
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2768
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 3200
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3201
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    monitor-exit v1

    return v0

    .line 3202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 962
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 2

    .prologue
    .line 931
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 932
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 933
    iget-boolean v0, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

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

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 528
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 607
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 608
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 609
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p1, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 575
    iget-object v0, p1, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 576
    iget-object v0, p1, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 577
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 578
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    iget-object v2, p1, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 581
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to mergeFromObject during a save."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 584
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 585
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/parse/ParseOperationSet;

    invoke-direct {v2}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 588
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 589
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    return-void
.end method

.method mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 663
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 665
    :try_start_0
    iget-boolean v3, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :try_start_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 671
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 674
    :cond_2
    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_3

    .line 677
    invoke-static {v0}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 680
    :cond_3
    const-string v0, "updated_at"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 681
    const-string v0, "updated_at"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_4

    .line 683
    invoke-static {v0}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 686
    :cond_4
    const-string v0, "pointers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
    const-string v0, "pointers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 689
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 692
    iget-object v5, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 699
    :cond_5
    :try_start_3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 700
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 702
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 703
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    iget-object v4, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v4, "objectId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 707
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 710
    :cond_7
    const-string v4, "createdAt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 711
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_1

    .line 714
    :cond_8
    const-string v4, "updatedAt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 715
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 718
    :cond_9
    const-string v4, "ACL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 719
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 720
    iget-object v4, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_1

    .line 724
    :cond_a
    const-string v4, "__type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "className"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 728
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 729
    invoke-virtual {p2, v4}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 731
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 732
    invoke-virtual {p0, v4}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 734
    :cond_b
    iget-object v5, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 738
    :cond_c
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 739
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 745
    :cond_d
    :try_start_4
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 746
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 747
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 748
    return-void
.end method

.method mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 804
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 808
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 809
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 810
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    iget-object v1, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v1, "__type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "className"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 820
    :cond_1
    :try_start_2
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_0

    .line 824
    :cond_2
    const-string v1, "updatedAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_0

    .line 828
    :cond_3
    const-string v1, "isDeletingEventually"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 829
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    goto :goto_0

    .line 832
    :cond_4
    const-string v1, "ACL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v3, "ACL"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 838
    :cond_5
    const-string v1, "__complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 840
    iget-boolean v1, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    if-nez v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto :goto_1

    .line 843
    :cond_8
    const-string v1, "__operations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 844
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v9

    .line 846
    const-string v0, "__operations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 847
    if-eqz v10, :cond_d

    .line 848
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move v3, v4

    move-object v0, v2

    .line 854
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_c

    .line 855
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 856
    invoke-static {v1, p2}, Lcom/parse/ParseOperationSet;->fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v1

    .line 858
    invoke-virtual {v1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 859
    if-eqz v0, :cond_9

    .line 860
    iget-object v11, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 863
    :cond_9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v11, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 854
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 868
    :cond_a
    if-eqz v0, :cond_b

    .line 869
    invoke-virtual {v1, v0}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    :cond_b
    move-object v0, v1

    .line 871
    goto :goto_3

    .line 873
    :cond_c
    if-eqz v0, :cond_d

    .line 874
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_d
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    goto/16 :goto_0

    .line 884
    :cond_e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 885
    invoke-virtual {p2, v1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 887
    invoke-static {v1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 888
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 890
    :cond_f
    iget-object v3, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 893
    :cond_10
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 894
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    :cond_11
    :try_start_3
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 900
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 901
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 904
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 905
    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)LN;

    goto :goto_4

    .line 907
    :cond_12
    return-void
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 3339
    const/4 v0, 0x1

    return v0
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 4

    .prologue
    .line 2703
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2704
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2705
    invoke-interface {p2, v0, p0, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2706
    if-eqz v2, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFieldOperation;

    .line 2713
    invoke-interface {p2, v0}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 2714
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    .line 2717
    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    monitor-exit v1

    .line 2719
    return-void

    .line 2709
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pin()V
    .locals 1

    .prologue
    .line 3785
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3786
    return-void
.end method

.method public pin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3736
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3737
    return-void
.end method

.method public pinInBackground()LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3769
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Ljava/lang/String;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3721
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 3753
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3754
    return-void
.end method

.method public pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 3706
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3707
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2736
    :cond_0
    if-nez p2, :cond_1

    .line 2737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_1
    invoke-static {p2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2744
    :cond_2
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2745
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 1780
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1794
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3294
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3295
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback;)V

    .line 3296
    monitor-exit v1

    .line 3297
    return-void

    .line 3296
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
    .line 2638
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2639
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2641
    if-eqz v0, :cond_0

    .line 2642
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2644
    :cond_0
    monitor-exit v1

    .line 2645
    return-void

    .line 2644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2836
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 2837
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2838
    return-void
.end method

.method revert()V
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->clear()V

    .line 599
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 600
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 601
    monitor-exit v1

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1

    .prologue
    .line 1337
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 1338
    return-void
.end method

.method saveAsync(LN;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1357
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    invoke-static {v2}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1364
    :goto_0
    return-object v0

    .line 1361
    :cond_0
    new-instance v0, LL;

    invoke-direct {v0}, LL;-><init>()V

    .line 1362
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-static {v2}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$12;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;LL;)V

    invoke-virtual {v2, v3}, LN;->d(LM;)LN;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$11;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LN;->d(LM;)LN;

    move-result-object v2

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(LN;)LM;

    move-result-object v3

    invoke-virtual {v2, v3}, LN;->d(LM;)LN;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;LL;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1423
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseObject;->constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1425
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method public final saveEventually()LN;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1473
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1474
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue;->fakeObjectUpdate()V

    .line 1475
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1543
    :goto_0
    return-object v0

    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1483
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 1494
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1495
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v0

    .line 1498
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v3

    .line 1499
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 1501
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1503
    :try_start_1
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4}, Lcom/parse/ParseObject;->constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v4

    .line 1506
    invoke-virtual {v4, v0}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v3}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/parse/ParseCommand;->setOperationSetUUID(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v4}, Lcom/parse/ParseCommand;->retainLocalIds()V

    .line 1514
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 1515
    invoke-virtual {v0}, Lcom/parse/ParseObject;->saveEventually()LN;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to saveEventually."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1523
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1524
    invoke-virtual {v0, v4, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)LN;

    move-result-object v0

    .line 1525
    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)LN;

    .line 1528
    invoke-virtual {v4}, Lcom/parse/ParseCommand;->releaseLocalIds()V

    .line 1531
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1533
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    goto :goto_0

    .line 1535
    :cond_3
    new-instance v1, Lcom/parse/ParseObject$13;

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public final saveEventually(Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveEventually()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1456
    return-void
.end method

.method public final saveInBackground()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 1437
    return-void
.end method

.method saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 422
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject#saveToDisk is not allowed when OfflineStore is enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    invoke-static {p1, p2, v0}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1

    .prologue
    .line 3190
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3191
    return-void
.end method

.method setDefaultValues()V
    .locals 1

    .prologue
    .line 3329
    invoke-virtual {p0}, Lcom/parse/ParseObject;->needsDefaultACL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3330
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 3332
    :cond_0
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 1075
    monitor-exit v1

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Lcom/parse/ParseOperationSet;
    .locals 4

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1320
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1321
    monitor-exit v1

    return-object v0

    .line 1322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 1162
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 1166
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1167
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1172
    iget-object v1, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1175
    invoke-static {v1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1176
    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v1}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize object to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1178
    :cond_0
    :try_start_3
    invoke-static {v1, p2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 1183
    const-string v0, "createdAt"

    iget-object v1, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v1}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 1186
    const-string v0, "updatedAt"

    iget-object v1, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v1}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    :cond_3
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1189
    const-string v0, "objectId"

    iget-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    :cond_4
    const-string v0, "data"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1193
    const-string v0, "classname"

    iget-object v1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1195
    if-eqz p1, :cond_7

    .line 1196
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1197
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 1198
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1199
    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1200
    invoke-virtual {v0, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 1201
    invoke-interface {v2, p2}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1203
    :cond_5
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1205
    :cond_6
    const-string v0, "operations"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    :cond_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 1229
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1231
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1232
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1237
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    .line 1239
    invoke-static {v1, p2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v6

    .line 1240
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    instance-of v0, v1, Lcom/parse/ParseSetOperation;

    if-eqz v0, :cond_0

    .line 1243
    check-cast v1, Lcom/parse/ParseSetOperation;

    invoke-virtual {v1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1244
    invoke-static {v0}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v6, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v6, v0}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize object to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1252
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1253
    const-string v0, "objectId"

    iget-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1256
    :cond_2
    const-string v0, "data"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    const-string v0, "classname"

    iget-object v1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1262
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3
.end method

.method toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 755
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 759
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :try_start_1
    const-string v0, "className"

    iget-object v3, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 766
    iget-object v4, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 767
    invoke-static {v4, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not serialize object to JSON"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 770
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 771
    const-string v0, "objectId"

    iget-object v3, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 774
    const-string v0, "createdAt"

    iget-object v3, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v3}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 777
    const-string v0, "updatedAt"

    iget-object v3, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v3}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    :cond_3
    const-string v0, "isDeletingEventually"

    iget v3, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 787
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 788
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 789
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Lcom/parse/ParseOperationSet;->toRest(Lcom/parse/ParseObjectEncodingStrategy;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 791
    :cond_4
    const-string v0, "__operations"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v0, "__complete"

    iget-boolean v3, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 799
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2
.end method

.method public unpin()V
    .locals 1

    .prologue
    .line 3852
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3853
    return-void
.end method

.method public unpin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3817
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    .line 3818
    return-void
.end method

.method public unpinInBackground()LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3842
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Ljava/lang/String;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3808
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)LN;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 3830
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()LN;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3831
    return-void
.end method

.method public unpinInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1

    .prologue
    .line 3797
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 3798
    return-void
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3300
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3301
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback;)V

    .line 3302
    monitor-exit v1

    .line 3303
    return-void

    .line 3302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 1594
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 1934
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 1327
    return-void
.end method
