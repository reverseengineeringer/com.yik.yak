.class final Lac;
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
    .line 449
    iput-object p1, p0, Lac;->a:LQ;

    iput-object p2, p0, Lac;->b:LR;

    iput-object p3, p0, Lac;->c:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lac;->a:LQ;

    iget-object v1, p0, Lac;->b:LR;

    invoke-interface {v0, v1}, LQ;->then(LR;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lac;->c:Lad;

    invoke-virtual {v1, v0}, Lad;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    iget-object v1, p0, Lac;->c:Lad;

    invoke-virtual {v1, v0}, Lad;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
