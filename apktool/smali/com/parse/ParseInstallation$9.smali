.class final Lcom/parse/ParseInstallation$9;
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
.field final synthetic val$installation:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/parse/ParseInstallation$9;->val$installation:Lcom/parse/ParseInstallation;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/parse/ParseInstallation$9;->val$installation:Lcom/parse/ParseInstallation;

    # invokes: Lcom/parse/ParseInstallation;->maybeUpdateInstallationIdOnDisk()V
    invoke-static {v0}, Lcom/parse/ParseInstallation;->access$200(Lcom/parse/ParseInstallation;)V

    .line 438
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$9;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
