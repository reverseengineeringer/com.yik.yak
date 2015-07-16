.class Lcom/parse/OfflineStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_SQL_VARIABLES:I = 0x3e7

.field private static defaultInstance:Lcom/parse/OfflineStore;

.field private static final defaultInstanceLock:Ljava/lang/Object;


# instance fields
.field private final classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "LN",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final helper:Lcom/parse/OfflineSQLiteOpenHelper;

.field private final lock:Ljava/lang/Object;

.field private final objectToUuidMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "LN",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 206
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 215
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    .line 223
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    .line 230
    new-instance v0, Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    .line 231
    return-void
.end method

.method static synthetic access$1000(Lcom/parse/OfflineStore;Ljava/lang/String;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/OfflineStore;)Lcom/parse/OfflineSQLiteOpenHelper;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method private deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    new-instance v1, LL;

    invoke-direct {v1}, LL;-><init>()V

    .line 1297
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 1299
    if-nez v0, :cond_0

    .line 1301
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    monitor-exit v2

    .line 1367
    :goto_0
    return-object v0

    .line 1303
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    new-instance v2, Lcom/parse/OfflineStore$38;

    invoke-direct {v2, p0, v1}, Lcom/parse/OfflineStore$38;-><init>(Lcom/parse/OfflineStore;LL;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    .line 1313
    new-instance v2, Lcom/parse/OfflineStore$40;

    invoke-direct {v2, p0, v1, p2}, Lcom/parse/OfflineStore$40;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$39;

    invoke-direct {v2, p0, p2, p1}, Lcom/parse/OfflineStore$39;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    .line 1367
    new-instance v2, Lcom/parse/OfflineStore$42;

    invoke-direct {v2, p0, v1, p2}, Lcom/parse/OfflineStore$42;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$41;

    invoke-direct {v2, p0, v1, p2}, Lcom/parse/OfflineStore$41;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 1303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e7

    const/4 v0, 0x0

    .line 1123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1124
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1145
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1130
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/OfflineStore$33;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 1138
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1139
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1140
    const-string v2, "?"

    aput-object v2, v1, v0

    .line 1139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1142
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1145
    const-string v2, "ParseObjects"

    invoke-virtual {p2, v2, v1, v0}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method static disableOfflineStore()V
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableOfflineStore(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/parse/OfflineStore;

    invoke-direct {v0, p0}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "enableOfflineStore() called multiple times."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrent()Lcom/parse/OfflineStore;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {}, LN;->a()LZ;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    monitor-exit v3

    .line 276
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$1;

    invoke-direct {v5, p0, p1}, Lcom/parse/OfflineStore$1;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v4, v5}, LN;->c(LM;)LN;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    const-string v3, "uuid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "ParseObjects"

    invoke-virtual {p2, v3, v0}, Lcom/parse/ParseSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)LN;

    move-result-object v0

    new-instance v3, Lcom/parse/OfflineStore$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/parse/OfflineStore$2;-><init>(Lcom/parse/OfflineStore;LZ;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, LN;->a(LM;)LN;

    .line 276
    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0, p1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    monitor-exit v1

    .line 308
    :goto_0
    return-object v0

    .line 298
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "className"

    aput-object v1, v0, v3

    const-string v1, "objectId"

    aput-object v1, v0, v2

    .line 306
    const-string v1, "uuid = ?"

    .line 307
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    .line 308
    const-string v3, "ParseObjects"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$3;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$3;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-virtual {p2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasOutstandingOperations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 847
    :goto_0
    return-object v0

    .line 844
    :cond_0
    new-instance v2, LL;

    invoke-direct {v2}, LL;-><init>()V

    .line 845
    new-instance v4, LL;

    invoke-direct {v4}, LL;-><init>()V

    .line 847
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$19;

    invoke-direct {v1, p0, p2, p3}, Lcom/parse/OfflineStore$19;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$18;

    invoke-direct {v1, p0, p2, p3}, Lcom/parse/OfflineStore$18;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v6

    new-instance v0, Lcom/parse/OfflineStore$17;

    move-object v1, p0

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore$17;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;LL;Lcom/parse/ParseObject;)V

    invoke-virtual {v6, v0}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v5, Lcom/parse/OfflineStore$16;

    move-object v6, p0

    move-object v7, p2

    move-object v8, v4

    move-object v9, v2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/parse/OfflineStore$16;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;LL;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v5}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$15;

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/parse/OfflineStore$15;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method private unpinAsync(Ljava/lang/String;)LN;
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
    .line 1041
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$28;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$28;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1071
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$32;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$32;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$31;

    invoke-direct {v2, p0, v1, p2}, Lcom/parse/OfflineStore$31;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$30;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$30;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$29;

    invoke-direct {v2, p0, v1}, Lcom/parse/OfflineStore$29;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;)V

    invoke-virtual {v0, v2}, LN;->c(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1218
    new-instance v3, LL;

    invoke-direct {v3}, LL;-><init>()V

    .line 1219
    new-instance v5, LL;

    invoke-direct {v5}, LL;-><init>()V

    .line 1223
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LN;

    move-object v7, v0

    .line 1225
    if-nez v7, :cond_0

    .line 1227
    const/4 v1, 0x0

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    monitor-exit v2

    .line 1230
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    new-instance v1, Lcom/parse/OfflineStore$36;

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/parse/OfflineStore$36;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;LL;Lcom/parse/ParseObject;)V

    invoke-virtual {v7, v1}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v6, Lcom/parse/OfflineStore$35;

    move-object v7, p0

    move-object v8, p1

    move-object v9, v5

    move-object v10, v3

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/parse/OfflineStore$35;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;LL;LL;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v6}, LN;->d(LM;)LN;

    move-result-object v1

    goto :goto_0

    .line 1229
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method clearDatabase(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;->clearDatabase(Landroid/content/Context;)V

    .line 1405
    return-void
.end method

.method countAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZ)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "ZZ)",
            "LN",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZ)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$4;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$4;-><init>(Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method deleteDataForObjectAsync(Lcom/parse/ParseObject;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$37;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$37;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$14;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$14;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 607
    invoke-static {}, LN;->a()LZ;

    move-result-object v2

    .line 610
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    monitor-exit v1

    .line 739
    :goto_0
    return-object v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 626
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    .line 634
    const/4 v1, 0x0

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    .line 636
    if-nez v4, :cond_2

    .line 638
    if-nez v0, :cond_1

    move-object v0, v1

    .line 739
    :goto_1
    new-instance v1, Lcom/parse/OfflineStore$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/parse/OfflineStore$13;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$12;

    invoke-direct {v1, p0, v2, p1}, Lcom/parse/OfflineStore$12;-><init>(Lcom/parse/OfflineStore;LZ;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 653
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "json"

    aput-object v3, v1, v7

    .line 654
    new-instance v3, LL;

    invoke-direct {v3}, LL;-><init>()V

    .line 656
    new-instance v4, Lcom/parse/OfflineStore$10;

    invoke-direct {v4, p0, v3, p2, v1}, Lcom/parse/OfflineStore$10;-><init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;[Ljava/lang/String;)V

    invoke-virtual {v0, v4}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$9;

    invoke-direct {v1, p0, v3}, Lcom/parse/OfflineStore$9;-><init>(Lcom/parse/OfflineStore;LL;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_1

    .line 677
    :cond_2
    if-eqz v0, :cond_3

    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object must have already been fetched from the local datastore, but isn\'t marked as fetched."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, LZ;->b(Ljava/lang/Exception;)V

    .line 684
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_2
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    invoke-virtual {v2}, LZ;->a()LN;

    move-result-object v0

    goto :goto_0

    .line 687
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 697
    :cond_3
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "json"

    aput-object v1, v0, v7

    const-string v1, "uuid"

    aput-object v1, v0, v8

    .line 698
    const-string v1, "%s = ? AND %s = ?"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "className"

    aput-object v6, v5, v7

    const-string v6, "objectId"

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 701
    new-array v5, v9, [Ljava/lang/String;

    aput-object v3, v5, v7

    aput-object v4, v5, v8

    .line 702
    const-string v3, "ParseObjects"

    invoke-virtual {p2, v3, v0, v1, v5}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$11;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$11;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_1
.end method

.method findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZ)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "ZZ)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 348
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZ)LN;

    move-result-object v0

    return-object v0
.end method

.method findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZ)LN;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "ZZZ)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LN;

    move-result-object v8

    new-instance v0, Lcom/parse/OfflineStore$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/parse/OfflineStore$5;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZ)V

    invoke-virtual {v8, v0}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZLcom/parse/ParseSQLiteDatabase;)LN;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "ZZZ",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v3, Lcom/parse/OfflineQueryLogic;

    invoke-direct {v3, p0}, Lcom/parse/OfflineQueryLogic;-><init>(Lcom/parse/OfflineStore;)V

    .line 414
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 417
    if-nez p3, :cond_1

    .line 418
    const-string v2, "ParseObjects"

    .line 419
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "uuid"

    aput-object v5, v4, v1

    .line 420
    const-string v1, "className=?"

    .line 421
    if-nez p5, :cond_0

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND isDeletingEventually=0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 426
    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v4, v1, v5}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v1

    move-object v9, v1

    .line 455
    :goto_0
    new-instance v1, Lcom/parse/OfflineStore$8;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/parse/OfflineStore$8;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;ZLcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {v9, v1}, LN;->d(LM;)LN;

    move-result-object v9

    new-instance v1, Lcom/parse/OfflineStore$7;

    move-object v2, p0

    move-object v4, v8

    move-object v5, p1

    move v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/parse/OfflineStore$7;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Ljava/util/List;Lcom/parse/ParseQuery;ZLcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v9, v1}, LN;->d(LM;)LN;

    move-result-object v1

    :goto_1
    return-object v1

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN;

    .line 429
    if-nez v1, :cond_2

    .line 431
    invoke-static {v8}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    goto :goto_1

    .line 434
    :cond_2
    new-instance v2, Lcom/parse/OfflineStore$6;

    move-object/from16 v0, p7

    invoke-direct {v2, p0, p5, p1, v0}, Lcom/parse/OfflineStore$6;-><init>(Lcom/parse/OfflineStore;ZLcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    move-object v9, v1

    goto :goto_0
.end method

.method getOrCreateObjectWithoutData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    if-nez p2, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "objectId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v2, v0}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 559
    if-eqz v0, :cond_1

    .line 560
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1

    .line 564
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerNewObject(Lcom/parse/ParseObject;)V
    .locals 2

    .prologue
    .line 1153
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v1, v0, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1159
    :cond_0
    return-void
.end method

.method saveLocallyAsync(Lcom/parse/ParseObject;Z)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Z)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/OfflineStore$20;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Z)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 959
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 961
    if-nez p2, :cond_0

    .line 962
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    invoke-virtual {p0, p1, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    .line 982
    :goto_0
    return-object v0

    .line 966
    :cond_0
    new-instance v0, Lcom/parse/OfflineStore$21;

    invoke-direct {v0, p0, v1}, Lcom/parse/OfflineStore$21;-><init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore$21;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 977
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 978
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 979
    invoke-virtual {p0, v0, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 982
    :cond_1
    invoke-static {v2}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$25;

    invoke-direct {v2, p0, p1}, Lcom/parse/OfflineStore$25;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v2}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$24;

    invoke-direct {v2, p0, p3}, Lcom/parse/OfflineStore$24;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$23;

    invoke-direct {v2, p0, p1, p3}, Lcom/parse/OfflineStore$23;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v2, Lcom/parse/OfflineStore$22;

    invoke-direct {v2, p0, v1, p3}, Lcom/parse/OfflineStore$22;-><init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1394
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1395
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1396
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1397
    monitor-exit v1

    .line 1398
    return-void

    .line 1397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unpinAsync(Lcom/parse/ParseObject;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$27;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$27;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$26;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$26;-><init>(Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method updateDataForObjectAsync(Lcom/parse/ParseObject;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 1171
    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "An object cannot be updated if it wasn\'t fetched."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    monitor-exit v1

    .line 1176
    :goto_0
    return-object v0

    .line 1175
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    new-instance v1, Lcom/parse/OfflineStore$34;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$34;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 1175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 573
    if-eqz p2, :cond_1

    .line 574
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "objectIds cannot be changed in offline mode."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 583
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0, v1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 586
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempted to change an objectId to one that\'s already known to the Offline Store."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 592
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
