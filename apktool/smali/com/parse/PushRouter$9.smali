.class final Lcom/parse/PushRouter$9;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pushPayload:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parse/PushRouter$9;->val$pushPayload:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$9;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parse/PushRouter$9;->val$pushPayload:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 261
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$9;->val$pushPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->handlePpnsPush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    .line 263
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
