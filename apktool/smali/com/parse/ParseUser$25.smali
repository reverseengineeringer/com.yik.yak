.class Lcom/parse/ParseUser$25;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$toAwait:LR;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;LR;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$25;->val$toAwait:LR;

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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/parse/ParseUser$25;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$25;->val$toAwait:LR;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->saveAsync(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$25;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
