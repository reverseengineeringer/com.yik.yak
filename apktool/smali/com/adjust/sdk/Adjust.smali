.class public Lcom/adjust/sdk/Adjust;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static activityHandler:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appDidLaunch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 157
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/ActivityHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    .line 158
    return-void
.end method

.method public static appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrl(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/Logger;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionEnd()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    .line 39
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 40
    return-void
.end method

.method public static setEnabled(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/ActivityHandler;->setEnabled(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/ActivityHandler;->setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSdkPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/ActivityHandler;->setSdkPrefix(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackRevenue(D)V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adjust/sdk/Adjust;->trackRevenue(DLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public static trackRevenue(DLjava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/adjust/sdk/Adjust;->trackRevenue(DLjava/lang/String;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public static trackRevenue(DLjava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->trackRevenue(DLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    const-string v1, "No activity handler found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
