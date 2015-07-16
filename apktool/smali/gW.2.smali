.class LgW;
.super Ljava/lang/Object;

# interfaces
.implements Lgj;
.implements Lgp;
.implements Lgq;


# instance fields
.field private volatile a:J

.field private volatile b:LgZ;

.field private volatile c:Lgm;

.field private d:Lgr;

.field private e:Lgr;

.field private final f:LfN;

.field private final g:Lgw;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lhc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private volatile m:Ljava/util/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:LiV;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lgw;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, LfN;->a(Landroid/content/Context;)LfN;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, LgW;-><init>(Landroid/content/Context;Lgw;Lgr;LfN;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lgw;Lgr;LfN;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LgW;->i:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, LgW;->s:J

    iput-object p3, p0, LgW;->e:Lgr;

    iput-object p1, p0, LgW;->h:Landroid/content/Context;

    iput-object p2, p0, LgW;->g:Lgw;

    iput-object p4, p0, LgW;->f:LfN;

    invoke-static {}, LiW;->c()LiV;

    move-result-object v0

    iput-object v0, p0, LgW;->r:LiV;

    const/4 v0, 0x0

    iput v0, p0, LgW;->j:I

    sget-object v0, LgZ;->g:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    return-void
.end method

.method private a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(LgW;)V
    .locals 0

    invoke-direct {p0}, LgW;->h()V

    return-void
.end method

.method static synthetic b(LgW;)LgZ;
    .locals 1

    iget-object v0, p0, LgW;->b:LgZ;

    return-object v0
.end method

.method static synthetic c(LgW;)V
    .locals 0

    invoke-direct {p0}, LgW;->j()V

    return-void
.end method

.method static synthetic d(LgW;)V
    .locals 0

    invoke-direct {p0}, LgW;->k()V

    return-void
.end method

.method static synthetic e(LgW;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, LgW;->i:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(LgW;)J
    .locals 2

    iget-wide v0, p0, LgW;->a:J

    return-wide v0
.end method

.method static synthetic g(LgW;)J
    .locals 2

    iget-wide v0, p0, LgW;->s:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, LgW;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->k:Ljava/util/Timer;

    iget-object v0, p0, LgW;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->l:Ljava/util/Timer;

    iget-object v0, p0, LgW;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->m:Ljava/util/Timer;

    return-void
.end method

.method static synthetic h(LgW;)LiV;
    .locals 1

    iget-object v0, p0, LgW;->r:LiV;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, LgW;->g:Lgw;

    invoke-interface {v3}, Lgw;->d()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LgW;->g:Lgw;

    invoke-interface {v2}, Lgw;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, LgX;

    invoke-direct {v3, p0}, LgX;-><init>(LgW;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, LgW;->o:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, LgW;->f()V

    :cond_2
    sget-object v2, LgY;->a:[I

    iget-object v3, p0, LgW;->b:LgZ;

    invoke-virtual {v3}, LgZ;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lhc;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending hit to store  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgc;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgW;->d:Lgr;

    invoke-virtual {v7}, Lhc;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lhc;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lhc;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lhc;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lgr;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_2
    const-string v2, "Blocked. Dropping hits."

    invoke-static {v2}, Lgc;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, LgW;->n:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, LgW;->i()V

    goto :goto_0

    :goto_2
    :pswitch_3
    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lhc;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending hit to service   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgc;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgW;->f:LfN;

    invoke-virtual {v2}, LfN;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, LgW;->c:Lgm;

    invoke-virtual {v7}, Lhc;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lhc;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lhc;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lhc;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lgm;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_3
    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lgc;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, LgW;->r:LiV;

    invoke-interface {v2}, LiV;->b()J

    move-result-wide v2

    iput-wide v2, p0, LgW;->a:J

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lgc;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, LgW;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, LgW;->d:Lgr;

    invoke-interface {v0}, Lgr;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LgW;->n:Z

    return-void
.end method

.method static synthetic i(LgW;)V
    .locals 0

    invoke-direct {p0}, LgW;->l()V

    return-void
.end method

.method static synthetic j(LgW;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, LgW;->m:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgW;->b:LgZ;

    sget-object v1, LgZ;->c:LgZ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LgW;->h:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.gms"

    iget-object v1, p0, LgW;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LgZ;->d:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    iget-object v0, p0, LgW;->c:Lgm;

    invoke-interface {v0}, Lgm;->c()V

    const-string v0, "Attempted to fall back to local store from service."

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, LgW;->g()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgW;->e:Lgr;

    if-eqz v0, :cond_2

    iget-object v0, p0, LgW;->e:Lgr;

    iput-object v0, p0, LgW;->d:Lgr;

    :goto_1
    sget-object v0, LgZ;->c:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    invoke-direct {p0}, LgW;->h()V

    goto :goto_0

    :cond_2
    invoke-static {}, LgT;->c()LgT;

    move-result-object v0

    iget-object v1, p0, LgW;->h:Landroid/content/Context;

    iget-object v2, p0, LgW;->g:Lgw;

    invoke-virtual {v0, v1, v2}, LgT;->a(Landroid/content/Context;Lgw;)V

    invoke-virtual {v0}, LgT;->d()Lgr;

    move-result-object v0

    iput-object v0, p0, LgW;->d:Lgr;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LgW;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LgW;->c:Lgm;

    if-eqz v0, :cond_0

    iget-object v0, p0, LgW;->b:LgZ;

    sget-object v1, LgZ;->c:LgZ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, LgW;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LgW;->j:I

    iget-object v0, p0, LgW;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, LgZ;->a:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgW;->l:Ljava/util/Timer;

    iget-object v0, p0, LgW;->l:Ljava/util/Timer;

    new-instance v1, Lhb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhb;-><init>(LgW;LgX;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgW;->c:Lgm;

    invoke-interface {v0}, Lgm;->b()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgW;->c:Lgm;

    if-eqz v0, :cond_0

    iget-object v0, p0, LgW;->b:LgZ;

    sget-object v1, LgZ;->b:LgZ;

    if-ne v0, v1, :cond_0

    sget-object v0, LgZ;->f:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    iget-object v0, p0, LgW;->c:Lgm;

    invoke-interface {v0}, Lgm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, LgW;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->k:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgW;->k:Ljava/util/Timer;

    iget-object v0, p0, LgW;->k:Ljava/util/Timer;

    new-instance v1, Lhd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhd;-><init>(LgW;LgX;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LgW;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LgW;->q:Z

    sget-object v0, LgY;->a:[I

    iget-object v1, p0, LgW;->b:LgZ;

    invoke-virtual {v1}, LgZ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, LgW;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LgW;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, LgZ;->e:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    iget v0, p0, LgW;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ha;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iget-object v6, p0, LgW;->i:Ljava/util/Queue;

    new-instance v0, Lhc;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lhc;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, LgW;->h()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, LgY;->a:[I

    iget-object v1, p0, LgW;->b:LgZ;

    invoke-virtual {v1}, LgZ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LgW;->n:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, LgW;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LgW;->c:Lgm;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lgn;

    iget-object v1, p0, LgW;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lgn;-><init>(Landroid/content/Context;Lgp;Lgq;)V

    iput-object v0, p0, LgW;->c:Lgm;

    invoke-direct {p0}, LgW;->k()V

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgW;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, LgW;->j:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    sget-object v0, LgZ;->b:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    iget-boolean v0, p0, LgW;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LgW;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LgW;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, LgW;->h()V

    iget-object v0, p0, LgW;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgW;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgW;->m:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgW;->m:Ljava/util/Timer;

    iget-object v0, p0, LgW;->m:Ljava/util/Timer;

    new-instance v1, Lha;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lha;-><init>(LgW;LgX;)V

    iget-wide v2, p0, LgW;->s:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgW;->b:LgZ;

    sget-object v1, LgZ;->d:LgZ;

    if-ne v0, v1, :cond_0

    const-string v0, "Service blocked."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LgW;->b:LgZ;

    sget-object v1, LgZ;->f:LgZ;

    if-ne v0, v1, :cond_1

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    invoke-direct {p0}, LgW;->g()V

    sget-object v0, LgZ;->g:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    sget-object v0, LgZ;->e:LgZ;

    iput-object v0, p0, LgW;->b:LgZ;

    iget v0, p0, LgW;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, LgW;->m()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, LgW;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public f()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgW;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, LgY;->a:[I

    iget-object v1, p0, LgW;->b:LgZ;

    invoke-virtual {v1}, LgZ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LgW;->o:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LgW;->d:Lgr;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lgr;->a(J)V

    iput-boolean v4, p0, LgW;->o:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LgW;->c:Lgm;

    invoke-interface {v0}, Lgm;->a()V

    iput-boolean v4, p0, LgW;->o:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
