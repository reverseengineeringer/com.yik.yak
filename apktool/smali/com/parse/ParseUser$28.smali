.class Lcom/parse/ParseUser$28;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authenticator:Lcom/parse/ParseAuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseAuthenticationProvider;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/parse/ParseUser$28;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$28;->val$authenticator:Lcom/parse/ParseAuthenticationProvider;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/parse/ParseUser$28;->this$0:Lcom/parse/ParseUser;

    iget-object v0, p0, Lcom/parse/ParseUser$28;->val$authenticator:Lcom/parse/ParseAuthenticationProvider;

    invoke-interface {v0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1519
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$28;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
