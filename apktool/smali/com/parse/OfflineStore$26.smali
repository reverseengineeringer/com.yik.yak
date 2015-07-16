.class Lcom/parse/OfflineStore$26;
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
        "Ljava/lang/String;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/parse/OfflineStore$26;->this$0:Lcom/parse/OfflineStore;

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
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$26;->this$0:Lcom/parse/OfflineStore;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;)LN;
    invoke-static {v1, v0}, Lcom/parse/OfflineStore;->access$1000(Lcom/parse/OfflineStore;Ljava/lang/String;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$26;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
