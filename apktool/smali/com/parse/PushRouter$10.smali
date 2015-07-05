.class final Lcom/parse/PushRouter$10;
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
.field final synthetic val$removeExistingState:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/parse/PushRouter$10;->val$removeExistingState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$10;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 1
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
    .line 284
    iget-boolean v0, p0, Lcom/parse/PushRouter$10;->val$removeExistingState:Z

    # invokes: Lcom/parse/PushRouter;->reloadInstance(Z)Lcom/parse/PushRouter;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$300(Z)Lcom/parse/PushRouter;

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method
