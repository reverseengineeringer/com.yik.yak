.class final LT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQ;

.field final synthetic b:LR;

.field final synthetic c:Lad;


# direct methods
.method constructor <init>(LQ;LR;Lad;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, LT;->a:LQ;

    iput-object p2, p0, LT;->b:LR;

    iput-object p3, p0, LT;->c:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, LT;->a:LQ;

    iget-object v1, p0, LT;->b:LR;

    invoke-interface {v0, v1}, LQ;->then(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR;

    .line 487
    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, LT;->c:Lad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v1, LU;

    invoke-direct {v1, p0}, LU;-><init>(LT;)V

    invoke-virtual {v0, v1}, LR;->a(LQ;)LR;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, LT;->c:Lad;

    invoke-virtual {v1, v0}, Lad;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
