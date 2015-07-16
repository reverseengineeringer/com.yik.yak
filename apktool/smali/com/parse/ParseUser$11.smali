.class final Lcom/parse/ParseUser$11;
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
.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/parse/ParseUser$11;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
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
    .line 1046
    iget-object v0, p0, Lcom/parse/ParseUser$11;->val$user:Lcom/parse/ParseUser;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentUser"

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 1047
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$11;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
