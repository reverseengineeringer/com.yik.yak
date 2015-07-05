.class public LR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQ",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, LM;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LR;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, LM;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, LR;->c:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, LG;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, LR;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR;->d:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LR;->i:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/Exception;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lad;->b(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lad;->b(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)LR;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "LR",
            "<*>;>;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-static {}, LR;->a()Lad;

    move-result-object v5

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 228
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 230
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LR;

    .line 233
    new-instance v0, LW;

    invoke-direct/range {v0 .. v5}, LW;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lad;)V

    invoke-virtual {v6, v0}, LR;->a(LQ;)LR;

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v5}, Lad;->a()LR;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Callable;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, LR;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 191
    new-instance v1, LV;

    invoke-direct {v1, v0, p0}, LV;-><init>(Lad;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "LR",
            "<TTResult;>.ad;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, LR;

    invoke-direct {v0}, LR;-><init>()V

    .line 64
    new-instance v1, Lad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lad;-><init>(LR;LS;)V

    return-object v1
.end method

.method static synthetic a(LR;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, LR;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LR;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(LR;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, LR;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, LR;->c(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(LR;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, LR;->e:Z

    return p1
.end method

.method public static b(Ljava/util/concurrent/Callable;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, LR;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, LR;->d(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(LR;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, LR;->e:Z

    return v0
.end method

.method static synthetic b(LR;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, LR;->f:Z

    return p1
.end method

.method static synthetic c(LR;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, LR;->k()V

    return-void
.end method

.method private static c(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "LR",
            "<TTContinuationResult;>.ad;",
            "LQ",
            "<TTResult;TTContinuationResult;>;",
            "LR",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lac;

    invoke-direct {v0, p1, p2, p0}, Lac;-><init>(LQ;LR;Lad;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private static d(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "LR",
            "<TTContinuationResult;>.ad;",
            "LQ",
            "<TTResult;",
            "LR",
            "<TTContinuationResult;>;>;",
            "LR",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, LT;

    invoke-direct {v0, p1, p2, p0}, LT;-><init>(LQ;LR;Lad;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public static h()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lad;->c()V

    .line 148
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, LR;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    invoke-interface {v0, p0}, LQ;->then(LR;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    :try_start_2
    throw v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 518
    :catch_1
    move-exception v0

    .line 519
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LR;->i:Ljava/util/List;

    .line 523
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    return-void
.end method


# virtual methods
.method public a(LQ;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;TTContinuationResult;>;)",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, LR;->a(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public a(LQ;Ljava/util/concurrent/Executor;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 310
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-virtual {p0}, LR;->b()Z

    move-result v2

    .line 312
    if-nez v2, :cond_0

    .line 313
    iget-object v3, p0, LR;->i:Ljava/util/List;

    new-instance v4, LY;

    invoke-direct {v4, p0, v0, p1, p2}, LY;-><init>(LR;Lad;LQ;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz v2, :cond_1

    .line 323
    invoke-static {v0, p1, p0, p2}, LR;->c(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V

    .line 325
    :cond_1
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/concurrent/Callable;LQ;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "LQ",
            "<",
            "Ljava/lang/Void;",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, LR;->a(Ljava/util/concurrent/Callable;LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;LQ;Ljava/util/concurrent/Executor;)LR;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "LQ",
            "<",
            "Ljava/lang/Void;",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v5, LP;

    invoke-direct {v5}, LP;-><init>()V

    .line 288
    new-instance v0, LX;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LX;-><init>(LR;Ljava/util/concurrent/Callable;LQ;Ljava/util/concurrent/Executor;LP;)V

    invoke-virtual {v5, v0}, LP;->a(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, LR;->j()LR;

    move-result-object v1

    invoke-virtual {v5}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ;

    invoke-virtual {v1, v0, p3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public b(LQ;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;",
            "LR",
            "<TTContinuationResult;>;>;)",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public b(LQ;Ljava/util/concurrent/Executor;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;",
            "LR",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 345
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-virtual {p0}, LR;->b()Z

    move-result v2

    .line 347
    if-nez v2, :cond_0

    .line 348
    iget-object v3, p0, LR;->i:Ljava/util/List;

    new-instance v4, LZ;

    invoke-direct {v4, p0, v0, p1, p2}, LZ;-><init>(LR;Lad;LQ;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v2, :cond_1

    .line 358
    invoke-static {v0, p1, p0, p2}, LR;->d(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V

    .line 360
    :cond_1
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, LR;->e:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(LQ;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;TTContinuationResult;>;)",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, LR;->c(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public c(LQ;Ljava/util/concurrent/Executor;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Laa;

    invoke-direct {v0, p0, p1}, Laa;-><init>(LR;LQ;)V

    invoke-virtual {p0, v0, p2}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, LR;->f:Z

    monitor-exit v1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(LQ;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;",
            "LR",
            "<TTContinuationResult;>;>;)",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, LR;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public d(LQ;Ljava/util/concurrent/Executor;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "LQ",
            "<TTResult;",
            "LR",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lab;

    invoke-direct {v0, p0, p1}, Lab;-><init>(LR;LQ;)V

    invoke-virtual {p0, v0, p2}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, LR;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, LR;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, LR;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, LR;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-virtual {p0}, LR;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, LR;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 121
    :cond_0
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()LR;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "LR",
            "<TTOut;>;"
        }
    .end annotation

    .prologue
    .line 157
    .line 158
    return-object p0
.end method

.method public j()LR;
    .locals 1
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
    .line 165
    new-instance v0, LS;

    invoke-direct {v0, p0}, LS;-><init>(LR;)V

    invoke-virtual {p0, v0}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method
