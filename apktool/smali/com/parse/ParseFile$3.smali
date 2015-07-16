.class Lcom/parse/ParseFile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;LZ;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$3;->val$tcs:LZ;

    iput-object p3, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/parse/ParseFile$3;->val$tcs:LZ;

    invoke-virtual {v0, v2}, LZ;->a(Ljava/lang/Object;)Z

    .line 440
    :goto_0
    return-object v2

    .line 382
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/parse/ParseFile$3$5;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseFile$3$5;-><init>(Lcom/parse/ParseFile$3;Ljava/lang/String;)V

    invoke-static {v1}, LN;->b(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$4;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$3;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$2;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$1;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;

    goto :goto_0
.end method
