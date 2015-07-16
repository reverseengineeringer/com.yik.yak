.class public LAa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static A()Z
    .locals 2

    .prologue
    .line 366
    const-string v0, "bcEnabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 2

    .prologue
    .line 374
    const-string v0, "bcDismissed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .locals 2

    .prologue
    .line 382
    const-string v0, "bcConfigured"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D()Z
    .locals 2

    .prologue
    .line 390
    const-string v0, "bcFinishedDismissed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E()Z
    .locals 2

    .prologue
    .line 398
    const-string v0, "pushNotificationStatusSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    const-string v0, "privacy_policy_version"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    sget-object v0, LAa;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    const-string v1, "YikYak"

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/YikYak;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LAa;->a:Landroid/content/SharedPreferences;

    .line 490
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    const-string v1, "com.yik.yak_preferences"

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/YikYak;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LAa;->a:Landroid/content/SharedPreferences;

    .line 496
    :cond_0
    sget-object v0, LAa;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Ljava/lang/String;D)D
    .locals 5

    .prologue
    .line 436
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 426
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const-string v0, "previousVerificationToken"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LAw;)V
    .locals 4

    .prologue
    .line 350
    invoke-virtual {p0}, LAw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LAw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LAw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LAw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, LAa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "previousVerificationToken"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 343
    const-string v0, "bcName"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "bcLat"

    invoke-static {v0, p1}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "bcLong"

    invoke-static {v0, p2}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "bcPeek"

    invoke-static {v0, p3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static a(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 231
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, LHk;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "nextRateDate"

    invoke-static {v1, v0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 116
    const-string v0, "deepLinkToPeek"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 418
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->b(Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "yakkerId"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static b(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 473
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, LAa;->b(Ljava/lang/String;J)V

    .line 474
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 459
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 477
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 445
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 449
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "deepLinkToVerify"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 100
    const-string v0, "audibleNotifications"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    const-string v0, "handle"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 128
    const-string v0, "hasBeenVerified"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "use_test_congiguration"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "karma"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LHa;->a(I)V

    .line 170
    return-void
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 131
    const-string v0, "use_test_congiguration"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "deepLinkToPeek"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    const-string v0, "pin"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static e(Z)V
    .locals 1

    .prologue
    .line 135
    const-string v0, "audibleNotifications"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "deepLinkToVerify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    const-string v0, "votingLayout"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static f(Z)V
    .locals 1

    .prologue
    .line 151
    const-string v0, "isChannelSet"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "hasBeenVerified"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    const-string v0, "yakkerId"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    const-string v0, "token"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public static g(Z)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x5

    invoke-static {v0}, LAa;->b(I)V

    .line 192
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 410
    const-string v0, "privacy_policy_version"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public static h(Z)V
    .locals 1

    .prologue
    .line 199
    const-string v0, "forceRatingPrompt"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public static h()Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "isChannelSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const-string v0, "handle"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Z)V
    .locals 1

    .prologue
    .line 244
    const-string v0, "pushNotificationsEnabled"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const-string v0, "karma"

    const-string v1, "100"

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Z)V
    .locals 1

    .prologue
    .line 252
    const-string v0, "isBeingForceVerified"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 253
    return-void
.end method

.method public static k()I
    .locals 2

    .prologue
    .line 174
    :try_start_0
    const-string v0, "karma"

    const-string v1, "100"

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static k(Z)V
    .locals 1

    .prologue
    .line 268
    const-string v0, "secureMyYaks"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public static l(Z)V
    .locals 1

    .prologue
    .line 292
    const-string v0, "doubleTapToVote"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 293
    return-void
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x5

    invoke-static {v0}, LAa;->a(I)Z

    move-result v0

    return v0
.end method

.method public static m(Z)V
    .locals 1

    .prologue
    .line 308
    const-string v0, "analytics"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 309
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->b()V

    .line 311
    return-void
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "forceRatingPrompt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const-string v0, "pin"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Z)V
    .locals 1

    .prologue
    .line 326
    const-string v0, "hasSeenPrivacyPolicyUpdate"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 327
    return-void
.end method

.method public static o()Ljava/util/Date;
    .locals 2

    .prologue
    .line 223
    const-string v0, "nextRateDate"

    const-string v1, ""

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, LHk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Z)V
    .locals 1

    .prologue
    .line 362
    const-string v0, "bcEligible"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method

.method public static p(Z)V
    .locals 1

    .prologue
    .line 370
    const-string v0, "bcEnabled"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 371
    return-void
.end method

.method public static p()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "pushNotificationsEnabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q(Z)V
    .locals 1

    .prologue
    .line 378
    const-string v0, "bcDismissed"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 379
    return-void
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 248
    const-string v0, "isBeingForceVerified"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r(Z)V
    .locals 1

    .prologue
    .line 386
    const-string v0, "bcConfigured"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 387
    return-void
.end method

.method public static r()Z
    .locals 2

    .prologue
    .line 264
    const-string v0, "secureMyYaks"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s(Z)V
    .locals 1

    .prologue
    .line 394
    const-string v0, "bcFinishedDismissed"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 395
    return-void
.end method

.method public static s()Z
    .locals 2

    .prologue
    .line 272
    const-string v0, "showUnreadNotificationsOnly"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t(Z)V
    .locals 1

    .prologue
    .line 402
    const-string v0, "pushNotificationStatusSet"

    invoke-static {v0, p0}, LAa;->b(Ljava/lang/String;Z)V

    .line 403
    return-void
.end method

.method public static t()Z
    .locals 2

    .prologue
    .line 288
    const-string v0, "doubleTapToVote"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    const-string v0, "votingLayout"

    const-string v1, "right"

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()Z
    .locals 2

    .prologue
    .line 304
    const-string v0, "analytics"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    const-string v0, "token"

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    invoke-virtual {v1}, LAJ;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()Z
    .locals 2

    .prologue
    .line 322
    const-string v0, "hasSeenPrivacyPolicyUpdate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()LAw;
    .locals 3

    .prologue
    .line 334
    new-instance v0, LAw;

    invoke-direct {v0}, LAw;-><init>()V

    .line 335
    const-string v1, "bcName"

    const-string v2, ""

    invoke-static {v1, v2}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAw;->a(Ljava/lang/String;)V

    .line 336
    const-string v1, "bcLat"

    const-string v2, "0"

    invoke-static {v1, v2}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAw;->c(Ljava/lang/String;)V

    .line 337
    const-string v1, "bcLong"

    const-string v2, "0"

    invoke-static {v1, v2}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAw;->d(Ljava/lang/String;)V

    .line 338
    const-string v1, "bcPeek"

    const-string v2, "0"

    invoke-static {v1, v2}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAw;->b(Ljava/lang/String;)V

    .line 339
    return-object v0
.end method

.method public static z()Z
    .locals 2

    .prologue
    .line 358
    const-string v0, "bcEligible"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
