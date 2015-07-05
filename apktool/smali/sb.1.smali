.class Lsb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:LrZ;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/Handler;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ltl;


# direct methods
.method public constructor <init>(LrZ;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 179
    iput-object p1, p0, Lsb;->a:LrZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsb;->b:Ljava/lang/Object;

    .line 553
    iput-wide v2, p0, Lsb;->d:J

    .line 554
    iput-wide v2, p0, Lsb;->e:J

    .line 555
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsb;->f:J

    .line 180
    invoke-direct {p0}, Lsb;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lsb;->c:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.mixpanel.android.AnalyticsWorker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v1, Lsc;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lsc;-><init>(Lsb;Landroid/os/Looper;)V

    .line 206
    return-object v1
.end method

.method static synthetic a(Lsb;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lsb;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lsb;Ltl;)Ltl;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lsb;->g:Ltl;

    return-object p1
.end method

.method static synthetic a(Lsb;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lsb;->b()V

    return-void
.end method

.method static synthetic b(Lsb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lsb;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 536
    iget-wide v2, p0, Lsb;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 538
    iget-wide v4, p0, Lsb;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 539
    iget-wide v4, p0, Lsb;->f:J

    sub-long v4, v0, v4

    .line 540
    iget-wide v6, p0, Lsb;->e:J

    iget-wide v8, p0, Lsb;->d:J

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 541
    div-long/2addr v4, v2

    iput-wide v4, p0, Lsb;->e:J

    .line 543
    iget-wide v4, p0, Lsb;->e:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 544
    iget-object v6, p0, Lsb;->a:LrZ;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Average send frequency approximately "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 547
    :cond_0
    iput-wide v0, p0, Lsb;->f:J

    .line 548
    iput-wide v2, p0, Lsb;->d:J

    .line 549
    return-void
.end method

.method static synthetic c(Lsb;)Ltl;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lsb;->g:Ltl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lsb;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lsb;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lsb;->a:LrZ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead mixpanel worker dropping a message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 197
    :goto_0
    monitor-exit v1

    .line 198
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lsb;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
