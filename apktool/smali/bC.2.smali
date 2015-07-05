.class LbC;
.super LIv;
.source "SourceFile"

# interfaces
.implements LbF;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIv",
        "<",
        "LbG;",
        ">;",
        "LbF",
        "<",
        "LbG;",
        ">;"
    }
.end annotation


# instance fields
.field a:LIK;

.field private final g:LJa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LbD;LJa;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, LIv;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LIx;)V

    .line 29
    iput-object p4, p0, LbC;->g:LJa;

    .line 30
    return-void
.end method


# virtual methods
.method public a()LIK;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LbC;->a:LIK;

    return-object v0
.end method

.method public a(LJj;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, LbA;

    invoke-static {}, Lbw;->b()Lbw;

    move-result-object v1

    iget-object v3, p1, LJj;->a:Ljava/lang/String;

    iget-object v4, p0, LbC;->g:LJa;

    new-instance v2, LHu;

    invoke-direct {v2}, LHu;-><init>()V

    iget-object v5, p0, LbC;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LbA;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;Ljava/lang/String;)V

    iput-object v0, p0, LbC;->a:LIK;

    .line 44
    iget-object v0, p0, LbC;->d:LIx;

    check-cast v0, LbD;

    invoke-virtual {v0, p1}, LbD;->a(LJj;)V

    .line 46
    iget v0, p1, LJj;->b:I

    invoke-virtual {p0, v0}, LbC;->a(I)V

    .line 47
    return-void
.end method
