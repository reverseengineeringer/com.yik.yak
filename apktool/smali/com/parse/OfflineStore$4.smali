.class Lcom/parse/OfflineStore$4;
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
        "Ljava/util/List",
        "<TT;>;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/parse/OfflineStore$4;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$4;->then(LN;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
