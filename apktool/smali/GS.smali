.class public LGS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:LGS;

.field static final b:LHe;


# instance fields
.field final c:LHe;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHc;",
            ">;",
            "LHc;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:LGX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LGX",
            "<",
            "LGS;",
            ">;"
        }
    .end annotation
.end field

.field private final j:LGX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LGX",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:LHI;

.field private l:LGN;

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

.field private n:LHf;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, LGR;

    invoke-direct {v0}, LGR;-><init>()V

    sput-object v0, LGS;->b:LHe;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;LIq;Landroid/os/Handler;LHe;ZLGX;LHI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHc;",
            ">;",
            "LHc;",
            ">;",
            "LIq;",
            "Landroid/os/Handler;",
            "LHe;",
            "Z",
            "LGX;",
            "LHI;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, LGS;->e:Landroid/content/Context;

    .line 266
    iput-object p2, p0, LGS;->f:Ljava/util/Map;

    .line 267
    iput-object p3, p0, LGS;->g:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p4, p0, LGS;->h:Landroid/os/Handler;

    .line 269
    iput-object p5, p0, LGS;->c:LHe;

    .line 270
    iput-boolean p6, p0, LGS;->d:Z

    .line 271
    iput-object p7, p0, LGS;->i:LGX;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LGS;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LGS;->a(I)LGX;

    move-result-object v0

    iput-object v0, p0, LGS;->j:LGX;

    .line 274
    iput-object p8, p0, LGS;->k:LHI;

    .line 275
    return-void
.end method

.method static a()LGS;
    .locals 2

    .prologue
    .line 253
    sget-object v0, LGS;->a:LGS;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sget-object v0, LGS;->a:LGS;

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[LHc;)LGS;
    .locals 2

    .prologue
    .line 289
    sget-object v0, LGS;->a:LGS;

    if-nez v0, :cond_1

    .line 290
    const-class v1, LGS;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, LGS;->a:LGS;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, LGV;

    invoke-direct {v0, p0}, LGV;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, LGV;->a([LHc;)LGV;

    move-result-object v0

    invoke-virtual {v0}, LGV;->a()LGS;

    move-result-object v0

    invoke-static {v0}, LGS;->c(LGS;)V

    .line 294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    sget-object v0, LGS;->a:LGS;

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

.method public static a(Ljava/lang/Class;)LHc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LHc;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, LGS;->a()LGS;

    move-result-object v0

    iget-object v0, v0, LGS;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHc;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, LGS;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LGS;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGS;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

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
            "LHc;",
            ">;",
            "LHc;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "LHc;",
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

    check-cast v0, LHc;

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    instance-of v2, v0, LHd;

    if-eqz v2, :cond_0

    .line 562
    check-cast v0, LHd;

    invoke-interface {v0}, LHd;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, LGS;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method static synthetic b(LGS;)LGX;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LGS;->i:LGX;

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
            "LHc;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHc;",
            ">;",
            "LHc;",
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
    invoke-static {v0, p0}, LGS;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 552
    return-object v0
.end method

.method private static c(LGS;)V
    .locals 0

    .prologue
    .line 320
    sput-object p0, LGS;->a:LGS;

    .line 321
    invoke-direct {p0}, LGS;->i()V

    .line 322
    return-void
.end method

.method public static g()LHe;
    .locals 1

    .prologue
    .line 509
    sget-object v0, LGS;->a:LGS;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, LGS;->b:LHe;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LGS;->a:LGS;

    iget-object v0, v0, LGS;->c:LHe;

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 519
    sget-object v0, LGS;->a:LGS;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    sget-object v0, LGS;->a:LGS;

    iget-boolean v0, v0, LGS;->d:Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, LGS;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, LGS;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, LGS;->a(Landroid/app/Activity;)LGS;

    .line 345
    new-instance v0, LGN;

    iget-object v1, p0, LGS;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, LGN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LGS;->l:LGN;

    .line 346
    iget-object v0, p0, LGS;->l:LGN;

    new-instance v1, LGT;

    invoke-direct {v1, p0}, LGT;-><init>(LGS;)V

    invoke-virtual {v0, v1}, LGN;->a(LGQ;)Z

    .line 364
    iget-object v0, p0, LGS;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, LGS;->a(Landroid/content/Context;)V

    .line 365
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)LGS;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LGS;->m:Ljava/lang/ref/WeakReference;

    .line 329
    return-object p0
.end method

.method a(I)LGX;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LGX",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, LGU;

    invoke-direct {v0, p0, p1}, LGU;-><init>(LGS;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p0}, LGS;->f()Ljava/util/Collection;

    move-result-object v0

    .line 385
    new-instance v1, LHf;

    invoke-direct {v1, v0}, LHf;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, LGS;->n:LHf;

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    iget-object v0, p0, LGS;->n:LHf;

    sget-object v1, LGX;->d:LGX;

    iget-object v3, p0, LGS;->k:LHI;

    invoke-virtual {v0, p1, p0, v1, v3}, LHf;->a(Landroid/content/Context;LGS;LGX;LHI;)V

    .line 392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHc;

    .line 393
    iget-object v3, p0, LGS;->j:LGX;

    iget-object v4, p0, LGS;->k:LHI;

    invoke-virtual {v0, p1, p0, v3, v4}, LHc;->a(Landroid/content/Context;LGS;LGX;LHI;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, LGS;->n:LHf;

    invoke-virtual {v0}, LHf;->A()V

    .line 402
    invoke-static {}, LGS;->g()LHe;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3}, LHe;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LGS;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LGS;->c()Ljava/lang/String;

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

    check-cast v0, LHc;

    .line 413
    iget-object v3, v0, LHc;->c:LHb;

    iget-object v4, p0, LGS;->n:LHf;

    iget-object v4, v4, LHf;->c:LHb;

    invoke-virtual {v3, v4}, LHb;->a(LIs;)V

    .line 415
    iget-object v3, p0, LGS;->f:Ljava/util/Map;

    invoke-virtual {p0, v3, v0}, LGS;->a(Ljava/util/Map;LHc;)V

    .line 417
    invoke-virtual {v0}, LHc;->A()V

    .line 419
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, LHc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LHc;->d()Ljava/lang/String;

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
    invoke-static {}, LGS;->g()LHe;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;LHc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "LHc;",
            ">;",
            "LHc;",
            ">;",
            "LHc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LIh;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LIh;

    .line 439
    if-eqz v0, :cond_4

    .line 440
    invoke-interface {v0}, LIh;->a()[Ljava/lang/Class;

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

    check-cast v0, LHc;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    iget-object v6, p2, LHc;->c:LHb;

    iget-object v0, v0, LHc;->c:LHb;

    invoke-virtual {v6, v0}, LHb;->a(LIs;)V

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHc;

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v0, LIt;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, LIt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    iget-object v5, p2, LHc;->c:LHb;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHc;

    iget-object v0, v0, LHc;->c:LHb;

    invoke-virtual {v5, v0}, LHb;->a(LIs;)V

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
    iget-object v0, p0, LGS;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, LGS;->m:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, LGS;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, LGS;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
