.class public LzQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Ljava/lang/String;D)D
    .locals 5

    .prologue
    .line 350
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

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
    .line 340
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LAk;)V
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, LAk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LAk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LAk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LAk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "yakkerId"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 273
    const-string v0, "bcName"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "bcLat"

    invoke-static {v0, p1}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "bcLong"

    invoke-static {v0, p2}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "bcPeek"

    invoke-static {v0, p3}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static a(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 181
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, LGD;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "nextRateDate"

    invoke-static {v1, v0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "audibleNotifications"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "audibleNotifications"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 332
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->b(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    const-string v0, "handle"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static b(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 387
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, LzQ;->b(Ljava/lang/String;J)V

    .line 388
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 373
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 359
    invoke-static {}, LzQ;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 109
    const-string v0, "isChannelSet"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "use_test_congiguration"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, "yakkerId"

    const-string v1, ""

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "karma"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LGs;->a(I)V

    .line 128
    return-void
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x5

    invoke-static {v0}, LzQ;->b(I)V

    .line 150
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    const-string v0, "pin"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 194
    const-string v0, "pushNotificationsEnabled"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 195
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 105
    const-string v0, "isChannelSet"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const-string v0, "handle"

    const-string v1, ""

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    const-string v0, "votingLayout"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static e(Z)V
    .locals 1

    .prologue
    .line 210
    const-string v0, "secureMyYaks"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 211
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const-string v0, "karma"

    const-string v1, "100"

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    const-string v0, "token"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static f(Z)V
    .locals 1

    .prologue
    .line 234
    const-string v0, "doubleTapToVote"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public static g()I
    .locals 2

    .prologue
    .line 132
    :try_start_0
    const-string v0, "karma"

    const-string v1, "100"

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 1

    .prologue
    .line 250
    const-string v0, "analytics"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 251
    return-void
.end method

.method public static h(Z)V
    .locals 1

    .prologue
    .line 292
    const-string v0, "bcEligible"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 293
    return-void
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x5

    invoke-static {v0}, LzQ;->a(I)Z

    move-result v0

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "pin"

    const-string v1, ""

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Z)V
    .locals 1

    .prologue
    .line 300
    const-string v0, "bcEnabled"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 301
    return-void
.end method

.method public static j()Ljava/util/Date;
    .locals 2

    .prologue
    .line 173
    const-string v0, "nextRateDate"

    const-string v1, ""

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, LGD;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Z)V
    .locals 1

    .prologue
    .line 308
    const-string v0, "bcDismissed"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 309
    return-void
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "nextRateDate"

    const-string v1, ""

    invoke-static {v0, v1}, LzQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static k(Z)V
    .locals 1

    .prologue
    .line 316
    const-string v0, "bcConfigured"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 317
    return-void
.end method

.method public static l(Z)V
    .locals 1

    .prologue
    .line 324
    const-string v0, "bcFinishedDismissed"

    invoke-static {v0, p0}, LzQ;->b(Ljava/lang/String;Z)V

    .line 325
    return-void
.end method

.method public static l()Z
    .locals 2

    .prologue
    .line 190
    const-string v0, "pushNotificationsEnabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 206
    const-string v0, "secureMyYaks"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    .prologue
    .line 214
    const-string v0, "showUnreadNotificationsOnly"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "doubleTapToVote"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    const-string v0, "votingLayout"

    const-string v1, "right"

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 246
    const-string v0, "analytics"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    const-string v0, "token"

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    invoke-virtual {v1}, LAw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()LAk;
    .locals 3

    .prologue
    .line 264
    new-instance v0, LAk;

    invoke-direct {v0}, LAk;-><init>()V

    .line 265
    const-string v1, "bcName"

    const-string v2, ""

    invoke-static {v1, v2}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAk;->a(Ljava/lang/String;)V

    .line 266
    const-string v1, "bcLat"

    const-string v2, "0"

    invoke-static {v1, v2}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAk;->c(Ljava/lang/String;)V

    .line 267
    const-string v1, "bcLong"

    const-string v2, "0"

    invoke-static {v1, v2}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAk;->d(Ljava/lang/String;)V

    .line 268
    const-string v1, "bcPeek"

    const-string v2, "0"

    invoke-static {v1, v2}, LzQ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LAk;->b(Ljava/lang/String;)V

    .line 269
    return-object v0
.end method

.method public static t()Z
    .locals 2

    .prologue
    .line 288
    const-string v0, "bcEligible"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 2

    .prologue
    .line 296
    const-string v0, "bcEnabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 2

    .prologue
    .line 304
    const-string v0, "bcDismissed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 2

    .prologue
    .line 312
    const-string v0, "bcConfigured"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    .prologue
    .line 320
    const-string v0, "bcFinishedDismissed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzQ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    sget-object v0, LzQ;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    const-string v1, "YikYak"

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/YikYak;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LzQ;->a:Landroid/content/SharedPreferences;

    .line 404
    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    const-string v1, "com.yik.yak_preferences"

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/YikYak;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LzQ;->a:Landroid/content/SharedPreferences;

    .line 410
    :cond_0
    sget-object v0, LzQ;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method
