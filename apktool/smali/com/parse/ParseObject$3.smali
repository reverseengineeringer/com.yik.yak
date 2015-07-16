.class final Lcom/parse/ParseObject$3;
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
.field final synthetic val$readyToStart:LZ;


# direct methods
.method constructor <init>(LZ;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/parse/ParseObject$3;->val$readyToStart:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$3;->then(LN;)Ljava/lang/Void;

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
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/parse/ParseObject$3;->val$readyToStart:LZ;

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    .line 393
    return-object v1
.end method
