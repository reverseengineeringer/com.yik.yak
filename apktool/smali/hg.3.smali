.class Lhg;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgZ;


# direct methods
.method private constructor <init>(LgZ;)V
    .locals 0

    iput-object p1, p0, Lhg;->a:LgZ;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgZ;Lha;)V
    .locals 0

    invoke-direct {p0, p1}, Lhg;-><init>(LgZ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhg;->a:LgZ;

    invoke-static {v0}, LgZ;->d(LgZ;)V

    return-void
.end method
