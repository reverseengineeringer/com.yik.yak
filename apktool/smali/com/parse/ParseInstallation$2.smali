.class Lcom/parse/ParseInstallation$2;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseInstallation;

.field final synthetic val$toAwait:LN;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;LN;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iput-object p2, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:LN;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:LN;

    # invokes: Lcom/parse/ParseObject;->fetchAsync(LN;)LN;
    invoke-static {v0, v1}, Lcom/parse/ParseInstallation;->access$001(Lcom/parse/ParseInstallation;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
