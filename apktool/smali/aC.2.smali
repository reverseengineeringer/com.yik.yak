.class LaC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, LaC;->a:Laz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, LaC;->a:Laz;

    invoke-static {v0}, Laz;->a(Laz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, LaC;->a:Laz;

    invoke-static {v0}, Laz;->d(Laz;)Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->t()LbS;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, LaC;->a:Laz;

    invoke-static {v1, v0}, Laz;->a(Laz;LbS;)V

    .line 521
    :cond_0
    iget-object v0, p0, LaC;->a:Laz;

    invoke-static {v0}, Laz;->e(Laz;)V

    .line 522
    iget-object v0, p0, LaC;->a:Laz;

    invoke-static {v0}, Laz;->c(Laz;)V

    .line 523
    invoke-static {}, LHA;->g()LHM;

    .line 525
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 527
    :cond_1
    invoke-static {}, LHA;->g()LHM;

    .line 529
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, LaC;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
