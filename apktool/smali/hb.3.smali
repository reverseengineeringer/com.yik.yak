.class Lhb;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgW;


# direct methods
.method private constructor <init>(LgW;)V
    .locals 0

    iput-object p1, p0, Lhb;->a:LgW;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgW;LgX;)V
    .locals 0

    invoke-direct {p0, p1}, Lhb;-><init>(LgW;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhb;->a:LgW;

    invoke-static {v0}, LgW;->b(LgW;)LgZ;

    move-result-object v0

    sget-object v1, LgZ;->a:LgZ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhb;->a:LgW;

    invoke-static {v0}, LgW;->c(LgW;)V

    :cond_0
    return-void
.end method
