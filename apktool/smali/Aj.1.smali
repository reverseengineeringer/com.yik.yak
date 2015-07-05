.class public LAj;
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/models/Yak;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/yik/yak/data/models/Yak;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/Yak;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    :cond_0
    const-string v1, "comment"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "commentId"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "content"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "deliveryId"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string v1, "hidePin"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->HidePin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string v1, "isComment"

    iget-boolean v2, p1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    const-string v1, "latitude"

    iget-wide v2, p1, Lcom/yik/yak/data/models/Yak;->Latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 33
    const-string v1, "liked"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->Liked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v1, "linkProvider"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "linkSummary"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "linkTitle"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "linkThumbnailUrl"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "linkUrl"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "longitude"

    iget-wide v2, p1, Lcom/yik/yak/data/models/Yak;->Longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 40
    const-string v1, "numberOfComments"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v1, "numberOfLikes"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v1, "posterId"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "showHandle"

    iget-boolean v2, p1, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    const-string v1, "timePosted"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "type"

    iget v2, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v1, "yakId"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "yakkerHandle"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "yakkerId"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Yak;
    .locals 4

    .prologue
    .line 91
    new-instance v0, LzS;

    invoke-direct {v0, p1}, LzS;-><init>(Landroid/database/Cursor;)V

    .line 92
    new-instance v1, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 93
    const-string v2, "_id"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Yak;->setId(Ljava/lang/Integer;)V

    .line 94
    const-string v2, "comment"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 95
    const-string v2, "commentId"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    .line 96
    const-string v2, "content"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 97
    const-string v2, "deliveryId"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 98
    const-string v2, "hidePin"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->HidePin:I

    .line 99
    const-string v2, "isComment"

    invoke-virtual {v0, v2}, LzS;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    .line 100
    const-string v2, "latitude"

    invoke-virtual {v0, v2}, LzS;->b(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/yik/yak/data/models/Yak;->Latitude:D

    .line 101
    const-string v2, "liked"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 102
    const-string v2, "linkProvider"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    .line 103
    const-string v2, "linkSummary"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    .line 104
    const-string v2, "linkTitle"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    .line 105
    const-string v2, "linkThumbnailUrl"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    .line 106
    const-string v2, "linkUrl"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 107
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, LzS;->b(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/yik/yak/data/models/Yak;->Longitude:D

    .line 108
    const-string v2, "numberOfComments"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 109
    const-string v2, "numberOfLikes"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 110
    const-string v2, "posterId"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    .line 111
    const-string v2, "showHandle"

    invoke-virtual {v0, v2}, LzS;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    .line 112
    const-string v2, "timePosted"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    .line 113
    const-string v2, "type"

    invoke-virtual {v0, v2}, LzS;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 114
    const-string v2, "yakId"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 115
    const-string v2, "yakkerHandle"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 116
    const-string v2, "yakkerId"

    invoke-virtual {v0, v2}, LzS;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    .line 117
    return-object v1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    new-instance v3, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v3}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 124
    const-string v0, "messageID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "messageID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 126
    const-string v0, "numberOfLikes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "numberOfLikes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 127
    const-string v0, "hidePin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hidePin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->HidePin:I

    .line 128
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 129
    const-string v0, "commentID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "commentID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    .line 130
    const-string v0, "liked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "liked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_5
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 131
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 133
    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    .line 135
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "handle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 136
    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_9
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 138
    const-string v0, "showHandle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "showHandle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    iput-boolean v0, v3, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    .line 140
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v4, "time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 145
    const-string v4, "time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    .line 149
    :try_start_0
    const-string v4, "time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 150
    const-string v4, "deliveryID"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v0, "deliveryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_c
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->DeliveryID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_d
    const-string v0, "deliveryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "deliveryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_e
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 160
    const-string v0, "posterID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "posterID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    .line 161
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 163
    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    :goto_11
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 165
    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    :goto_12
    iput-boolean v0, v3, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    .line 167
    const-string v0, "isDeleted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "isDeleted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_17

    move v0, v2

    :goto_13
    iput-boolean v0, v3, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    .line 168
    const-string v0, "readOnly"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "readOnly"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_19

    move v0, v2

    :goto_14
    iput-boolean v0, v3, Lcom/yik/yak/data/models/Yak;->ReadOnly:Z

    .line 170
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    :goto_15
    iput-wide v4, v3, Lcom/yik/yak/data/models/Yak;->Latitude:D

    .line 171
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_0
    iput-wide v6, v3, Lcom/yik/yak/data/models/Yak;->Longitude:D

    .line 173
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 174
    const-string v0, "thumbNailUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "thumbNailUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    .line 175
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    .line 176
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    .line 177
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    .line 179
    const-string v0, "overlayID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "overlayID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->OverlayId:Ljava/lang/String;

    .line 180
    const-string v0, "backID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "backID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->BackgroundId:Ljava/lang/String;

    .line 181
    const-string v0, "textStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "textStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->TextStyle:Ljava/lang/String;

    .line 182
    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, v3, Lcom/yik/yak/data/models/Yak;->IsOriginalPoster:Z

    .line 184
    return-object v3

    .line 124
    :cond_2
    const-string v0, "0"

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 126
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 127
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 128
    goto/16 :goto_3

    .line 129
    :cond_6
    const-string v0, "0"

    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 130
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 131
    goto/16 :goto_6

    .line 133
    :cond_9
    const-string v0, "posterID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "posterID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a
    const-string v0, ""

    goto/16 :goto_7

    .line 135
    :cond_b
    const-string v0, ""

    goto/16 :goto_8

    .line 136
    :cond_c
    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    goto/16 :goto_9

    :cond_d
    move v0, v1

    .line 138
    goto/16 :goto_a

    .line 140
    :cond_e
    const-string v0, ""

    goto/16 :goto_b

    .line 150
    :cond_f
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    div-long/2addr v4, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-int v0, v4

    goto/16 :goto_c

    .line 152
    :catch_0
    move-exception v0

    const-string v0, "deliveryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "deliveryID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1e
    iput v0, v3, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    goto/16 :goto_d

    :cond_10
    move v0, v1

    goto :goto_1e

    .line 155
    :cond_11
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    goto/16 :goto_d

    :cond_12
    move v0, v1

    .line 158
    goto/16 :goto_e

    .line 160
    :cond_13
    const-string v0, ""

    goto/16 :goto_f

    .line 161
    :cond_14
    const-string v0, ""

    goto/16 :goto_10

    .line 163
    :cond_15
    iget-object v0, v3, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    goto/16 :goto_11

    :cond_16
    move v0, v1

    .line 165
    goto/16 :goto_12

    :cond_17
    move v0, v1

    .line 167
    goto/16 :goto_13

    :cond_18
    move v0, v1

    goto/16 :goto_13

    :cond_19
    move v0, v1

    .line 168
    goto/16 :goto_14

    :cond_1a
    move v0, v1

    goto/16 :goto_14

    :cond_1b
    move-wide v4, v6

    .line 170
    goto/16 :goto_15

    .line 173
    :cond_1c
    const-string v0, ""

    goto/16 :goto_16

    .line 174
    :cond_1d
    const-string v0, ""

    goto/16 :goto_17

    .line 175
    :cond_1e
    const-string v0, ""

    goto/16 :goto_18

    .line 176
    :cond_1f
    const-string v0, ""

    goto/16 :goto_19

    .line 177
    :cond_20
    const-string v0, ""

    goto/16 :goto_1a

    .line 179
    :cond_21
    const-string v0, ""

    goto/16 :goto_1b

    .line 180
    :cond_22
    const-string v0, ""

    goto/16 :goto_1c

    .line 181
    :cond_23
    const-string v0, ""

    goto/16 :goto_1d
.end method

.method public b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v0, "messageID"

    iget-object v4, p1, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "message"

    iget-object v4, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "latitude"

    iget-wide v4, p1, Lcom/yik/yak/data/models/Yak;->Latitude:D

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    const-string v0, "longitude"

    iget-wide v4, p1, Lcom/yik/yak/data/models/Yak;->Longitude:D

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 60
    const-string v0, "time"

    iget-object v4, p1, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "numberOfLikes"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v0, "type"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, "posterID"

    iget-object v4, p1, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v0, "handle"

    iget-object v4, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v0, "showHandle"

    iget-boolean v4, p1, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    const-string v0, "liked"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->Liked:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v0, "reyaked"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    if-lez v0, :cond_0

    .line 70
    const-string v0, "deliveryID"

    iget v4, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    :cond_0
    const-string v4, "isDeleted"

    iget-boolean v0, p1, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v0, "readOnly"

    iget-boolean v4, p1, Lcom/yik/yak/data/models/Yak;->ReadOnly:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v0, "provider"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v0, "summary"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "thumbNailUrl"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "title"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "url"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v0, "comments"

    iget v1, p1, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v0, "overlayID"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->OverlayId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v0, "backID"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->BackgroundId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "textStyle"

    iget-object v1, p1, Lcom/yik/yak/data/models/Yak;->TextStyle:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v0, "isBasecamp"

    iget-boolean v1, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    return-object v3

    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    :cond_2
    move v1, v2

    .line 74
    goto :goto_1
.end method
