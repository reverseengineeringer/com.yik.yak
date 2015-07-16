.class final Lcom/parse/ParseConfig$3;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parse/ParseConfig$3;->val$command:Lcom/parse/ParseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parse/ParseConfig$3;->val$command:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->i()LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$3;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
