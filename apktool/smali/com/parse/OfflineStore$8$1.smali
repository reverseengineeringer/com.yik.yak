.class Lcom/parse/OfflineStore$8$1;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$object:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;LL;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/parse/OfflineStore$8$1;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$1;->val$object:LL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$1;->then(LN;)Ljava/lang/Void;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/parse/OfflineStore$8$1;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v0, v0, Lcom/parse/OfflineStore$8;->val$results:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/OfflineStore$8$1;->val$object:LL;

    invoke-virtual {v1}, LL;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
