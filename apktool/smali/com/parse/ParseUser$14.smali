.class final Lcom/parse/ParseUser$14;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$14;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1257
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1259
    :try_start_0
    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$700(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$14;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1260
    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$14;->val$authType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    invoke-virtual {v0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v1

    .line 1265
    # invokes: Lcom/parse/ParseUser;->constructSignUpOrLoginCommand(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;
    invoke-static {v0, v1}, Lcom/parse/ParseUser;->access$900(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseCommand;

    move-result-object v2

    .line 1266
    invoke-virtual {v2}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$14$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseUser$14$3;-><init>(Lcom/parse/ParseUser$14;Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v2, v3}, LR;->b(LQ;)LR;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$14$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$14$2;-><init>(Lcom/parse/ParseUser$14;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, LR;->b(LQ;)LR;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$14$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$14$1;-><init>(Lcom/parse/ParseUser$14;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, LR;->a(LQ;)LR;

    move-result-object v0

    return-object v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1249
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
