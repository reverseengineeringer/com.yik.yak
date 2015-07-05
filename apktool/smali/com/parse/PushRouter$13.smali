.class final Lcom/parse/PushRouter$13;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$13;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 2
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
    .line 347
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, LR;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/parse/PushRouter$13$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/PushRouter$13$1;-><init>(Lcom/parse/PushRouter$13;LR;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 356
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
