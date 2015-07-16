.class public LHA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:LHA;

.field static final b:LHM;


# instance fields
.field final c:LHM;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHK;",
            ">;",
            "LHK;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:LHF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHF",
            "<",
            "LHA;",
            ">;"
        }
    .end annotation
.end field

.field private final j:LHF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHF",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:LIq;

.field private l:LHv;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:LHN;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, LHz;

    invoke-direct {v0}, LHz;-><init>()V

    sput-object v0, LHA;->b:LHM;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;LIY;Landroid/os/Handler;LHM;ZLHF;LIq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHK;",
            ">;",
            "LHK;",
            ">;",
            "LIY;",
            "Landroid/os/Handler;",
            "LHM;",
            "Z",
            "LHF;",
            "LIq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, LHA;->e:Landroid/content/Context;

    .line 266
    iput-object p2, p0, LHA;->f:Ljava/util/Map;

    .line 267
    iput-object p3, p0, LHA;->g:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p4, p0, LHA;->h:Landroid/os/Handler;

    .line 269
    iput-object p5, p0, LHA;->c:LHM;

    .line 270
    iput-boolean p6, p0, LHA;->d:Z

    .line 271
    iput-object p7, p0, LHA;->i:LHF;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LHA;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LHA;->a(I)LHF;

    move-result-object v0

    iput-object v0, p0, LHA;->j:LHF;

    .line 274
    iput-object p8, p0, LHA;->k:LIq;

    .line 275
    return-void
.end method

.method static a()LHA;
    .locals 2

    .prologue
    .line 253
    sget-object v0, LHA;->a:LHA;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sget-object v0, LHA;->a:LHA;

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[LHK;)LHA;
    .locals 2

    .prologue
    .line 289
    sget-object v0, LHA;->a:LHA;

    if-nez v0, :cond_1

    .line 290
    const-class v1, LHA;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, LHA;->a:LHA;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, LHD;

    invoke-direct {v0, p0}, LHD;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, LHD;->a([LHK;)LHD;

    move-result-object v0

    invoke-virtual {v0}, LHD;->a()LHA;

    move-result-object v0

    invoke-static {v0}, LHA;->c(LHA;)V

    .line 294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    sget-object v0, LHA;->a:LHA;

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Class;)LHK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LHK;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, LHA;->a()LHA;

    move-result-object v0

    iget-object v0, v0, LHA;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, LHA;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LHA;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LHA;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHK;",
            ">;",
            "LHK;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "LHK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    instance-of v2, v0, LHL;

    if-eqz v2, :cond_0

    .line 562
    check-cast v0, LHL;

    invoke-interface {v0}, LHL;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, LHA;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method static synthetic b(LHA;)LHF;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LHA;->i:LHF;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 466
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Landroid/app/Activity;

    .line 469
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "LHK;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHK;",
            ">;",
            "LHK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 550
    invoke-static {v0, p0}, LHA;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 552
    return-object v0
.end method

.method private static c(LHA;)V
    .locals 0

    .prologue
    .line 320
    sput-object p0, LHA;->a:LHA;

    .line 321
    invoke-direct {p0}, LHA;->i()V

    .line 322
    return-void
.end method

.method public static g()LHM;
    .locals 1

    .prologue
    .line 509
    sget-object v0, LHA;->a:LHA;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, LHA;->b:LHM;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LHA;->a:LHA;

    iget-object v0, v0, LHA;->c:LHM;

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 519
    sget-object v0, LHA;->a:LHA;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    sget-object v0, LHA;->a:LHA;

    iget-boolean v0, v0, LHA;->d:Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, LHA;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, LHA;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, LHA;->a(Landroid/app/Activity;)LHA;

    .line 345
    new-instance v0, LHv;

    iget-object v1, p0, LHA;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, LHv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LHA;->l:LHv;

    .line 346
    iget-object v0, p0, LHA;->l:LHv;

    new-instance v1, LHB;

    invoke-direct {v1, p0}, LHB;-><init>(LHA;)V

    invoke-virtual {v0, v1}, LHv;->a(LHy;)Z

    .line 364
    iget-object v0, p0, LHA;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, LHA;->a(Landroid/content/Context;)V

    .line 365
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)LHA;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LHA;->m:Ljava/lang/ref/WeakReference;

    .line 329
    return-object p0
.end method

.method a(I)LHF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LHF",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, LHC;

    invoke-direct {v0, p0, p1}, LHC;-><init>(LHA;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p0}, LHA;->f()Ljava/util/Collection;

    move-result-object v0

    .line 385
    new-instance v1, LHN;

    invoke-direct {v1, v0}, LHN;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, LHA;->n:LHN;

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    iget-object v0, p0, LHA;->n:LHN;

    sget-object v1, LHF;->d:LHF;

    iget-object v3, p0, LHA;->k:LIq;

    invoke-virtual {v0, p1, p0, v1, v3}, LHN;->a(Landroid/content/Context;LHA;LHF;LIq;)V

    .line 392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 393
    iget-object v3, p0, LHA;->j:LHF;

    iget-object v4, p0, LHA;->k:LIq;

    invoke-virtual {v0, p1, p0, v3, v4}, LHK;->a(Landroid/content/Context;LHA;LHF;LIq;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, LHA;->n:LHN;

    invoke-virtual {v0}, LHN;->A()V

    .line 402
    invoke-static {}, LHA;->g()LHM;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3}, LHM;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LHA;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LHA;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, v0

    .line 412
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 413
    iget-object v3, v0, LHK;->c:LHJ;

    iget-object v4, p0, LHA;->n:LHN;

    iget-object v4, v4, LHN;->c:LHJ;

    invoke-virtual {v3, v4}, LHJ;->a(LJa;)V

    .line 415
    iget-object v3, p0, LHA;->f:Ljava/util/Map;

    invoke-virtual {p0, v3, v0}, LHA;->a(Ljava/util/Map;LHK;)V

    .line 417
    invoke-virtual {v0}, LHK;->A()V

    .line 419
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, LHK;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LHK;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 409
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 427
    :cond_3
    if-eqz v1, :cond_4

    .line 428
    invoke-static {}, LHA;->g()LHM;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;LHK;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHK;",
            ">;",
            "LHK;",
            ">;",
            "LHK;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LIP;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LIP;

    .line 439
    if-eqz v0, :cond_4

    .line 440
    invoke-interface {v0}, LIP;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 441
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 442
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    iget-object v6, p2, LHK;->c:LHJ;

    iget-object v0, v0, LHK;->c:LHJ;

    invoke-virtual {v6, v0}, LHJ;->a(LJa;)V

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v0, LJb;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, LJb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    iget-object v5, p2, LHK;->c:LHJ;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHK;

    iget-object v0, v0, LHK;->c:LHJ;

    invoke-virtual {v5, v0}, LHJ;->a(LJa;)V

    .line 441
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, LHA;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, LHA;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "1.2.0.37"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, LHA;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LHK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, LHA;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
