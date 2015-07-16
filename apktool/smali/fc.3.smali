.class Lfc;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:LeX;


# direct methods
.method private constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lfc;->a:LeX;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LeX;LeY;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lfc;-><init>(LeX;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lfc;->a:LeX;

    invoke-static {v0}, LeX;->b(LeX;)Lfb;

    move-result-object v0

    sget-object v1, Lfb;->b:Lfb;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfc;->a:LeX;

    invoke-static {v0}, LeX;->e(LeX;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfc;->a:LeX;

    invoke-static {v0}, LeX;->f(LeX;)J

    move-result-wide v0

    iget-object v2, p0, Lfc;->a:LeX;

    invoke-static {v2}, LeX;->g(LeX;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lfc;->a:LeX;

    invoke-static {v2}, LeX;->h(LeX;)LeK;

    move-result-object v2

    invoke-interface {v2}, LeK;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 425
    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lfc;->a:LeX;

    invoke-static {v0}, LeX;->i(LeX;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lfc;->a:LeX;

    invoke-static {v0}, LeX;->j(LeX;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lfc;

    iget-object v2, p0, Lfc;->a:LeX;

    invoke-direct {v1, v2}, Lfc;-><init>(LeX;)V

    iget-object v2, p0, Lfc;->a:LeX;

    invoke-static {v2}, LeX;->g(LeX;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
