.class Lfg;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method private constructor <init>(Lfb;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lfg;->a:Lfb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfb;Lfc;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lfg;-><init>(Lfb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lfg;->a:Lfb;

    invoke-static {v0}, Lfb;->b(Lfb;)Lff;

    move-result-object v0

    sget-object v1, Lff;->b:Lff;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfg;->a:Lfb;

    invoke-static {v0}, Lfb;->e(Lfb;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfg;->a:Lfb;

    invoke-static {v0}, Lfb;->f(Lfb;)J

    move-result-wide v0

    iget-object v2, p0, Lfg;->a:Lfb;

    invoke-static {v2}, Lfb;->g(Lfb;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lfg;->a:Lfb;

    invoke-static {v2}, Lfb;->h(Lfb;)LeO;

    move-result-object v2

    invoke-interface {v2}, LeO;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 425
    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lft;->c(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lfg;->a:Lfb;

    invoke-static {v0}, Lfb;->i(Lfb;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lfg;->a:Lfb;

    invoke-static {v0}, Lfb;->j(Lfb;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lfg;

    iget-object v2, p0, Lfg;->a:Lfb;

    invoke-direct {v1, v2}, Lfg;-><init>(Lfb;)V

    iget-object v2, p0, Lfg;->a:Lfb;

    invoke-static {v2}, Lfb;->g(Lfb;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
