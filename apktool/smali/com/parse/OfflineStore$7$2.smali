.class Lcom/parse/OfflineStore$7$2;
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
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$7;

.field final synthetic val$finalTrimmedResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$7;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/parse/OfflineStore$7$2;->this$1:Lcom/parse/OfflineStore$7;

    iput-object p2, p0, Lcom/parse/OfflineStore$7$2;->val$finalTrimmedResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$7$2;->then(LR;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/parse/OfflineStore$7$2;->val$finalTrimmedResults:Ljava/util/List;

    return-object v0
.end method
