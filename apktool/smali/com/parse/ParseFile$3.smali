.class Lcom/parse/ParseFile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lad;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    iput-object p3, p0, Lcom/parse/ParseFile$3;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
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
    iget-object v0, p0, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    invoke-virtual {v0, v2}, Lad;->a(Ljava/lang/Object;)Z

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

    invoke-static {v1}, LR;->b(Ljava/util/concurrent/Callable;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$4;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$3;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$2;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$3$1;-><init>(Lcom/parse/ParseFile$3;)V

    invoke-virtual {v0, v1}, LR;->a(LQ;)LR;

    goto :goto_0
.end method
