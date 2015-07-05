.class public LAB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAB;


# instance fields
.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, LAB;

    invoke-direct {v0}, LAB;-><init>()V

    sput-object v0, LAB;->a:LAB;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, LAB;->b:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAB;->d:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAB;->e:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LAB;->f:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LAB;->g:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LAB;->h:Ljava/util/HashMap;

    .line 50
    iput v1, p0, LAB;->i:I

    .line 57
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    const-string v1, "myPeekLocations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myPeekLocations"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "myPeekLocations.json"

    invoke-static {v1, v2, v3}, LGB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    const-string v1, "myPeekLocations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()LAB;
    .locals 2

    .prologue
    .line 73
    const-class v1, LAB;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAB;->a:LAB;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, LAB;

    invoke-direct {v0}, LAB;-><init>()V

    sput-object v0, LAB;->a:LAB;

    .line 77
    :cond_0
    sget-object v0, LAB;->a:LAB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(LAD;)V
    .locals 8

    .prologue
    .line 352
    const-string v1, ""

    .line 355
    :try_start_0
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    const-string v1, "myPeekLocations"

    .line 364
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 365
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 366
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 367
    iget-boolean v5, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-nez v5, :cond_0

    .line 368
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 369
    const-string v6, "section"

    const-string v7, "My Peeks"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v6, "location"

    iget-object v7, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v6, "latitude"

    iget-object v7, v0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v6, "longitude"

    iget-object v7, v0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v6, "id"

    iget-object v7, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    sget-object v6, LAD;->d:LAD;

    if-ne p1, v6, :cond_1

    .line 375
    const-string v6, "isNew"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 376
    const-string v6, "isUnread"

    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 378
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    :cond_2
    :goto_3
    return-void

    .line 357
    :cond_3
    :try_start_1
    sget-object v0, LAD;->d:LAD;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    const-string v1, "visitedPeeks"

    goto/16 :goto_0

    .line 366
    :cond_4
    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto/16 :goto_1

    .line 381
    :cond_5
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, LGB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private b(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 345
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    iget-object v1, p1, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    iget-object v2, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    iget-object v4, p1, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    iget-object v5, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    iput-boolean v7, v0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 347
    iput-boolean v7, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 348
    iget-object v1, p0, LAB;->h:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    .line 340
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    iget-object v7, p0, LAB;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "My Peeks"

    const-string v2, "Click here to discover new places!"

    const-string v3, "0"

    const-string v4, "0"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, LAB;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, LAB;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget v1, p0, LAB;->i:I

    .line 394
    iget-object v0, p0, LAB;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 395
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 396
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 397
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, LAB;->c()Ljava/util/ArrayList;

    .line 220
    :cond_0
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/String;

    .line 223
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/PeekLocation;

    iget-boolean v1, v1, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "My Peeks"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, LAD;->a:LAD;

    invoke-direct {p0, v1}, LAB;->b(LAD;)V

    .line 231
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    invoke-virtual {v1, v0}, LGs;->b(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 232
    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    return-object v0
.end method

.method public a(LAD;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 240
    :try_start_0
    sget-object v1, LAD;->a:LAD;

    if-ne p1, v1, :cond_0

    .line 241
    const-string v1, "myPeekLocations"

    .line 242
    iget-object v2, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 251
    :goto_0
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LGB;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v2}, LGB;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 254
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 257
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v7, v0

    .line 258
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 259
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 260
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 262
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_2

    .line 263
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "My Peeks"

    const-string v2, "location"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 243
    :cond_0
    sget-object v1, LAD;->d:LAD;

    if-ne p1, v1, :cond_1

    .line 244
    const-string v1, "visitedPeeks"

    .line 245
    iget-object v2, p0, LAB;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 285
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_1

    .line 286
    invoke-direct {p0}, LAB;->h()V

    .line 289
    :cond_1
    :goto_3
    return-void

    .line 266
    :cond_2
    :try_start_1
    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Visited"

    const-string v2, "location"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id"

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 268
    const-string v1, "isUnread"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 269
    iget-object v1, p0, LAB;->h:Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 273
    :cond_3
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_1

    .line 274
    invoke-direct {p0}, LAB;->h()V

    goto :goto_3

    .line 278
    :cond_4
    sget-object v0, LAD;->a:LAD;

    if-ne p1, v0, :cond_1

    .line 279
    invoke-direct {p0}, LAB;->h()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 317
    sget-object v0, LAD;->d:LAD;

    invoke-direct {p0, v0}, LAB;->b(LAD;)V

    .line 319
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, LAB;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 82
    iget-object v1, p0, LAB;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iput-object p2, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 332
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    sget-object v0, LAD;->a:LAD;

    invoke-direct {p0, v0}, LAB;->b(LAD;)V

    .line 336
    invoke-virtual {p0}, LAB;->f()V

    .line 337
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    iput v4, p0, LAB;->i:I

    .line 99
    iput-object p1, p0, LAB;->c:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p0, LAB;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, LAD;->d:LAD;

    invoke-virtual {p0, v0}, LAB;->a(LAD;)V

    .line 105
    :cond_0
    iget-object v0, p0, LAB;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    iget-object v0, p0, LAB;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 110
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v3, "Featured"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, LAB;->h:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yik/yak/data/models/PeekLocation;

    .line 114
    if-nez v1, :cond_2

    .line 115
    iget v1, p0, LAB;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LAB;->i:I

    .line 116
    iput-boolean v5, v0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 117
    iput-boolean v5, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 118
    invoke-direct {p0, v0}, LAB;->b(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 125
    :goto_1
    iget-object v1, p0, LAB;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    iput-boolean v4, v1, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 121
    iput-boolean v4, v0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 122
    iget-boolean v1, v1, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    goto :goto_1

    .line 126
    :cond_3
    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v3, "My Peeks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v3, "Peek Near"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, LAB;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_5
    iput-boolean v5, p0, LAB;->b:Z

    .line 135
    invoke-direct {p0}, LAB;->i()V

    .line 136
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 173
    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, LAD;->a:LAD;

    invoke-virtual {p0, v0}, LAB;->a(LAD;)V

    .line 140
    invoke-virtual {p0}, LAB;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    new-instance v1, LAC;

    invoke-direct {v1, p0}, LAC;-><init>(LAB;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    return-object v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, LAB;->h()V

    .line 311
    :cond_1
    sget-object v0, LAD;->a:LAD;

    invoke-direct {p0, v0}, LAB;->b(LAD;)V

    .line 312
    return-void
.end method

.method public e()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 183
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 187
    iget-object v0, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 189
    iget-object v3, p0, LAB;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 190
    goto :goto_0

    :cond_1
    move v0, v2

    .line 192
    goto :goto_0

    :cond_2
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method public f()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v8, p0, LAB;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Featured"

    const-string v2, "Featured"

    const-string v4, "0"

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LAB;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v8, p0, LAB;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "My Peeks"

    const-string v2, "My Peeks"

    const-string v4, ""

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, LAB;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v8, p0, LAB;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/yik/yak/data/models/PeekLocation;

    const-string v1, "Peek Near"

    const-string v2, "Peek Near"

    const-string v4, "0"

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, LAB;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LAB;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    invoke-direct {p0}, LAB;->i()V

    .line 300
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 322
    sget-object v0, LAD;->d:LAD;

    invoke-direct {p0, v0}, LAB;->b(LAD;)V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, LAB;->i:I

    .line 324
    invoke-direct {p0}, LAB;->i()V

    .line 325
    return-void
.end method
