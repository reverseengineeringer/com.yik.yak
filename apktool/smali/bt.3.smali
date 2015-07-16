.class abstract Lbt;
.super LHK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHK",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:LbA;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:LJO;

.field private j:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, LHK;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v0, LbF;

    invoke-direct {v0}, LbF;-><init>()V

    .line 129
    new-instance v1, LIA;

    invoke-direct {v1}, LIA;-><init>()V

    .line 130
    new-instance v2, LJt;

    invoke-virtual {p0}, Lbt;->C()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lbt;->h()Ljava/io/File;

    move-result-object v4

    const-string v5, "session_analytics.tap"

    const-string v6, "session_analytics_to_send"

    invoke-direct {v2, v3, v4, v5, v6}, LJt;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v12, Lbz;

    invoke-direct {v12, p1, v0, v1, v2}, Lbz;-><init>(Landroid/content/Context;LbF;LIj;LJo;)V

    .line 136
    invoke-virtual {p0}, Lbt;->B()LIq;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, LIq;->g()Ljava/util/Map;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, LIq;->b()Ljava/lang/String;

    move-result-object v3

    .line 143
    sget-object v4, LIr;->d:LIr;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    sget-object v5, LIr;->g:LIr;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    sget-object v6, LIr;->c:LIr;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    invoke-static {p1}, LIe;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v0}, LIq;->d()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v0}, LIq;->e()Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    new-instance v0, LbE;

    iget-object v10, p0, Lbt;->g:Ljava/lang/String;

    iget-object v11, p0, Lbt;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, LbE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lbt;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 162
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 164
    new-instance v2, LJx;

    invoke-static {}, LHA;->g()LHM;

    move-result-object v3

    invoke-direct {v2, v3}, LJx;-><init>(LHM;)V

    invoke-static {v1, v0, v12, v2}, Lbu;->a(Landroid/app/Application;LbE;Lbz;LJI;)Lbu;

    move-result-object v0

    iput-object v0, p0, Lbt;->a:LbA;

    .line 173
    :goto_0
    iget-wide v0, p0, Lbt;->j:J

    invoke-virtual {p0, v0, v1}, Lbt;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, LHA;->g()LHM;

    .line 175
    iget-object v0, p0, Lbt;->a:LbA;

    invoke-virtual {v0}, LbA;->b()V

    .line 176
    iget-object v0, p0, Lbt;->i:LJO;

    iget-object v1, p0, Lbt;->i:LJO;

    invoke-interface {v1}, LJO;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LJO;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 168
    :cond_1
    new-instance v1, LJx;

    invoke-static {}, LHA;->g()LHM;

    move-result-object v2

    invoke-direct {v1, v2}, LJx;-><init>(LHM;)V

    invoke-static {p1, v0, v12, v1}, LbA;->a(Landroid/content/Context;LbE;Lbz;LJI;)LbA;

    move-result-object v0

    iput-object v0, p0, Lbt;->a:LbA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "Crashlytics failed to initialize session analytics."

    invoke-static {p1, v1, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a(LIi;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lbt;->a:LbA;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lbt;->a:LbA;

    invoke-virtual {p1}, LIi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LbA;->a(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    :try_start_0
    new-instance v1, LJP;

    invoke-direct {v1, p0}, LJP;-><init>(LHK;)V

    iput-object v1, p0, Lbt;->i:LJO;

    .line 61
    invoke-virtual {p0}, Lbt;->C()Landroid/content/Context;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 67
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbt;->g:Ljava/lang/String;

    .line 68
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, Lbt;->h:Ljava/lang/String;

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    .line 72
    iget-wide v2, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v2, p0, Lbt;->j:J

    .line 78
    :goto_1
    const/4 v0, 0x1

    .line 82
    :goto_2
    return v0

    .line 68
    :cond_0
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lbt;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_2
.end method

.method a(J)Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lbt;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lbt;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(J)Z
    .locals 5

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 240
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method protected e()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lbt;->C()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lbt;->a(Landroid/content/Context;)V

    .line 92
    :try_start_0
    invoke-static {}, LKg;->a()LKg;

    move-result-object v1

    invoke-virtual {v1}, LKg;->b()LKm;

    move-result-object v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v2, v1, LKm;->d:LKc;

    iget-boolean v2, v2, LKc;->d:Z

    if-eqz v2, :cond_1

    .line 98
    iget-object v0, p0, Lbt;->a:LbA;

    iget-object v1, v1, LKm;->e:LJR;

    invoke-virtual {p0}, Lbt;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LbA;->a(LJR;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "Disabling analytics collection based on settings flag value."

    invoke-static {v0, v1}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lbt;->a:LbA;

    invoke-virtual {v0}, LbA;->a()V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lbt;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, LIe;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Z
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lbt;->i:LJO;

    invoke-interface {v0}, LJO;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method h()Ljava/io/File;
    .locals 1

    .prologue
    .line 244
    new-instance v0, LJN;

    invoke-direct {v0, p0}, LJN;-><init>(LHK;)V

    invoke-virtual {v0}, LJN;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lbt;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
