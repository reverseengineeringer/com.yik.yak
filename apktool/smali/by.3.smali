.class Lby;
.super LJd;
.source "SourceFile"

# interfaces
.implements LbB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJd",
        "<",
        "LbC;",
        ">;",
        "LbB",
        "<",
        "LbC;",
        ">;"
    }
.end annotation


# instance fields
.field a:LJs;

.field private final g:LJI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lbz;LJI;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, LJd;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LJf;)V

    .line 29
    iput-object p4, p0, Lby;->g:LJI;

    .line 30
    return-void
.end method


# virtual methods
.method public a()LJs;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lby;->a:LJs;

    return-object v0
.end method

.method public a(LJR;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lbw;

    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v1

    iget-object v3, p1, LJR;->a:Ljava/lang/String;

    iget-object v4, p0, Lby;->g:LJI;

    new-instance v2, LIc;

    invoke-direct {v2}, LIc;-><init>()V

    iget-object v5, p0, Lby;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, LIc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lbw;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;Ljava/lang/String;)V

    iput-object v0, p0, Lby;->a:LJs;

    .line 44
    iget-object v0, p0, Lby;->d:LJf;

    check-cast v0, Lbz;

    invoke-virtual {v0, p1}, Lbz;->a(LJR;)V

    .line 46
    iget v0, p1, LJR;->b:I

    invoke-virtual {p0, v0}, Lby;->a(I)V

    .line 47
    return-void
.end method
