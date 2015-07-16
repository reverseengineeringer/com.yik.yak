.class public abstract LIC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:LII;

.field private static volatile i:Ljava/util/concurrent/Executor;


# instance fields
.field private final j:LIM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIM",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile l:LIL;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, LIC;->a:I

    .line 187
    sget v0, LIC;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LIC;->d:I

    .line 188
    sget v0, LIC;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, LIC;->e:I

    .line 191
    new-instance v0, LID;

    invoke-direct {v0}, LID;-><init>()V

    sput-object v0, LIC;->f:Ljava/util/concurrent/ThreadFactory;

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, LIC;->g:Ljava/util/concurrent/BlockingQueue;

    .line 205
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, LIC;->d:I

    sget v3, LIC;->e:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, LIC;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, LIC;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, LIC;->b:Ljava/util/concurrent/Executor;

    .line 213
    new-instance v0, LIJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LIJ;-><init>(LID;)V

    sput-object v0, LIC;->c:Ljava/util/concurrent/Executor;

    .line 218
    new-instance v0, LII;

    invoke-direct {v0}, LII;-><init>()V

    sput-object v0, LIC;->h:LII;

    .line 220
    sget-object v0, LIC;->c:Ljava/util/concurrent/Executor;

    sput-object v0, LIC;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    sget-object v0, LIL;->a:LIL;

    iput-object v0, p0, LIC;->l:LIL;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIC;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LIC;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v0, LIE;

    invoke-direct {v0, p0}, LIE;-><init>(LIC;)V

    iput-object v0, p0, LIC;->j:LIM;

    .line 298
    new-instance v0, LIF;

    iget-object v1, p0, LIC;->j:LIM;

    invoke-direct {v0, p0, v1}, LIF;-><init>(LIC;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, LIC;->k:Ljava/util/concurrent/FutureTask;

    .line 313
    return-void
.end method

.method static synthetic a(LIC;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, LIC;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LIC;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, LIC;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(LIC;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, LIC;->d(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(LIC;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, LIC;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, LIC;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 317
    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0, p1}, LIC;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 324
    sget-object v0, LIC;->h:LII;

    new-instance v1, LIH;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, LIH;-><init>(LIC;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, LII;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-object p1
.end method

.method private f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, LIC;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0, p1}, LIC;->b(Ljava/lang/Object;)V

    .line 641
    :goto_0
    sget-object v0, LIL;->c:LIL;

    iput-object v0, p0, LIC;->l:LIL;

    .line 642
    return-void

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, LIC;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)LIC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "LIC",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, LIC;->l:LIL;

    sget-object v1, LIL;->a:LIL;

    if-eq v0, v1, :cond_0

    .line 580
    sget-object v0, LIG;->a:[I

    iget-object v1, p0, LIC;->l:LIL;

    invoke-virtual {v1}, LIL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 592
    :cond_0
    sget-object v0, LIL;->b:LIL;

    iput-object v0, p0, LIC;->l:LIL;

    .line 594
    invoke-virtual {p0}, LIC;->a()V

    .line 596
    iget-object v0, p0, LIC;->j:LIM;

    iput-object p2, v0, LIM;->b:[Ljava/lang/Object;

    .line 597
    iget-object v0, p0, LIC;->k:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 599
    return-object p0

    .line 582
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 380
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, LIC;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, p0, LIC;->k:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 393
    return-void
.end method

.method public final b_()LIL;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, LIC;->l:LIL;

    return-object v0
.end method

.method public final c_()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, LIC;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
