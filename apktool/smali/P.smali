.class final LP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LM;

.field final synthetic b:LN;

.field final synthetic c:LZ;


# direct methods
.method constructor <init>(LM;LN;LZ;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, LP;->a:LM;

    iput-object p2, p0, LP;->b:LN;

    iput-object p3, p0, LP;->c:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, LP;->a:LM;

    iget-object v1, p0, LP;->b:LN;

    invoke-interface {v0, v1}, LM;->then(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 487
    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, LP;->c:LZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v1, LQ;

    invoke-direct {v1, p0}, LQ;-><init>(LP;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, LP;->c:LZ;

    invoke-virtual {v1, v0}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
