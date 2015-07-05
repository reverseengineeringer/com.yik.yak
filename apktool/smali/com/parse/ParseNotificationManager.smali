.class Lcom/parse/ParseNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.parse.ParseNotificationManager"


# instance fields
.field private iconIds:Landroid/util/SparseIntArray;

.field private final lock:Ljava/lang/Object;

.field private final notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile shouldShowNotifications:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static getInstance()Lcom/parse/ParseNotificationManager;
    .locals 1

    .prologue
    .line 29
    # getter for: Lcom/parse/ParseNotificationManager$Singleton;->INSTANCE:Lcom/parse/ParseNotificationManager;
    invoke-static {}, Lcom/parse/ParseNotificationManager$Singleton;->access$000()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)Landroid/app/Notification;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, p5}, Lcom/parse/ParseNotificationManager;->isValidIconId(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string v1, "com.parse.ParseNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid drawable. Trying to fall back to default app icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result p5

    .line 89
    :cond_0
    if-nez p5, :cond_1

    .line 90
    const-string v1, "com.parse.ParseNotificationManager"

    const-string v2, "Could not find a valid icon id for this app. This is required to create a Notification object to show in the status bar. Make sure that the <application> in in your Manifest.xml has a valid android:icon attribute."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 94
    :cond_2
    const-string v1, "com.parse.ParseNotificationManager"

    const-string v2, "Must specify non-null context, title, body, and activity class to show notification."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    if-eqz p6, :cond_4

    .line 104
    invoke-virtual {v1, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    :cond_4
    long-to-int v0, v2

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p5, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 111
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 112
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 113
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getShouldShowNotifications()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    return v0
.end method

.method public isValidIconId(Landroid/content/Context;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 57
    iget-object v3, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 61
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-ne v0, v5, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 65
    const/4 v0, 0x0

    .line 68
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 73
    if-nez v0, :cond_1

    move v0, v2

    .line 74
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :cond_0
    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    return v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_1

    .line 75
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    move v0, v2

    .line 78
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setShouldShowNotifications(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    .line 45
    return-void
.end method

.method public showNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    .prologue
    .line 120
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 123
    iget-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 125
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    .line 131
    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    iput v2, p2, Landroid/app/Notification;->defaults:I

    .line 135
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p6}, Lcom/parse/ParseNotificationManager;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 143
    return-void
.end method
