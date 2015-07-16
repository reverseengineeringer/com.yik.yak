.class Lcom/parse/OfflineStore$2;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$newUUID:Ljava/lang/String;

.field final synthetic val$tcs:LZ;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LZ;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/parse/OfflineStore$2;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$2;->val$tcs:LZ;

    iput-object p3, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$2;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 2
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
    .line 271
    iget-object v0, p0, Lcom/parse/OfflineStore$2;->val$tcs:LZ;

    iget-object v1, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method
