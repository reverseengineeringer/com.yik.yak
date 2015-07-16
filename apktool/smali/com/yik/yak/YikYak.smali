.class public Lcom/yik/yak/YikYak;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "TrulyRandom"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Lcom/yik/yak/YikYak;

.field private static f:I

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-string v0, ""

    sput-object v0, Lcom/yik/yak/YikYak;->a:Ljava/lang/String;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/yik/yak/YikYak;->b:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lcom/yik/yak/YikYak;->c:Ljava/lang/String;

    .line 128
    const-string v0, ""

    sput-object v0, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    sput v0, Lcom/yik/yak/YikYak;->f:I

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/yik/yak/YikYak;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/yik/yak/YikYak;
    .locals 2

    .prologue
    .line 135
    const-class v0, Lcom/yik/yak/YikYak;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yik/yak/YikYak;->e:Lcom/yik/yak/YikYak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 143
    sput p0, Lcom/yik/yak/YikYak;->f:I

    .line 144
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()LN;

    .line 154
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/parse/Parse;->setLogLevel(I)V

    .line 155
    const-string v0, "setParseChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LHl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LAb;

    invoke-direct {v1}, LAb;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/yik/yak/YikYak;->f:I

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/yik/yak/YikYak;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yik/yak/YikYak;->f:I

    .line 148
    sget v0, Lcom/yik/yak/YikYak;->f:I

    return v0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/yik/yak/YikYak;->e:Lcom/yik/yak/YikYak;

    invoke-virtual {v0}, Lcom/yik/yak/YikYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    sget-object v0, Lcom/yik/yak/YikYak;->g:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yik/yak/YikYak;->e:Lcom/yik/yak/YikYak;

    invoke-virtual {v1}, Lcom/yik/yak/YikYak;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/yik/yak/YikYak;->e:Lcom/yik/yak/YikYak;

    invoke-virtual {v2}, Lcom/yik/yak/YikYak;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yik/yak/YikYak;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Lcom/yik/yak/YikYak;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [LHK;

    const/4 v1, 0x0

    new-instance v2, Lah;

    invoke-direct {v2}, Lah;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, LHA;->a(Landroid/content/Context;[LHK;)LHA;

    .line 203
    const-string v0, "biz.bokhorst.xprivacy"

    invoke-static {p0, v0}, LHh;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 204
    const-string v1, "has_xprivacy"

    invoke-static {v1, v0}, Lah;->a(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 190
    sput-object p0, Lcom/yik/yak/YikYak;->e:Lcom/yik/yak/YikYak;

    .line 191
    invoke-direct {p0}, Lcom/yik/yak/YikYak;->f()V

    .line 192
    invoke-static {p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->init(Landroid/content/Context;)V

    .line 193
    invoke-static {}, LAS;->a()LAS;

    .line 194
    new-instance v0, LAN;

    invoke-direct {v0}, LAN;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yik/yak/YikYak;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 195
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 196
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 197
    invoke-static {}, LAJ;->a()LAJ;

    invoke-static {}, LAJ;->c()V

    .line 198
    sget-object v0, Lcom/yik/yak/YikYak;->b:Ljava/lang/String;

    sget-object v1, Lcom/yik/yak/YikYak;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
