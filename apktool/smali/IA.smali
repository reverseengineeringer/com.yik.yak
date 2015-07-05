.class public abstract LIA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LIH;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/concurrent/ScheduledExecutorService;

.field protected c:LII;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LII",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;LII;LIx;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LII",
            "<TT;>;",
            "LIx;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LIA;->a:Landroid/content/Context;

    .line 22
    iput-object p4, p0, LIA;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iput-object p2, p0, LIA;->c:LII;

    .line 25
    invoke-virtual {p3, p0}, LIx;->a(LIH;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract a()LII;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LII",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, LIC;

    invoke-direct {v0, p0, p1}, LIC;-><init>(LIA;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LIA;->a(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, LIB;

    invoke-direct {v0, p0, p1, p2}, LIB;-><init>(LIA;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, LIA;->b(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, LIA;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, LIA;->a:Landroid/content/Context;

    const-string v2, "Failed to run events task"

    invoke-static {v1, v2, v0}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, LID;

    invoke-direct {v0, p0}, LID;-><init>(LIA;)V

    invoke-virtual {p0, v0}, LIA;->b(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, LIE;

    invoke-direct {v0, p0}, LIE;-><init>(LIA;)V

    invoke-virtual {p0, v0}, LIA;->b(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, LIA;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, LIA;->a:Landroid/content/Context;

    const-string v2, "Failed to submit events task"

    invoke-static {v1, v2, v0}, LHw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
