.class Lha;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgW;


# direct methods
.method private constructor <init>(LgW;)V
    .locals 0

    iput-object p1, p0, Lha;->a:LgW;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgW;LgX;)V
    .locals 0

    invoke-direct {p0, p1}, Lha;-><init>(LgW;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lha;->a:LgW;

    invoke-static {v0}, LgW;->b(LgW;)LgZ;

    move-result-object v0

    sget-object v1, LgZ;->b:LgZ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lha;->a:LgW;

    invoke-static {v0}, LgW;->e(LgW;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lha;->a:LgW;

    invoke-static {v0}, LgW;->f(LgW;)J

    move-result-wide v0

    iget-object v2, p0, Lha;->a:LgW;

    invoke-static {v2}, LgW;->g(LgW;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lha;->a:LgW;

    invoke-static {v2}, LgW;->h(LgW;)LiV;

    move-result-object v2

    invoke-interface {v2}, LiV;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lha;->a:LgW;

    invoke-static {v0}, LgW;->i(LgW;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lha;->a:LgW;

    invoke-static {v0}, LgW;->j(LgW;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lha;

    iget-object v2, p0, Lha;->a:LgW;

    invoke-direct {v1, v2}, Lha;-><init>(LgW;)V

    iget-object v2, p0, Lha;->a:LgW;

    invoke-static {v2}, LgW;->g(LgW;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
