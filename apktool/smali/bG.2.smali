.class LbG;
.super LJi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJi",
        "<",
        "LbC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;LJq;Lbz;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LJq",
            "<",
            "LbC;",
            ">;",
            "Lbz;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, LJi;-><init>(Landroid/content/Context;LJq;LJf;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 16
    return-void
.end method

.method static synthetic a(LbG;)LJq;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, LbG;->c:LJq;

    return-object v0
.end method


# virtual methods
.method protected a()LJq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LJq",
            "<",
            "LbC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lbx;

    invoke-direct {v0}, Lbx;-><init>()V

    return-object v0
.end method

.method protected a(LJR;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, LbH;

    invoke-direct {v0, p0, p1, p2}, LbH;-><init>(LbG;LJR;Ljava/lang/String;)V

    invoke-super {p0, v0}, LJi;->b(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
