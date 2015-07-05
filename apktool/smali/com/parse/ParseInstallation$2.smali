.class Lcom/parse/ParseInstallation$2;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseInstallation;

.field final synthetic val$toAwait:LR;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;LR;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iput-object p2, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:LR;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:LR;

    # invokes: Lcom/parse/ParseObject;->fetchAsync(LR;)LR;
    invoke-static {v0, v1}, Lcom/parse/ParseInstallation;->access$001(Lcom/parse/ParseInstallation;LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
