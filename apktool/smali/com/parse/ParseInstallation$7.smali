.class final Lcom/parse/ParseInstallation$7;
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
    .line 418
    iput-object p1, p0, Lcom/parse/ParseInstallation$7;->val$installation:Lcom/parse/ParseInstallation;

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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/parse/ParseInstallation$7;->val$installation:Lcom/parse/ParseInstallation;

    const-string v1, "_currentInstallation"

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->pinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$7;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
