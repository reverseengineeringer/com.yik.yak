.class Lcom/parse/ParseObject$7;
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
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$7;->val$store:Lcom/parse/OfflineStore;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/parse/ParseObject$7;->val$store:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$7;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
