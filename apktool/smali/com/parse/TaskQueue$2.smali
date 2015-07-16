.class final Lcom/parse/TaskQueue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TT;",
        "LN",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:LN;


# direct methods
.method constructor <init>(LN;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parse/TaskQueue$2;->val$toAwait:LN;

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
            "<TT;>;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parse/TaskQueue$2;->val$toAwait:LN;

    new-instance v1, Lcom/parse/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/TaskQueue$2$1;-><init>(Lcom/parse/TaskQueue$2;LN;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
