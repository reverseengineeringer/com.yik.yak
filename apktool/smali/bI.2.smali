.class public LbI;
.super LHK;
.source "SourceFile"

# interfaces
.implements LIl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHK",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "LIl;"
    }
.end annotation


# instance fields
.field private final a:LHP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHP",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:LbO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, LHK;-><init>()V

    .line 37
    new-instance v0, LHP;

    invoke-direct {v0}, LHP;-><init>()V

    iput-object v0, p0, LbI;->a:LHP;

    .line 38
    new-instance v0, LbO;

    invoke-direct {v0}, LbO;-><init>()V

    iput-object v0, p0, LbI;->g:LbO;

    return-void
.end method

.method private a(Landroid/content/Context;)LbJ;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "crashlytics-build.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    invoke-static {v1}, LbJ;->a(Ljava/io/InputStream;)LbJ;

    move-result-object v0

    .line 173
    invoke-static {}, LHA;->g()LHM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LbJ;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " build properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, LbJ;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, LbJ;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, LbJ;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :cond_0
    if-eqz v1, :cond_1

    .line 182
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :cond_1
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-static {}, LHA;->g()LHM;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    if-eqz v1, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 184
    :catch_2
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    .line 182
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 185
    :cond_2
    :goto_3
    throw v0

    .line 184
    :catch_3
    move-exception v1

    invoke-static {}, LHA;->g()LHM;

    goto :goto_3

    .line 180
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 178
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, LbI;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, LHA;->g()LHM;

    .line 141
    :try_start_0
    iget-object v0, p0, LbI;->a:LHP;

    iget-object v2, p0, LbI;->g:LbO;

    invoke-virtual {v0, p1, v2}, LHP;->a(Landroid/content/Context;LHR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 150
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;LIq;LJV;LbJ;)V
    .locals 9

    .prologue
    .line 104
    new-instance v0, LbK;

    new-instance v6, LJP;

    const-class v1, LbI;

    invoke-static {v1}, LHA;->a(Ljava/lang/Class;)LHK;

    move-result-object v1

    invoke-direct {v6, v1}, LJP;-><init>(LHK;)V

    new-instance v7, LIA;

    invoke-direct {v7}, LIA;-><init>()V

    new-instance v8, LJx;

    invoke-static {}, LHA;->g()LHM;

    move-result-object v1

    invoke-direct {v8, v1}, LJx;-><init>(LHM;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, LbK;-><init>(Landroid/content/Context;LbI;LIq;LJV;LbJ;LJO;LIj;LJI;)V

    invoke-virtual {v0}, LbK;->a()V

    .line 114
    return-void
.end method

.method private g()LJV;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, LKg;->a()LKg;

    move-result-object v0

    invoke-virtual {v0}, LKg;->b()LKm;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v0, v0, LKm;->f:LJV;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(LJV;LbJ;)Z
    .locals 1

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, LJV;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 118
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, LHA;->g()LHM;

    .line 51
    invoke-virtual {p0}, LbI;->C()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, LbI;->B()LIq;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, LIq;->h()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-direct {p0, v0, v2}, LbI;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, LHA;->g()LHM;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, LHA;->g()LHM;

    .line 63
    invoke-direct {p0}, LbI;->g()LJV;

    move-result-object v2

    .line 64
    invoke-direct {p0, v0}, LbI;->a(Landroid/content/Context;)LbJ;

    move-result-object v3

    .line 66
    invoke-virtual {p0, v2, v3}, LbI;->a(LJV;LbJ;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, LbI;->a(Landroid/content/Context;LIq;LJV;LbJ;)V

    .line 70
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "LIr;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, LbI;->B()LIq;

    move-result-object v0

    invoke-virtual {v0}, LIq;->h()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, LbI;->C()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LbI;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    sget-object v2, LIr;->c:LIr;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v1
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, LbI;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, LIe;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, LbI;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
