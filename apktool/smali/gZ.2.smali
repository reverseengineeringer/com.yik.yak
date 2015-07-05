.class LgZ;
.super Ljava/lang/Object;

# interfaces
.implements Lgm;
.implements Lgs;
.implements Lgt;


# instance fields
.field private volatile a:J

.field private volatile b:Lhc;

.field private volatile c:Lgp;

.field private d:Lgu;

.field private e:Lgu;

.field private final f:LfQ;

.field private final g:Lgz;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lhf;",
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

.field private r:LiY;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lgz;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, LfQ;->a(Landroid/content/Context;)LfQ;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, LgZ;-><init>(Landroid/content/Context;Lgz;Lgu;LfQ;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lgz;Lgu;LfQ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LgZ;->i:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, LgZ;->s:J

    iput-object p3, p0, LgZ;->e:Lgu;

    iput-object p1, p0, LgZ;->h:Landroid/content/Context;

    iput-object p2, p0, LgZ;->g:Lgz;

    iput-object p4, p0, LgZ;->f:LfQ;

    invoke-static {}, LiZ;->c()LiY;

    move-result-object v0

    iput-object v0, p0, LgZ;->r:LiY;

    const/4 v0, 0x0

    iput v0, p0, LgZ;->j:I

    sget-object v0, Lhc;->g:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

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

.method static synthetic a(LgZ;)V
    .locals 0

    invoke-direct {p0}, LgZ;->h()V

    return-void
.end method

.method static synthetic b(LgZ;)Lhc;
    .locals 1

    iget-object v0, p0, LgZ;->b:Lhc;

    return-object v0
.end method

.method static synthetic c(LgZ;)V
    .locals 0

    invoke-direct {p0}, LgZ;->j()V

    return-void
.end method

.method static synthetic d(LgZ;)V
    .locals 0

    invoke-direct {p0}, LgZ;->k()V

    return-void
.end method

.method static synthetic e(LgZ;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, LgZ;->i:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(LgZ;)J
    .locals 2

    iget-wide v0, p0, LgZ;->a:J

    return-wide v0
.end method

.method static synthetic g(LgZ;)J
    .locals 2

    iget-wide v0, p0, LgZ;->s:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, LgZ;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->k:Ljava/util/Timer;

    iget-object v0, p0, LgZ;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->l:Ljava/util/Timer;

    iget-object v0, p0, LgZ;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->m:Ljava/util/Timer;

    return-void
.end method

.method static synthetic h(LgZ;)LiY;
    .locals 1

    iget-object v0, p0, LgZ;->r:LiY;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, LgZ;->g:Lgz;

    invoke-interface {v3}, Lgz;->d()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LgZ;->g:Lgz;

    invoke-interface {v2}, Lgz;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lha;

    invoke-direct {v3, p0}, Lha;-><init>(LgZ;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, LgZ;->o:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, LgZ;->f()V

    :cond_2
    sget-object v2, Lhb;->a:[I

    iget-object v3, p0, LgZ;->b:Lhc;

    invoke-virtual {v3}, Lhc;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lhf;

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

    invoke-static {v2}, Lgf;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgZ;->d:Lgu;

    invoke-virtual {v7}, Lhf;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lhf;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lhf;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lhf;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lgu;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
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

    invoke-static {v2}, Lgf;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, LgZ;->n:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, LgZ;->i()V

    goto :goto_0

    :goto_2
    :pswitch_3
    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lhf;

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

    invoke-static {v2}, Lgf;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgZ;->f:LfQ;

    invoke-virtual {v2}, LfQ;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, LgZ;->c:Lgp;

    invoke-virtual {v7}, Lhf;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lhf;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lhf;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lhf;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lgp;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_3
    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lgf;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, LgZ;->r:LiY;

    invoke-interface {v2}, LiY;->b()J

    move-result-wide v2

    iput-wide v2, p0, LgZ;->a:J

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lgf;->c(Ljava/lang/String;)V

    iget-object v2, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, LgZ;->k()V
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

    iget-object v0, p0, LgZ;->d:Lgu;

    invoke-interface {v0}, Lgu;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LgZ;->n:Z

    return-void
.end method

.method static synthetic i(LgZ;)V
    .locals 0

    invoke-direct {p0}, LgZ;->l()V

    return-void
.end method

.method static synthetic j(LgZ;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, LgZ;->m:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgZ;->b:Lhc;

    sget-object v1, Lhc;->c:Lhc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LgZ;->h:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.gms"

    iget-object v1, p0, LgZ;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lhc;->d:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    iget-object v0, p0, LgZ;->c:Lgp;

    invoke-interface {v0}, Lgp;->c()V

    const-string v0, "Attempted to fall back to local store from service."

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, LgZ;->g()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgZ;->e:Lgu;

    if-eqz v0, :cond_2

    iget-object v0, p0, LgZ;->e:Lgu;

    iput-object v0, p0, LgZ;->d:Lgu;

    :goto_1
    sget-object v0, Lhc;->c:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    invoke-direct {p0}, LgZ;->h()V

    goto :goto_0

    :cond_2
    invoke-static {}, LgW;->c()LgW;

    move-result-object v0

    iget-object v1, p0, LgZ;->h:Landroid/content/Context;

    iget-object v2, p0, LgZ;->g:Lgz;

    invoke-virtual {v0, v1, v2}, LgW;->a(Landroid/content/Context;Lgz;)V

    invoke-virtual {v0}, LgW;->d()Lgu;

    move-result-object v0

    iput-object v0, p0, LgZ;->d:Lgu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LgZ;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LgZ;->c:Lgp;

    if-eqz v0, :cond_0

    iget-object v0, p0, LgZ;->b:Lhc;

    sget-object v1, Lhc;->c:Lhc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, LgZ;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LgZ;->j:I

    iget-object v0, p0, LgZ;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lhc;->a:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgZ;->l:Ljava/util/Timer;

    iget-object v0, p0, LgZ;->l:Ljava/util/Timer;

    new-instance v1, Lhe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhe;-><init>(LgZ;Lha;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgZ;->c:Lgp;

    invoke-interface {v0}, Lgp;->b()V
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

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->j()V
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

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgZ;->c:Lgp;

    if-eqz v0, :cond_0

    iget-object v0, p0, LgZ;->b:Lhc;

    sget-object v1, Lhc;->b:Lhc;

    if-ne v0, v1, :cond_0

    sget-object v0, Lhc;->f:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    iget-object v0, p0, LgZ;->c:Lgp;

    invoke-interface {v0}, Lgp;->c()V
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

    iget-object v0, p0, LgZ;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->k:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgZ;->k:Ljava/util/Timer;

    iget-object v0, p0, LgZ;->k:Ljava/util/Timer;

    new-instance v1, Lhg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhg;-><init>(LgZ;Lha;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LgZ;->q:Z
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

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LgZ;->q:Z

    sget-object v0, Lhb;->a:[I

    iget-object v1, p0, LgZ;->b:Lhc;

    invoke-virtual {v1}, Lhc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, LgZ;->l()V
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
    iput-boolean v0, p0, LgZ;->p:Z
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
    sget-object v0, Lhc;->e:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    iget v0, p0, LgZ;->j:I

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

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->m()V
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

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->j()V
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

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    iget-object v6, p0, LgZ;->i:Ljava/util/Queue;

    new-instance v0, Lhf;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lhf;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, LgZ;->h()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lhb;->a:[I

    iget-object v1, p0, LgZ;->b:Lhc;

    invoke-virtual {v1}, Lhc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LgZ;->n:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, LgZ;->i()V

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

    iget-object v0, p0, LgZ;->c:Lgp;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lgq;

    iget-object v1, p0, LgZ;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lgq;-><init>(Landroid/content/Context;Lgs;Lgt;)V

    iput-object v0, p0, LgZ;->c:Lgp;

    invoke-direct {p0}, LgZ;->k()V

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LgZ;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, LgZ;->j:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    sget-object v0, Lhc;->b:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    iget-boolean v0, p0, LgZ;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LgZ;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LgZ;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, LgZ;->h()V

    iget-object v0, p0, LgZ;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, LgZ;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, LgZ;->m:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LgZ;->m:Ljava/util/Timer;

    iget-object v0, p0, LgZ;->m:Ljava/util/Timer;

    new-instance v1, Lhd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhd;-><init>(LgZ;Lha;)V

    iget-wide v2, p0, LgZ;->s:J

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
    iget-object v0, p0, LgZ;->b:Lhc;

    sget-object v1, Lhc;->d:Lhc;

    if-ne v0, v1, :cond_0

    const-string v0, "Service blocked."

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LgZ;->b:Lhc;

    sget-object v1, Lhc;->f:Lhc;

    if-ne v0, v1, :cond_1

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    invoke-direct {p0}, LgZ;->g()V

    sget-object v0, Lhc;->g:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;
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

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    sget-object v0, Lhc;->e:Lhc;

    iput-object v0, p0, LgZ;->b:Lhc;

    iget v0, p0, LgZ;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, LgZ;->m()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, LgZ;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public f()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    iget-object v0, p0, LgZ;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lhb;->a:[I

    iget-object v1, p0, LgZ;->b:Lhc;

    invoke-virtual {v1}, Lhc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LgZ;->o:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LgZ;->d:Lgu;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lgu;->a(J)V

    iput-boolean v4, p0, LgZ;->o:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LgZ;->c:Lgp;

    invoke-interface {v0}, Lgp;->a()V

    iput-boolean v4, p0, LgZ;->o:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
