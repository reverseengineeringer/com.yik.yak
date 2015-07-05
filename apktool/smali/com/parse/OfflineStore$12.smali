.class Lcom/parse/OfflineStore$12;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:Lad;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lad;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/parse/OfflineStore$12;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lad;

    iput-object p3, p0, Lcom/parse/OfflineStore$12;->val$object:Lcom/parse/ParseObject;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lad;

    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    return-object v0

    .line 793
    :cond_0
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lad;

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineStore$12;->val$tcs:Lad;

    iget-object v1, p0, Lcom/parse/OfflineStore$12;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$12;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
