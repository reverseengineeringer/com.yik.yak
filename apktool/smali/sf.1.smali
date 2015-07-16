.class Lsf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsd;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/Handler;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ltp;


# direct methods
.method public constructor <init>(Lsd;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 182
    iput-object p1, p0, Lsf;->a:Lsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsf;->b:Ljava/lang/Object;

    .line 575
    iput-wide v2, p0, Lsf;->d:J

    .line 576
    iput-wide v2, p0, Lsf;->e:J

    .line 577
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsf;->f:J

    .line 183
    invoke-direct {p0}, Lsf;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lsf;->c:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.mixpanel.android.AnalyticsWorker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v1, Lsg;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lsg;-><init>(Lsf;Landroid/os/Looper;)V

    .line 209
    return-object v1
.end method

.method static synthetic a(Lsf;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lsf;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lsf;Ltp;)Ltp;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lsf;->g:Ltp;

    return-object p1
.end method

.method static synthetic a(Lsf;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lsf;->b()V

    return-void
.end method

.method static synthetic b(Lsf;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lsf;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 558
    iget-wide v2, p0, Lsf;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 560
    iget-wide v4, p0, Lsf;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 561
    iget-wide v4, p0, Lsf;->f:J

    sub-long v4, v0, v4

    .line 562
    iget-wide v6, p0, Lsf;->e:J

    iget-wide v8, p0, Lsf;->d:J

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 563
    div-long/2addr v4, v2

    iput-wide v4, p0, Lsf;->e:J

    .line 565
    iget-wide v4, p0, Lsf;->e:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 566
    iget-object v6, p0, Lsf;->a:Lsd;

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

    invoke-static {v6, v4}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 569
    :cond_0
    iput-wide v0, p0, Lsf;->f:J

    .line 570
    iput-wide v2, p0, Lsf;->d:J

    .line 571
    return-void
.end method

.method static synthetic c(Lsf;)Ltp;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lsf;->g:Ltp;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lsf;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lsf;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lsf;->a:Lsd;

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

    invoke-static {v0, v2}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 200
    :goto_0
    monitor-exit v1

    .line 201
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lsf;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
