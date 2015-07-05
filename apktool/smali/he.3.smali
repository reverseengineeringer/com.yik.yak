.class Lhe;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgZ;


# direct methods
.method private constructor <init>(LgZ;)V
    .locals 0

    iput-object p1, p0, Lhe;->a:LgZ;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgZ;Lha;)V
    .locals 0

    invoke-direct {p0, p1}, Lhe;-><init>(LgZ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhe;->a:LgZ;

    invoke-static {v0}, LgZ;->b(LgZ;)Lhc;

    move-result-object v0

    sget-object v1, Lhc;->a:Lhc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhe;->a:LgZ;

    invoke-static {v0}, LgZ;->c(LgZ;)V

    :cond_0
    return-void
.end method
