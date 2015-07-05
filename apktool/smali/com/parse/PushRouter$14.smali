.class final Lcom/parse/PushRouter$14;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$finalListener:Lcom/parse/PushRouter$PushListener;

.field final synthetic val$pushData:Lorg/json/JSONObject;

.field final synthetic val$result:Lcom/parse/PushRouter$HandlePushResult;


# direct methods
.method constructor <init>(Lcom/parse/PushRouter$PushListener;Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/parse/PushRouter$14;->val$finalListener:Lcom/parse/PushRouter$PushListener;

    iput-object p2, p0, Lcom/parse/PushRouter$14;->val$pushData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/PushRouter$14;->val$result:Lcom/parse/PushRouter$HandlePushResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$14;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parse/PushRouter$14;->val$finalListener:Lcom/parse/PushRouter$PushListener;

    iget-object v1, p0, Lcom/parse/PushRouter$14;->val$pushData:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/PushRouter$14;->val$result:Lcom/parse/PushRouter$HandlePushResult;

    invoke-interface {v0, v1, v2}, Lcom/parse/PushRouter$PushListener;->onPushHandled(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method
