.class final Lcom/parse/ParseUser$12;
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
.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/parse/ParseUser$12;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v0, 0x1

    # setter for: Lcom/parse/ParseUser;->currentUserMatchesDisk:Z
    invoke-static {v0}, Lcom/parse/ParseUser;->access$502(Z)Z

    .line 1056
    iget-object v0, p0, Lcom/parse/ParseUser$12;->val$user:Lcom/parse/ParseUser;

    # setter for: Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$602(Lcom/parse/ParseUser;)Lcom/parse/ParseUser;

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
