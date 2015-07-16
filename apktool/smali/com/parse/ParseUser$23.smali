.class final Lcom/parse/ParseUser$23;
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
        "Lorg/json/JSONObject;",
        "LN",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticator:Lcom/parse/ParseAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/parse/ParseUser$23;->val$authenticator:Lcom/parse/ParseAuthenticationProvider;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "LN",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/parse/ParseUser$23;->val$authenticator:Lcom/parse/ParseAuthenticationProvider;

    invoke-interface {v0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1455
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$23;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
