.class Lhd;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:LgW;


# direct methods
.method private constructor <init>(LgW;)V
    .locals 0

    iput-object p1, p0, Lhd;->a:LgW;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LgW;LgX;)V
    .locals 0

    invoke-direct {p0, p1}, Lhd;-><init>(LgW;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhd;->a:LgW;

    invoke-static {v0}, LgW;->d(LgW;)V

    return-void
.end method
