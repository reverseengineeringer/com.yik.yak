.class public abstract Lcom/parse/NotificationCompat$Builder$Style;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/parse/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    invoke-virtual {v0}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/parse/NotificationCompat$Builder;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 305
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    .line 306
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/parse/NotificationCompat$Builder;->setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;

    .line 310
    :cond_0
    return-void
.end method
