.class Lcom/parse/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/NotificationCompat$NotificationCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 42
    iget-object v0, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 43
    iget-object v1, p1, Lcom/parse/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/parse/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 45
    iget v1, p1, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    if-lez v1, :cond_0

    .line 46
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 48
    :cond_0
    return-object v0
.end method
