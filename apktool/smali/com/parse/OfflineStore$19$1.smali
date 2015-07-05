.class Lcom/parse/OfflineStore$19$1;
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
        "Lcom/parse/ParseObject;",
        "LR",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$19;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$19;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/parse/OfflineStore$19$1;->this$1:Lcom/parse/OfflineStore$19;

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
            "Lcom/parse/ParseObject;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 860
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object p1

    .line 862
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$19$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
