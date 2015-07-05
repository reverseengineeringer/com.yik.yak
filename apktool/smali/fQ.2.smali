.class public LfQ;
.super LfZ;


# static fields
.field private static a:Z

.field private static l:LfQ;


# instance fields
.field private b:Z

.field private c:Lgz;

.field private d:Lgl;

.field private e:Landroid/content/Context;

.field private volatile f:Ljava/lang/Boolean;

.field private g:LfW;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LfR;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lhh;->a(Landroid/content/Context;)Lhh;

    move-result-object v0

    invoke-static {}, LgW;->c()LgW;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LfQ;-><init>(Landroid/content/Context;Lgz;Lgl;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lgz;Lgl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, LfZ;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LfQ;->f:Ljava/lang/Boolean;

    iput-boolean v1, p0, LfQ;->k:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LfQ;->e:Landroid/content/Context;

    iput-object p2, p0, LfQ;->c:Lgz;

    iput-object p3, p0, LfQ;->d:Lgl;

    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    invoke-static {v0}, LgA;->a(Landroid/content/Context;)V

    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    invoke-static {v0}, Lgk;->a(Landroid/content/Context;)V

    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    invoke-static {v0}, LgJ;->a(Landroid/content/Context;)V

    new-instance v0, LgQ;

    invoke-direct {v0}, LgQ;-><init>()V

    iput-object v0, p0, LfQ;->g:LfW;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LfQ;->j:Ljava/util/Set;

    invoke-direct {p0}, LfQ;->g()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a()LfQ;
    .locals 2

    const-class v1, LfQ;

    monitor-enter v1

    :try_start_0
    sget-object v0, LfQ;->l:LfQ;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)LfQ;
    .locals 2

    const-class v1, LfQ;

    monitor-enter v1

    :try_start_0
    sget-object v0, LfQ;->l:LfQ;

    if-nez v0, :cond_0

    new-instance v0, LfQ;

    invoke-direct {v0, p0}, LfQ;-><init>(Landroid/content/Context;)V

    sput-object v0, LfQ;->l:LfQ;

    :cond_0
    sget-object v0, LfQ;->l:LfQ;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 4

    sget-boolean v0, LfQ;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, LfQ;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."

    invoke-static {v0}, Lgf;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager doesn\'t know about package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lho;

    iget-object v2, p0, LfQ;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lho;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lho;->a(I)LgM;

    move-result-object v0

    check-cast v0, Lgb;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LfQ;->a(Lgb;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, LfQ;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfR;

    invoke-interface {v0, p1}, LfR;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, LfQ;->k:Z

    if-nez v0, :cond_0

    new-instance v0, LfS;

    invoke-direct {v0, p0}, LfS;-><init>(LfQ;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LfQ;->k:Z

    :cond_0
    return-void
.end method

.method a(LfR;)V
    .locals 1

    iget-object v0, p0, LfQ;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, LfQ;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, LfQ;->a(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method a(Lgb;)V
    .locals 3

    const-string v0, "Loading global config values."

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lgb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfQ;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app name loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LfQ;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgb;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfQ;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app version loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LfQ;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgf;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lgb;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lgb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LfQ;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log level loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgf;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, LfQ;->d()LfW;

    move-result-object v1

    invoke-interface {v1, v0}, LfW;->a(I)V

    :cond_2
    invoke-virtual {p1}, Lgb;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LfQ;->d:Lgl;

    invoke-virtual {p1}, Lgb;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lgl;->a(I)V

    :cond_3
    invoke-virtual {p1}, Lgb;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgb;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, LfQ;->a(Z)V

    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 2
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

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lgo;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgo;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lgk;->a()Lgk;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgo;->a(Ljava/util/Map;Ljava/lang/String;LgR;)V

    const-string v0, "&_u"

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v1

    invoke-virtual {v1}, Lhm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v0

    invoke-virtual {v0}, Lhm;->b()Ljava/lang/String;

    iget-object v0, p0, LfQ;->c:Lgz;

    invoke-interface {v0, p1}, Lgz;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v0

    sget-object v1, Lhn;->ac:Lhn;

    invoke-virtual {v0, v1}, Lhm;->a(Lhn;)V

    iput-boolean p1, p0, LfQ;->b:Z

    return-void
.end method

.method b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, LfQ;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfR;

    invoke-interface {v0, p1}, LfR;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(LfR;)V
    .locals 1

    iget-object v0, p0, LfQ;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v0

    sget-object v1, Lhn;->ad:Lhn;

    invoke-virtual {v0, v1}, Lhm;->a(Lhn;)V

    iget-boolean v0, p0, LfQ;->b:Z

    return v0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v0

    sget-object v1, Lhn;->R:Lhn;

    invoke-virtual {v0, v1}, Lhm;->a(Lhn;)V

    iget-object v0, p0, LfQ;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()LfW;
    .locals 1

    iget-object v0, p0, LfQ;->g:LfW;

    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LfQ;->d:Lgl;

    invoke-virtual {v0}, Lgl;->a()V

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, LfQ;->c:Lgz;

    invoke-interface {v0}, Lgz;->e()V

    return-void
.end method
