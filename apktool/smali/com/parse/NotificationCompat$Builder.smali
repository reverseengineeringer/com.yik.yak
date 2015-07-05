.class public Lcom/parse/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mPriority:I

.field mStyle:Lcom/parse/NotificationCompat$Builder$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 112
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 116
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    .line 118
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3

    .prologue
    .line 232
    if-eqz p2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 286
    # getter for: Lcom/parse/NotificationCompat;->IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/parse/NotificationCompat;->access$000()Lcom/parse/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/NotificationCompat$NotificationCompatImpl;->build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    # getter for: Lcom/parse/NotificationCompat;->IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/parse/NotificationCompat;->access$000()Lcom/parse/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/NotificationCompat$NotificationCompatImpl;->build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/parse/NotificationCompat$Builder;->setFlag(IZ)V

    .line 210
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 179
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 166
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 158
    return-object p0
.end method

.method public setDefaults(I)Lcom/parse/NotificationCompat$Builder;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 225
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 228
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 191
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/parse/NotificationCompat$Builder;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 199
    return-object p0
.end method

.method public setPriority(I)Lcom/parse/NotificationCompat$Builder;
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    .line 252
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 134
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 149
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 150
    return-object p0
.end method

.method public setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    if-eq v0, p1, :cond_0

    .line 265
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    .line 266
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    invoke-virtual {v0, p0}, Lcom/parse/NotificationCompat$Builder$Style;->setBuilder(Lcom/parse/NotificationCompat$Builder;)V

    .line 270
    :cond_0
    return-object p0
.end method

.method public setWhen(J)Lcom/parse/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 122
    return-object p0
.end method
