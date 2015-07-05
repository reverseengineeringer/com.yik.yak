.class public LAh;
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
    new-instance v1, Lcom/yik/yak/data/models/Notification;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Notification;-><init>()V

    .line 32
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setId(Ljava/lang/String;)V

    .line 33
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setKey(Ljava/lang/String;)V

    .line 34
    const-string v0, "thingID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "thingID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setThingId(Ljava/lang/String;)V

    .line 35
    const-string v0, "thingType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "thingType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setThingType(Ljava/lang/String;)V

    .line 36
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setPriority(Ljava/lang/String;)V

    .line 37
    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setUserId(Ljava/lang/String;)V

    .line 38
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setReason(Ljava/lang/String;)V

    .line 39
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setBody(Ljava/lang/String;)V

    .line 40
    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V

    .line 41
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setStatus(Ljava/lang/String;)V

    .line 42
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "subject"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setSubject(Ljava/lang/String;)V

    .line 43
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setContent(Ljava/lang/String;)V

    .line 44
    const-string v0, "replyId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "replyId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setReplyId(Ljava/lang/String;)V

    .line 46
    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_d
    const/4 v2, 0x0

    const/16 v3, 0x13

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_e
    return-object v1

    .line 32
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 33
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 34
    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    .line 35
    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    .line 36
    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    .line 37
    :cond_5
    const-string v0, ""

    goto/16 :goto_5

    .line 38
    :cond_6
    const-string v0, ""

    goto/16 :goto_6

    .line 39
    :cond_7
    const-string v0, ""

    goto/16 :goto_7

    .line 40
    :cond_8
    const-string v0, ""

    goto/16 :goto_8

    .line 41
    :cond_9
    const-string v0, ""

    goto :goto_9

    .line 42
    :cond_a
    const-string v0, ""

    goto :goto_a

    .line 43
    :cond_b
    const-string v0, ""

    goto :goto_b

    .line 44
    :cond_c
    const-string v0, ""

    goto :goto_c

    .line 46
    :cond_d
    const-string v0, ""

    goto :goto_d

    .line 51
    :catch_0
    move-exception v2

    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/Notification;->setUpdated(Ljava/lang/String;)V

    goto :goto_e
.end method
