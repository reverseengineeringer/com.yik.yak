.class Lhd;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgZ;


# direct methods
.method private constructor <init>(LgZ;)V
    .locals 0

    iput-object p1, p0, Lhd;->a:LgZ;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgZ;Lha;)V
    .locals 0

    invoke-direct {p0, p1}, Lhd;-><init>(LgZ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lhd;->a:LgZ;

    invoke-static {v0}, LgZ;->b(LgZ;)Lhc;

    move-result-object v0

    sget-object v1, Lhc;->b:Lhc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhd;->a:LgZ;

    invoke-static {v0}, LgZ;->e(LgZ;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhd;->a:LgZ;

    invoke-static {v0}, LgZ;->f(LgZ;)J

    move-result-wide v0

    iget-object v2, p0, Lhd;->a:LgZ;

    invoke-static {v2}, LgZ;->g(LgZ;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lhd;->a:LgZ;

    invoke-static {v2}, LgZ;->h(LgZ;)LiY;

    move-result-object v2

    invoke-interface {v2}, LiY;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lhd;->a:LgZ;

    invoke-static {v0}, LgZ;->i(LgZ;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhd;->a:LgZ;

    invoke-static {v0}, LgZ;->j(LgZ;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lhd;

    iget-object v2, p0, Lhd;->a:LgZ;

    invoke-direct {v1, v2}, Lhd;-><init>(LgZ;)V

    iget-object v2, p0, Lhd;->a:LgZ;

    invoke-static {v2}, LgZ;->g(LgZ;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
