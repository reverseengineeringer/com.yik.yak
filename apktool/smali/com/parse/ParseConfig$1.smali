.class final Lcom/parse/ParseConfig$1;
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
        "Lcom/parse/ParseConfig;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    # invokes: Lcom/parse/ParseConfig;->getAsync(LR;)LR;
    invoke-static {p1}, Lcom/parse/ParseConfig;->access$000(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
