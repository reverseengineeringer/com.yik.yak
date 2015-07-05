.class Lsc;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsb;

.field private b:LsE;

.field private final c:Lsk;

.field private final d:J

.field private final e:Z


# direct methods
.method public constructor <init>(Lsb;Landroid/os/Looper;)V
    .locals 3

    .prologue
    .line 210
    iput-object p1, p0, Lsc;->a:Lsb;

    .line 211
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lsc;->b:LsE;

    .line 213
    new-instance v0, Lsk;

    iget-object v1, p1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lsb;->a:LrZ;

    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsk;-><init>(Landroid/content/Context;LsD;)V

    iput-object v0, p0, Lsc;->c:Lsk;

    .line 214
    iget-object v0, p1, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->b(LrZ;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->d()Z

    move-result v0

    iput-boolean v0, p0, Lsc;->e:Z

    .line 215
    iget-object v0, p1, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->b(LrZ;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lsc;->d:J

    .line 216
    new-instance v0, Ltl;

    iget-object v1, p1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltl;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lsb;->a(Lsb;Ltl;)Ltl;

    .line 217
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 433
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 435
    const-string v0, "mp_lib"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v0, "$lib_version"

    const-string v2, "4.5.3"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v0, "$os"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    const-string v2, "$os_version"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v2, "$manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "UNKNOWN"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v2, "$brand"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "UNKNOWN"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v2, "$model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "UNKNOWN"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    :try_start_0
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 449
    packed-switch v0, :pswitch_data_0

    .line 476
    :goto_4
    :pswitch_0
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 477
    const-string v2, "$screen_dpi"

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v2, "$screen_height"

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 479
    const-string v2, "$screen_width"

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->a()Ljava/lang/String;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    const-string v2, "$app_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_0
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_1

    .line 487
    const-string v2, "$has_nfc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 489
    :cond_1
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_2

    .line 491
    const-string v2, "$has_telephone"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 493
    :cond_2
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->e()Ljava/lang/String;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_3

    .line 495
    const-string v2, "$carrier"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    :cond_3
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->f()Ljava/lang/Boolean;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_4

    .line 499
    const-string v2, "$wifi"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 501
    :cond_4
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_5

    .line 503
    const-string v2, "$bluetooth_enabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    :cond_5
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->c(Lsb;)Ltl;

    move-result-object v0

    invoke-virtual {v0}, Ltl;->h()Ljava/lang/String;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_6

    .line 507
    const-string v2, "$bluetooth_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    :cond_6
    return-object v1

    .line 440
    :cond_7
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_1

    .line 443
    :cond_9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_2

    .line 444
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_3

    .line 451
    :pswitch_1
    :try_start_1
    const-string v0, "$google_play_services"

    const-string v2, "available"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 469
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "$google_play_services"

    const-string v2, "not configured"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 473
    :catch_1
    move-exception v0

    const-string v0, "$google_play_services"

    const-string v2, "not included"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 454
    :pswitch_2
    :try_start_3
    const-string v0, "$google_play_services"

    const-string v2, "missing"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 457
    :pswitch_3
    const-string v0, "$google_play_services"

    const-string v2, "out of date"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 460
    :pswitch_4
    const-string v0, "$google_play_services"

    const-string v2, "disabled"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 463
    :pswitch_5
    const-string v0, "$google_play_services"

    const-string v2, "invalid"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 449
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

.method private a(Lsa;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 513
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 514
    invoke-virtual {p1}, Lsa;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 515
    invoke-direct {p0}, Lsc;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 516
    const-string v0, "token"

    invoke-virtual {p1}, Lsa;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 523
    :cond_0
    const-string v0, "event"

    invoke-virtual {p1}, Lsa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v0, "properties"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 322
    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 332
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LhG;->a(Landroid/content/Context;)LhG;

    move-result-object v0

    .line 333
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, LhG;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 342
    new-instance v1, Lsd;

    invoke-direct {v1, p0, v0}, Lsd;-><init>(Lsc;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(LsK;)V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0

    .line 335
    :catch_1
    move-exception v0

    goto :goto_0

    .line 327
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a(LsE;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-virtual {v0}, LrZ;->b()Ltb;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltb;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v1, "Not flushing data to Mixpanel because the device is not connected to the internet."

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v1, "Sending records to Mixpanel"

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lsc;->e:Z

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, LsG;->a:LsG;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lsc;->a(LsE;LsG;[Ljava/lang/String;)V

    .line 363
    sget-object v0, LsG;->b:LsG;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lsc;->a(LsE;LsG;[Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, LsG;->a:LsG;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    .line 366
    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 365
    invoke-direct {p0, p1, v0, v1}, Lsc;->a(LsE;LsG;[Ljava/lang/String;)V

    .line 367
    sget-object v0, LsG;->b:LsG;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    .line 368
    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-static {v2}, LrZ;->b(LrZ;)LsD;

    move-result-object v2

    invoke-virtual {v2}, LsD;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 367
    invoke-direct {p0, p1, v0, v1}, Lsc;->a(LsE;LsG;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(LsE;LsG;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 373
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-virtual {v0}, LrZ;->b()Ltb;

    move-result-object v3

    .line 374
    invoke-virtual {p1, p2}, LsE;->a(LsG;)[Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_1

    .line 377
    const/4 v1, 0x0

    aget-object v4, v0, v1

    .line 378
    const/4 v1, 0x1

    aget-object v5, v0, v1

    .line 380
    invoke-static {v5}, LtL;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    sget-boolean v0, LsD;->a:Z

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "verbose"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    const/4 v1, 0x1

    .line 389
    array-length v7, p3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v8, p3, v2

    .line 391
    :try_start_0
    invoke-virtual {v3, v8, v6}, Ltb;->a(Ljava/lang/String;Ljava/util/List;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 392
    const/4 v1, 0x1

    .line 393
    if-nez v0, :cond_2

    .line 394
    :try_start_1
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

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

    invoke-static {v0, v9}, LrZ;->a(LrZ;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 419
    :goto_1
    if-eqz v1, :cond_3

    .line 420
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v1, "Not retrying this batch of events, deleting them from DB."

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1, v4, p2}, LsE;->a(Ljava/lang/String;LsG;)V

    .line 429
    :cond_1
    :goto_2
    return-void

    .line 398
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

    .line 403
    :try_start_3
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

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

    invoke-static {v0, v10}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, LrZ;->a(LrZ;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 408
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

    .line 409
    goto :goto_1

    .line 399
    :catch_1
    move-exception v0

    .line 400
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "UTF not supported on this platform?"

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 411
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

    .line 413
    :catch_3
    move-exception v0

    .line 414
    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

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

    invoke-static {v1, v8, v0}, LrZ;->a(LrZ;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const/4 v1, 0x0

    .line 389
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v1, "Retrying this batch of events."

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 424
    invoke-static {}, LrZ;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lsc;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-static {}, LrZ;->e()I

    move-result v0

    iget-wide v2, p0, Lsc;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lsc;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 411
    :catch_4
    move-exception v1

    move v1, v0

    goto :goto_4

    .line 408
    :catch_5
    move-exception v1

    goto/16 :goto_3

    :cond_4
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 221
    iget-object v0, p0, Lsc;->b:LsE;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->a(LrZ;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LrZ;->b(Landroid/content/Context;)LsE;

    move-result-object v0

    iput-object v0, p0, Lsc;->b:LsE;

    .line 223
    iget-object v0, p0, Lsc;->b:LsE;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->b(LrZ;)LsD;

    move-result-object v1

    invoke-virtual {v1}, LsD;->c()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, LsG;->a:LsG;

    invoke-virtual {v0, v2, v3, v1}, LsE;->a(JLsG;)V

    .line 224
    iget-object v0, p0, Lsc;->b:LsE;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    invoke-static {v1}, LrZ;->b(LrZ;)LsD;

    move-result-object v1

    invoke-virtual {v1}, LsD;->c()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, LsG;->b:LsG;

    invoke-virtual {v0, v2, v3, v1}, LsE;->a(JLsG;)V

    .line 228
    :cond_0
    const/4 v1, -0x1

    .line 230
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->c()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 231
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 233
    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    const-string v2, "Queuing people record for sending later"

    invoke-static {v1, v2}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

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

    invoke-static {v1, v2}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lsc;->b:LsE;

    sget-object v2, LsG;->b:LsG;

    invoke-virtual {v1, v0, v2}, LsE;->a(Lorg/json/JSONObject;LsG;)I

    move-result v1

    .line 278
    :goto_0
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    invoke-static {v0}, LrZ;->b(LrZ;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->a()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 279
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v1, "Flushing queue due to bulk upload limit"

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->a(Lsb;)V

    .line 281
    iget-object v0, p0, Lsc;->b:LsE;

    invoke-direct {p0, v0}, Lsc;->a(LsE;)V

    .line 282
    iget-object v0, p0, Lsc;->c:Lsk;

    iget-object v1, p0, Lsc;->a:Lsb;

    iget-object v1, v1, Lsb;->a:LrZ;

    invoke-virtual {v1}, LrZ;->b()Ltb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk;->a(Ltb;)V

    .line 307
    :cond_1
    :goto_1
    return-void

    .line 238
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->d()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsa;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    invoke-direct {p0, v0}, Lsc;->a(Lsa;)Lorg/json/JSONObject;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lsc;->a:Lsb;

    iget-object v3, v3, Lsb;->a:LrZ;

    const-string v4, "Queuing event for sending later"

    invoke-static {v3, v4}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lsc;->a:Lsb;

    iget-object v3, v3, Lsb;->a:LrZ;

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

    invoke-static {v3, v4}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lsc;->b:LsE;

    sget-object v4, LsG;->a:LsG;

    invoke-virtual {v3, v2, v4}, LsE;->a(Lorg/json/JSONObject;LsG;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    move v1, v0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception tracking event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lsa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_2

    .line 249
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->e()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 250
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v2, "Flushing queue due to scheduled or forced flush"

    invoke-static {v0, v2}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->a(Lsb;)V

    .line 252
    iget-object v0, p0, Lsc;->b:LsE;

    invoke-direct {p0, v0}, Lsc;->a(LsE;)V

    .line 253
    iget-object v0, p0, Lsc;->c:Lsk;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-virtual {v2}, LrZ;->b()Ltb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk;->a(Ltb;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 296
    :catch_1
    move-exception v0

    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->b(Lsb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 298
    :try_start_3
    iget-object v0, p0, Lsc;->a:Lsb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsb;->a(Lsb;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    :goto_3
    :try_start_5
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 255
    :cond_4
    :try_start_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->f()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 256
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

    const-string v2, "Installing a check for surveys and in app notifications"

    invoke-static {v0, v2}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsn;

    .line 258
    iget-object v2, p0, Lsc;->c:Lsk;

    invoke-virtual {v2, v0}, Lsk;->a(Lsn;)V

    .line 259
    iget-object v0, p0, Lsc;->c:Lsk;

    iget-object v2, p0, Lsc;->a:Lsb;

    iget-object v2, v2, Lsb;->a:LrZ;

    invoke-virtual {v2}, LrZ;->b()Ltb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk;->a(Ltb;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->g()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-direct {p0, v0}, Lsc;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, LrZ;->h()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 266
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

    .line 267
    iget-object v0, p0, Lsc;->a:Lsb;

    invoke-static {v0}, Lsb;->b(Lsb;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 268
    :try_start_7
    iget-object v0, p0, Lsc;->b:LsE;

    invoke-virtual {v0}, LsE;->a()V

    .line 269
    iget-object v0, p0, Lsc;->a:Lsb;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lsb;->a(Lsb;Landroid/os/Handler;)Landroid/os/Handler;

    .line 270
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 271
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 273
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message received by Mixpanel worker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 283
    :cond_8
    if-lez v1, :cond_1

    invoke-static {}, LrZ;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lsc;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lsc;->a:Lsb;

    iget-object v0, v0, Lsb;->a:LrZ;

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

    iget-wide v2, p0, Lsc;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LrZ;->a(LrZ;Ljava/lang/String;)V

    .line 291
    iget-wide v0, p0, Lsc;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 292
    invoke-static {}, LrZ;->e()I

    move-result v0

    iget-wide v2, p0, Lsc;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lsc;->sendEmptyMessageDelayed(IJ)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method
