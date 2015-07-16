.class public Lfn;
.super LfE;
.source "SourceFile"


# static fields
.field private static g:Lfn;


# instance fields
.field private a:Z

.field private b:LeG;

.field private c:Landroid/content/Context;

.field private volatile d:Ljava/lang/Boolean;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lfr;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lfg;->a(Landroid/content/Context;)Lfg;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfn;-><init>(Landroid/content/Context;LeG;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;LeG;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, LfE;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfn;->d:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfn;->e:Ljava/util/Map;

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfn;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lfn;->b:LeG;

    .line 58
    iget-object v0, p0, Lfn;->c:Landroid/content/Context;

    invoke-static {v0}, LeH;->a(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lfn;->c:Landroid/content/Context;

    invoke-static {v0}, Lfz;->a(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lfn;->c:Landroid/content/Context;

    invoke-static {v0}, LeI;->a(Landroid/content/Context;)V

    .line 62
    new-instance v0, LeL;

    invoke-direct {v0}, LeL;-><init>()V

    iput-object v0, p0, Lfn;->f:Lfr;

    .line 63
    return-void
.end method

.method static a()Lfn;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lfn;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lfn;->g:Lfn;

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lfn;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lfn;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lfn;->g:Lfn;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lfn;

    invoke-direct {v0, p0}, Lfn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfn;->g:Lfn;

    .line 75
    :cond_0
    sget-object v0, Lfn;->g:Lfn;

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    if-nez p1, :cond_0

    .line 238
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 241
    :cond_0
    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, LfF;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LfF;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "&sr"

    invoke-static {}, Lfz;->a()Lfz;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lfz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LfF;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "&_u"

    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v1

    invoke-virtual {v1}, Lfl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    invoke-virtual {v0}, Lfl;->b()Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lfn;->b:LeG;

    invoke-interface {v0, p1}, LeG;->a(Ljava/util/Map;)V

    .line 248
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    sget-object v1, Lfm;->ac:Lfm;

    invoke-virtual {v0, v1}, Lfl;->a(Lfm;)V

    .line 136
    iput-boolean p1, p0, Lfn;->a:Z

    .line 137
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    sget-object v1, Lfm;->Q:Lfm;

    invoke-virtual {v0, v1}, Lfl;->a(Lfm;)V

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfn;->d:Ljava/lang/Boolean;

    .line 265
    iget-object v0, p0, Lfn;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lfn;->b:LeG;

    invoke-interface {v0}, LeG;->b()V

    .line 268
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    sget-object v1, Lfm;->ad:Lfm;

    invoke-virtual {v0, v1}, Lfl;->a(Lfm;)V

    .line 144
    iget-boolean v0, p0, Lfn;->a:Z

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    sget-object v1, Lfm;->R:Lfm;

    invoke-virtual {v0, v1}, Lfl;->a(Lfm;)V

    .line 275
    iget-object v0, p0, Lfn;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Lfr;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lfn;->f:Lfr;

    return-object v0
.end method
