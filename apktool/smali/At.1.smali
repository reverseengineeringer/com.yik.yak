.class public LAt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Notification;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/yik/yak/data/models/Notification;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Notification;-><init>()V

    .line 32
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setId(Ljava/lang/String;)V

    .line 33
    const-string v1, "key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setKey(Ljava/lang/String;)V

    .line 34
    const-string v1, "thingID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setThingId(Ljava/lang/String;)V

    .line 35
    const-string v1, "thingType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setThingType(Ljava/lang/String;)V

    .line 36
    const-string v1, "priority"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setPriority(Ljava/lang/String;)V

    .line 37
    const-string v1, "userID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setUserId(Ljava/lang/String;)V

    .line 38
    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setReason(Ljava/lang/String;)V

    .line 39
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setBody(Ljava/lang/String;)V

    .line 40
    const-string v1, "updated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V

    .line 41
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setStatus(Ljava/lang/String;)V

    .line 42
    const-string v1, "subject"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setSubject(Ljava/lang/String;)V

    .line 43
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setContent(Ljava/lang/String;)V

    .line 44
    const-string v1, "replyId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setReplyId(Ljava/lang/String;)V

    .line 46
    const-string v1, "updated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    const/16 v3, 0x13

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method
