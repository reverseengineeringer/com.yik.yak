.class public Lcom/yik/yak/data/models/Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mHasError:Z

.field private mId:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPriority:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mReplyId:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mThingId:Ljava/lang/String;

.field private mThingType:Ljava/lang/String;

.field private mUpdated:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mKey:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingType:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mPriority:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mUserId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mBody:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mContent:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mSubject:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mKey:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingType:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mPriority:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mUserId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mBody:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mContent:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mSubject:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yik/yak/data/models/Notification;->mKey:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/yik/yak/data/models/Notification;->mThingId:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/yik/yak/data/models/Notification;->mThingType:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/yik/yak/data/models/Notification;->mPriority:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/yik/yak/data/models/Notification;->mUserId:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/yik/yak/data/models/Notification;->mBody:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    .line 36
    iput-object p11, p0, Lcom/yik/yak/data/models/Notification;->mSubject:Ljava/lang/String;

    .line 37
    iput-object p12, p0, Lcom/yik/yak/data/models/Notification;->mContent:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    const/16 v1, 0x13

    :try_start_0
    invoke-virtual {p9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/data/models/Notification;->mUpdated:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/data/models/Notification;->mHasError:Z

    .line 46
    return-void

    .line 42
    :catch_0
    move-exception v0

    iput-object p9, p0, Lcom/yik/yak/data/models/Notification;->mUpdated:Ljava/lang/String;

    goto :goto_0
.end method

.method public static emptyNotification()Lcom/yik/yak/data/models/Notification;
    .locals 13

    .prologue
    .line 49
    new-instance v0, Lcom/yik/yak/data/models/Notification;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "system"

    const-string v8, "You do not have any notifications."

    const-string v9, ""

    const-string v10, "system"

    const-string v11, ""

    const-string v12, ""

    invoke-direct/range {v0 .. v12}, Lcom/yik/yak/data/models/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getHasError()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Notification;->mHasError:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReplyId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusColor()I
    .locals 3

    .prologue
    const v0, 0x7f0b010e

    .line 176
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "unread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "vote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const v0, 0x7f0b0113

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "fictional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const v0, 0x7f0b010c

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    const v0, 0x7f0b0108

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    const v0, 0x7f0b010a

    goto :goto_0

    .line 186
    :cond_5
    const v0, 0x7f0b010f

    goto :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "read"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "vote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    const v0, 0x7f0b0112

    goto :goto_0

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "fictional"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    const v0, 0x7f0b010b

    goto :goto_0

    .line 192
    :cond_8
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 193
    const v0, 0x7f0b0107

    goto :goto_0

    .line 194
    :cond_9
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const v0, 0x7f0b0109

    goto :goto_0
.end method

.method public getStatusResource()I
    .locals 3

    .prologue
    const v0, 0x7f020165

    .line 149
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "unread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "vote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const v0, 0x7f02013f

    .line 172
    :cond_1
    :goto_0
    return v0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "fictional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const v0, 0x7f020143

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const v0, 0x7f020155

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    const v0, 0x7f020158

    goto :goto_0

    .line 159
    :cond_5
    const v0, 0x7f020166

    goto :goto_0

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "read"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_7
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "vote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 162
    const v0, 0x7f02013e

    goto :goto_0

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "fictional"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 164
    const v0, 0x7f020142

    goto :goto_0

    .line 165
    :cond_9
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 166
    const v0, 0x7f020154

    goto :goto_0

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const v0, 0x7f020157

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingId:Ljava/lang/String;

    return-object v0
.end method

.method public getThingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mThingType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yik/yak/data/models/Notification;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mBody:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mContent:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mKey:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mPriority:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mReason:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mReplyId:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mStatus:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mSubject:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setThingId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mThingId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setThingType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mThingType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUpdated(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mUpdated:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yik/yak/data/models/Notification;->mUserId:Ljava/lang/String;

    .line 106
    return-void
.end method
