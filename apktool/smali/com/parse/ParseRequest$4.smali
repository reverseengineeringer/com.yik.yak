.class Lcom/parse/ParseRequest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TResult;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;LZ;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/parse/ParseRequest$4;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$4;->val$tcs:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TResult;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/parse/ParseRequest$4;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->b()Z

    .line 354
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/parse/ParseRequest$4;->val$tcs:LZ;

    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRequest$4;->val$tcs:LZ;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$4;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
