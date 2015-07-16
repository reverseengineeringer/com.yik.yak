.class LsQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsP;


# instance fields
.field final synthetic a:LsK;


# direct methods
.method private constructor <init>(LsK;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, LsQ;->a:LsK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LsK;LsL;)V
    .locals 0

    .prologue
    .line 1348
    invoke-direct {p0, p1}, LsQ;-><init>(LsK;)V

    return-void
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1821
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1822
    sget-boolean v0, LsG;->a:Z

    .line 1920
    :goto_0
    return-void

    .line 1828
    :cond_0
    new-instance v0, LsT;

    invoke-direct {v0, p0, p1, p2}, LsT;-><init>(LsQ;Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 1762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1763
    sget-boolean v0, LsG;->a:Z

    .line 1818
    :goto_0
    return-void

    .line 1769
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsn;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1770
    sget-boolean v0, LsG;->a:Z

    goto :goto_0

    .line 1776
    :cond_1
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 1778
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1780
    :try_start_0
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1814
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1784
    :cond_2
    if-nez p1, :cond_3

    .line 1785
    :try_start_1
    invoke-virtual {p0}, LsQ;->d()Lcom/mixpanel/android/mpmetrics/Survey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 1787
    :cond_3
    if-nez p1, :cond_4

    .line 1814
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1791
    :cond_4
    :try_start_2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    invoke-direct {v0, p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;)V

    .line 1794
    invoke-virtual {p0}, LsQ;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LsQ;->a:LsK;

    invoke-static {v3}, LsK;->f(LsK;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1795
    if-gtz v2, :cond_5

    .line 1796
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1800
    :cond_5
    :try_start_3
    new-instance v3, LsS;

    invoke-direct {v3, p0, v0, p2, v2}, LsS;-><init>(LsQ;Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;Landroid/app/Activity;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1814
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1817
    invoke-static {p2, v3}, Lsi;->a(Landroid/app/Activity;Lsl;)V

    goto :goto_0

    .line 1814
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 1728
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1729
    invoke-virtual {p0}, LsQ;->e()Ljava/lang/String;

    move-result-object v1

    .line 1731
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    const-string v2, "$token"

    iget-object v3, p0, LsQ;->a:LsK;

    invoke-static {v3}, LsK;->f(LsK;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1733
    const-string v2, "$time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1735
    if-eqz v1, :cond_0

    .line 1736
    const-string v2, "$distinct_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1739
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->a(LsK;)LsZ;

    move-result-object v0

    invoke-virtual {v0}, LsZ;->d()V

    .line 1662
    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v1}, LsQ;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1663
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1557
    :goto_0
    return-void

    .line 1556
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LsQ;->a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Lcom/mixpanel/android/mpmetrics/InAppNotification;)V
    .locals 5

    .prologue
    .line 1524
    if-nez p1, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1526
    :cond_0
    const-string v0, "$campaign_delivery"

    invoke-virtual {p0, v0, p1}, LsQ;->a(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/InAppNotification;)V

    .line 1527
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-virtual {v0}, LsK;->c()LsP;

    move-result-object v0

    invoke-virtual {p0}, LsQ;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LsP;->b(Ljava/lang/String;)LsP;

    move-result-object v0

    .line 1528
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1529
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 1531
    :try_start_0
    const-string v3, "$time"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_1
    const-string v1, "$campaigns"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, LsP;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1536
    const-string v1, "$notifications"

    invoke-interface {v0, v1, v2}, LsP;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1647
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->a(LsK;)LsZ;

    move-result-object v1

    monitor-enter v1

    .line 1648
    :try_start_0
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->a(LsK;)LsZ;

    move-result-object v0

    invoke-virtual {v0}, LsZ;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1649
    monitor-exit v1

    .line 1657
    :goto_0
    return-void

    .line 1652
    :cond_0
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->a(LsK;)LsZ;

    move-result-object v0

    invoke-virtual {v0, p1}, LsZ;->a(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1654
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1655
    const-string v2, "$android_devices"

    invoke-virtual {p0, v2, v0}, LsQ;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1656
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/InAppNotification;)V
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LsK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1592
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1463
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1464
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    const-string v1, "$append"

    invoke-direct {p0, v1, v0}, LsQ;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1466
    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1, v0}, LsK;->a(LsK;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 1475
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1476
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1477
    const-string v1, "$union"

    invoke-direct {p0, v1, v0}, LsQ;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1478
    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1, v0}, LsK;->a(LsK;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1443
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1445
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1446
    const-string v1, "$merge"

    invoke-direct {p0, v1, v0}, LsQ;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1447
    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1, v0}, LsK;->a(LsK;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1375
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->c(LsK;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1376
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1378
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1384
    :goto_1
    return-void

    .line 1381
    :cond_0
    const-string v0, "$set"

    invoke-direct {p0, v0, v1}, LsQ;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1382
    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1, v0}, LsK;->a(LsK;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)LsP;
    .locals 1

    .prologue
    .line 1700
    if-nez p1, :cond_0

    .line 1701
    const/4 v0, 0x0

    .line 1703
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LsR;

    invoke-direct {v0, p0, p1}, LsR;-><init>(LsQ;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->b(LsK;)Lsr;

    move-result-object v0

    invoke-virtual {v0}, Lsr;->c()Lorg/json/JSONArray;

    move-result-object v0

    .line 1597
    if-eqz v0, :cond_0

    .line 1598
    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1}, LsK;->e(LsK;)LuD;

    move-result-object v1

    invoke-interface {v1, v0}, LuD;->b(Lorg/json/JSONArray;)V

    .line 1600
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1574
    :goto_0
    return-void

    .line 1573
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LsQ;->a(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1391
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, LsQ;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->b(LsK;)Lsr;

    move-result-object v0

    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1}, LsK;->d(LsK;)LsG;

    move-result-object v1

    invoke-virtual {v1}, LsG;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsr;->b(Z)Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 2

    .prologue
    .line 1541
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->b(LsK;)Lsr;

    move-result-object v0

    iget-object v1, p0, LsQ;->a:LsK;

    invoke-static {v1}, LsK;->d(LsK;)LsG;

    move-result-object v1

    invoke-virtual {v1}, LsG;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsr;->a(Z)Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->a(LsK;)LsZ;

    move-result-object v0

    invoke-virtual {v0}, LsZ;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
