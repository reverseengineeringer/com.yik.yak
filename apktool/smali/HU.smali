.class LHU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LJO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LHU;->a:Landroid/content/Context;

    .line 20
    new-instance v0, LJP;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, LJP;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, LHU;->b:LJO;

    .line 21
    return-void
.end method

.method static synthetic a(LHU;)LHT;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, LHU;->e()LHT;

    move-result-object v0

    return-object v0
.end method

.method private a(LHT;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LHV;

    invoke-direct {v1, p0, p1}, LHV;-><init>(LHU;LHT;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method static synthetic a(LHU;LHT;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, LHU;->b(LHT;)V

    return-void
.end method

.method private b(LHT;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, LHU;->c(LHT;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, LHU;->b:LJO;

    iget-object v1, p0, LHU;->b:LJO;

    invoke-interface {v1}, LJO;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, LHT;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, LHT;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LJO;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, LHU;->b:LJO;

    iget-object v1, p0, LHU;->b:LJO;

    invoke-interface {v1}, LJO;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LJO;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method

.method private c(LHT;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, LHT;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()LHT;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, LHU;->c()LIb;

    move-result-object v0

    .line 101
    invoke-interface {v0}, LIb;->a()LHT;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, LHU;->c(LHT;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p0}, LHU;->d()LIb;

    move-result-object v0

    .line 105
    invoke-interface {v0}, LIb;->a()LHT;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, LHU;->c(LHT;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {}, LHA;->g()LHM;

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, LHA;->g()LHM;

    goto :goto_0
.end method


# virtual methods
.method public a()LHT;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, LHU;->b()LHT;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, LHU;->c(LHT;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, LHA;->g()LHM;

    .line 36
    invoke-direct {p0, v0}, LHU;->a(LHT;)V

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-direct {p0}, LHU;->e()LHT;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, LHU;->b(LHT;)V

    goto :goto_0
.end method

.method protected b()LHT;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, LHU;->b:LJO;

    invoke-interface {v0}, LJO;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, LHU;->b:LJO;

    invoke-interface {v1}, LJO;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    new-instance v2, LHT;

    invoke-direct {v2, v0, v1}, LHT;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public c()LIb;
    .locals 2

    .prologue
    .line 86
    new-instance v0, LHW;

    iget-object v1, p0, LHU;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, LHW;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()LIb;
    .locals 2

    .prologue
    .line 90
    new-instance v0, LHX;

    iget-object v1, p0, LHU;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, LHX;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
