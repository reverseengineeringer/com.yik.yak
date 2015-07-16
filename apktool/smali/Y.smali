.class final LY;
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
    .line 449
    iput-object p1, p0, LY;->a:LM;

    iput-object p2, p0, LY;->b:LN;

    iput-object p3, p0, LY;->c:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, LY;->a:LM;

    iget-object v1, p0, LY;->b:LN;

    invoke-interface {v0, v1}, LM;->then(LN;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v1, p0, LY;->c:LZ;

    invoke-virtual {v1, v0}, LZ;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    iget-object v1, p0, LY;->c:LZ;

    invoke-virtual {v1, v0}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
