.class Lsg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsf;

.field private b:LsH;

.field private final c:Lso;

.field private final d:J

.field private final e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lsf;Landroid/os/Looper;)V
    .locals 3

    .prologue
    .line 213
    iput-object p1, p0, Lsg;->a:Lsf;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lsg;->b:LsH;

    .line 216
    new-instance v0, Lso;

    iget-object v1, p1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lso;-><init>(Landroid/content/Context;LsG;)V

    iput-object v0, p0, Lsg;->c:Lso;

    .line 217
    iget-object v0, p1, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->b(Lsd;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->d()Z

    move-result v0

    iput-boolean v0, p0, Lsg;->e:Z

    .line 218
    iget-object v0, p1, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->b(Lsd;)LsG;

    move-result-object v0

    iget-object v1, p1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LsG;->b(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lsg;->d:J

    .line 219
    new-instance v0, Ltp;

    iget-object v1, p1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltp;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lsf;->a(Lsf;Ltp;)Ltp;

    .line 220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsg;->f:J

    .line 221
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 454
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 456
    const-string v0, "mp_lib"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v0, "$lib_version"

    const-string v2, "4.6.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v0, "$os"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v2, "$os_version"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v2, "$manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "UNKNOWN"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v2, "$brand"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "UNKNOWN"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v2, "$model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "UNKNOWN"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    :try_start_0
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 470
    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_4
    :pswitch_0
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 498
    const-string v2, "$screen_dpi"

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    const-string v2, "$screen_height"

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    const-string v2, "$screen_width"

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->a()Ljava/lang/String;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_0

    .line 504
    const-string v2, "$app_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    :cond_0
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    .line 508
    const-string v2, "$has_nfc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 510
    :cond_1
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_2

    .line 512
    const-string v2, "$has_telephone"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 514
    :cond_2
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->e()Ljava/lang/String;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_3

    .line 516
    const-string v2, "$carrier"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    :cond_3
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->f()Ljava/lang/Boolean;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_4

    .line 520
    const-string v2, "$wifi"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 522
    :cond_4
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_5

    .line 524
    const-string v2, "$bluetooth_enabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    :cond_5
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->h()Ljava/lang/String;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_6

    .line 528
    const-string v2, "$bluetooth_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    :cond_6
    return-object v1

    .line 461
    :cond_7
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 463
    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_1

    .line 464
    :cond_9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_2

    .line 465
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_3

    .line 472
    :pswitch_1
    :try_start_1
    const-string v0, "$google_play_services"

    const-string v2, "available"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 490
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "$google_play_services"

    const-string v2, "not configured"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 494
    :catch_1
    move-exception v0

    const-string v0, "$google_play_services"

    const-string v2, "not included"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 475
    :pswitch_2
    :try_start_3
    const-string v0, "$google_play_services"

    const-string v2, "missing"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 478
    :pswitch_3
    const-string v0, "$google_play_services"

    const-string v2, "out of date"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 481
    :pswitch_4
    const-string v0, "$google_play_services"

    const-string v2, "disabled"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 484
    :pswitch_5
    const-string v0, "$google_play_services"

    const-string v2, "invalid"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lse;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 534
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 535
    invoke-virtual {p1}, Lse;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 536
    invoke-direct {p0}, Lsg;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 537
    const-string v0, "token"

    invoke-virtual {p1}, Lse;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 544
    :cond_0
    const-string v0, "event"

    invoke-virtual {p1}, Lse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v0, "properties"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 343
    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 353
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LhD;->a(Landroid/content/Context;)LhD;

    move-result-object v0

    .line 354
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, LhD;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 363
    new-instance v1, Lsh;

    invoke-direct {v1, p0, v0}, Lsh;-><init>(Lsg;Ljava/lang/String;)V

    invoke-static {v1}, LsK;->a(LsO;)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    goto :goto_0

    .line 348
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a(LsH;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-virtual {v0}, Lsd;->b()LtU;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LtU;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v1, "Not flushing data to Mixpanel because the device is not connected to the internet."

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v1, "Sending records to Mixpanel"

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lsg;->e:Z

    if-eqz v0, :cond_1

    .line 383
    sget-object v0, LsJ;->a:LsJ;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lsg;->a(LsH;LsJ;[Ljava/lang/String;)V

    .line 384
    sget-object v0, LsJ;->b:LsJ;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lsg;->a(LsH;LsJ;[Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_1
    sget-object v0, LsJ;->a:LsJ;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lsg;->a(LsH;LsJ;[Ljava/lang/String;)V

    .line 388
    sget-object v0, LsJ;->b:LsJ;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-static {v2}, Lsd;->b(Lsd;)LsG;

    move-result-object v2

    invoke-virtual {v2}, LsG;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lsg;->a(LsH;LsJ;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(LsH;LsJ;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 394
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-virtual {v0}, Lsd;->b()LtU;

    move-result-object v3

    .line 395
    invoke-virtual {p1, p2}, LsH;->a(LsJ;)[Ljava/lang/String;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 398
    const/4 v1, 0x0

    aget-object v4, v0, v1

    .line 399
    const/4 v1, 0x1

    aget-object v5, v0, v1

    .line 401
    invoke-static {v5}, LtR;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "verbose"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    const/4 v1, 0x1

    .line 410
    array-length v7, p3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v8, p3, v2

    .line 412
    :try_start_0
    invoke-interface {v3, v8, v6}, LtU;->a(Ljava/lang/String;Ljava/util/List;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 413
    const/4 v1, 0x1

    .line 414
    if-nez v0, :cond_2

    .line 415
    :try_start_1
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response was null, unexpected failure posting to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lsd;->a(Lsd;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 440
    :goto_1
    if-eqz v1, :cond_3

    .line 441
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v1, "Not retrying this batch of events, deleting them from DB."

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, v4, p2}, LsH;->a(Ljava/lang/String;LsJ;)V

    .line 450
    :cond_1
    :goto_2
    return-void

    .line 419
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 424
    :try_start_3
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Successfully posted to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lsd;->a(Lsd;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of memory when posting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v0

    .line 430
    goto :goto_1

    .line 420
    :catch_1
    move-exception v0

    .line 421
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "UTF not supported on this platform?"

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 432
    :catch_2
    move-exception v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a URL."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 434
    :catch_3
    move-exception v0

    .line 435
    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot post message to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v0}, Lsd;->a(Lsd;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    const/4 v1, 0x0

    .line 410
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v1, "Retrying this batch of events."

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsg;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    const/4 v0, 0x2

    iget-wide v2, p0, Lsg;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lsg;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 432
    :catch_4
    move-exception v1

    move v1, v0

    goto :goto_4

    .line 429
    :catch_5
    move-exception v1

    goto/16 :goto_3

    :cond_4
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 225
    iget-object v0, p0, Lsg;->b:LsH;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->a(Lsd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsd;->b(Landroid/content/Context;)LsH;

    move-result-object v0

    iput-object v0, p0, Lsg;->b:LsH;

    .line 227
    iget-object v0, p0, Lsg;->b:LsH;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->b(Lsd;)LsG;

    move-result-object v1

    invoke-virtual {v1}, LsG;->b()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, LsJ;->a:LsJ;

    invoke-virtual {v0, v2, v3, v1}, LsH;->a(JLsJ;)V

    .line 228
    iget-object v0, p0, Lsg;->b:LsH;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    invoke-static {v1}, Lsd;->b(Lsd;)LsG;

    move-result-object v1

    invoke-virtual {v1}, LsG;->b()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, LsJ;->b:LsJ;

    invoke-virtual {v0, v2, v3, v1}, LsH;->a(JLsJ;)V

    .line 232
    :cond_0
    const/4 v1, -0x3

    .line 234
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 237
    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    const-string v2, "Queuing people record for sending later"

    invoke-static {v1, v2}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lsg;->b:LsH;

    sget-object v2, LsJ;->b:LsJ;

    invoke-virtual {v1, v0, v2}, LsH;->a(Lorg/json/JSONObject;LsJ;)I

    move-result v1

    .line 294
    :cond_1
    :goto_0
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    invoke-static {v0}, Lsd;->b(Lsd;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->a()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, -0x2

    if-ne v1, v0, :cond_a

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lsg;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_a

    .line 296
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v1, "Flushing queue due to bulk upload limit"

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->a(Lsf;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 299
    :try_start_1
    iget-object v0, p0, Lsg;->b:LsH;

    invoke-direct {p0, v0}, Lsg;->a(LsH;)V

    .line 300
    iget-object v0, p0, Lsg;->c:Lso;

    iget-object v1, p0, Lsg;->a:Lsf;

    iget-object v1, v1, Lsf;->a:Lsd;

    invoke-virtual {v1}, Lsd;->b()LtU;

    move-result-object v1

    invoke-virtual {v0, v1}, Lso;->a(LtU;)V
    :try_end_1
    .catch LtV; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 328
    :cond_3
    :goto_1
    return-void

    .line 242
    :cond_4
    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lse;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    :try_start_3
    invoke-direct {p0, v0}, Lsg;->a(Lse;)Lorg/json/JSONObject;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lsg;->a:Lsf;

    iget-object v3, v3, Lsf;->a:Lsd;

    const-string v4, "Queuing event for sending later"

    invoke-static {v3, v4}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lsg;->a:Lsf;

    iget-object v3, v3, Lsf;->a:Lsd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lsg;->b:LsH;

    sget-object v4, LsJ;->a:LsJ;

    invoke-virtual {v3, v2, v4}, LsH;->a(Lorg/json/JSONObject;LsJ;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    :goto_2
    move v1, v0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception tracking event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lse;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_2

    .line 253
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_6

    .line 254
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v2, "Flushing queue due to scheduled or forced flush"

    invoke-static {v0, v2}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->a(Lsf;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lsg;->f:J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 258
    :try_start_5
    iget-object v0, p0, Lsg;->b:LsH;

    invoke-direct {p0, v0}, Lsg;->a(LsH;)V

    .line 259
    iget-object v0, p0, Lsg;->c:Lso;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-virtual {v2}, Lsd;->b()LtU;

    move-result-object v2

    invoke-virtual {v0, v2}, Lso;->a(LtU;)V
    :try_end_5
    .catch LtV; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, LtV;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lsg;->f:J
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 317
    :catch_2
    move-exception v0

    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->b(Lsf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 319
    :try_start_7
    iget-object v0, p0, Lsg;->a:Lsf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsf;->a(Lsf;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    :try_start_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 324
    :goto_3
    :try_start_9
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 265
    :cond_6
    :try_start_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    .line 266
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    const-string v2, "Installing a check for surveys and in-app notifications"

    invoke-static {v0, v2}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsr;

    .line 268
    iget-object v2, p0, Lsg;->c:Lso;

    invoke-virtual {v2, v0}, Lso;->a(Lsr;)V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lsg;->f:J
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 271
    :try_start_b
    iget-object v0, p0, Lsg;->c:Lso;

    iget-object v2, p0, Lsg;->a:Lsf;

    iget-object v2, v2, Lsf;->a:Lsd;

    invoke-virtual {v2}, Lsd;->b()LtU;

    move-result-object v2

    invoke-virtual {v0, v2}, Lso;->a(LtU;)V
    :try_end_b
    .catch LtV; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 272
    :catch_3
    move-exception v0

    .line 273
    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, LtV;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lsg;->f:J

    goto/16 :goto_0

    .line 277
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_8

    .line 278
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-direct {p0, v0}, Lsg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker received a hard kill. Dumping all events and force-killing. Thread id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lsg;->a:Lsf;

    invoke-static {v0}, Lsf;->b(Lsf;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 284
    :try_start_d
    iget-object v0, p0, Lsg;->b:LsH;

    invoke-virtual {v0}, LsH;->a()V

    .line 285
    iget-object v0, p0, Lsg;->a:Lsf;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lsf;->a(Lsf;Landroid/os/Handler;)Landroid/os/Handler;

    .line 286
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 287
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    .line 289
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message received by Mixpanel worker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :catch_4
    move-exception v0

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, LtV;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsg;->f:J

    goto/16 :goto_1

    .line 304
    :cond_a
    if-lez v1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsg;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lsg;->a:Lsf;

    iget-object v0, v0, Lsf;->a:Lsd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Adding flush in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsg;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsd;->a(Lsd;Ljava/lang/String;)V

    .line 312
    iget-wide v0, p0, Lsg;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 313
    const/4 v0, 0x2

    iget-wide v2, p0, Lsg;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lsg;->sendEmptyMessageDelayed(IJ)Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_3
.end method
