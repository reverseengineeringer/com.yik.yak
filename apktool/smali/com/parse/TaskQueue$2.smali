.class final Lcom/parse/TaskQueue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TT;",
        "LR",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:LR;


# direct methods
.method constructor <init>(LR;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parse/TaskQueue$2;->val$toAwait:LR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TT;>;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parse/TaskQueue$2;->val$toAwait:LR;

    new-instance v1, Lcom/parse/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/TaskQueue$2$1;-><init>(Lcom/parse/TaskQueue$2;LR;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
