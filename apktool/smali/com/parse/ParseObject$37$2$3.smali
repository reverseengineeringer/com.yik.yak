.class Lcom/parse/ParseObject$37$2$3;
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
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$37$2;

.field final synthetic val$current:Ljava/util/List;

.field final synthetic val$operations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37$2;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/parse/ParseObject$37$2$3;->this$1:Lcom/parse/ParseObject$37$2;

    iput-object p2, p0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/ParseObject$37$2$3;->val$operations:Ljava/util/List;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2330
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 2333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    new-instance v1, Lcom/parse/ParseObject$37$2$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$37$2$3$1;-><init>(Lcom/parse/ParseObject$37$2$3;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2$3;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
