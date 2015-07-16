.class final Lcom/parse/ParseUser$15;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$oldAnonymousData:Lorg/json/JSONObject;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$15;->val$authData:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/ParseUser$15;->val$oldAnonymousData:Lorg/json/JSONObject;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1299
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$15$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$15$2;-><init>(Lcom/parse/ParseUser$15;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$15$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$15$1;-><init>(Lcom/parse/ParseUser$15;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1296
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$15;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
