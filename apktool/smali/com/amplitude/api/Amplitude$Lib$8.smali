.class Lcom/amplitude/api/Amplitude$Lib$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/Amplitude$Lib;

.field final synthetic val$currentUserProperties:Lorg/json/JSONObject;

.field final synthetic val$userProperties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amplitude/api/Amplitude$Lib;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib$8;->this$0:Lcom/amplitude/api/Amplitude$Lib;

    iput-object p2, p0, Lcom/amplitude/api/Amplitude$Lib$8;->val$userProperties:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/amplitude/api/Amplitude$Lib$8;->val$currentUserProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 547
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib$8;->val$userProperties:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 548
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib$8;->val$currentUserProperties:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/amplitude/api/Amplitude$Lib$8;->val$userProperties:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 556
    :cond_0
    return-void
.end method
