.class public LfN;
.super LfW;


# static fields
.field private static a:Z

.field private static l:LfN;


# instance fields
.field private b:Z

.field private c:Lgw;

.field private d:Lgi;

.field private e:Landroid/content/Context;

.field private volatile f:Ljava/lang/Boolean;

.field private g:LfT;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LfO;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-static {}, LgT;->c()LgT;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LfN;-><init>(Landroid/content/Context;Lgw;Lgi;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lgw;Lgi;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, LfW;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LfN;->f:Ljava/lang/Boolean;

    iput-boolean v1, p0, LfN;->k:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LfN;->e:Landroid/content/Context;

    iput-object p2, p0, LfN;->c:Lgw;

    iput-object p3, p0, LfN;->d:Lgi;

    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    invoke-static {v0}, Lgx;->a(Landroid/content/Context;)V

    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    invoke-static {v0}, Lgh;->a(Landroid/content/Context;)V

    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    invoke-static {v0}, LgG;->a(Landroid/content/Context;)V

    new-instance v0, LgN;

    invoke-direct {v0}, LgN;-><init>()V

    iput-object v0, p0, LfN;->g:LfT;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LfN;->j:Ljava/util/Set;

    invoke-direct {p0}, LfN;->g()V

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

.method static a()LfN;
    .locals 2

    const-class v1, LfN;

    monitor-enter v1

    :try_start_0
    sget-object v0, LfN;->l:LfN;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)LfN;
    .locals 2

    const-class v1, LfN;

    monitor-enter v1

    :try_start_0
    sget-object v0, LfN;->l:LfN;

    if-nez v0, :cond_0

    new-instance v0, LfN;

    invoke-direct {v0, p0}, LfN;-><init>(Landroid/content/Context;)V

    sput-object v0, LfN;->l:LfN;

    :cond_0
    sget-object v0, LfN;->l:LfN;

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

    sget-boolean v0, LfN;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, LfN;->e:Landroid/content/Context;

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

    invoke-static {v0}, Lgc;->d(Ljava/lang/String;)V

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

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lhl;

    iget-object v2, p0, LfN;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lhl;->a(I)LgJ;

    move-result-object v0

    check-cast v0, LfY;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LfN;->a(LfY;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, LfN;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfO;

    invoke-interface {v0, p1}, LfO;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, LfN;->k:Z

    if-nez v0, :cond_0

    new-instance v0, LfP;

    invoke-direct {v0, p0}, LfP;-><init>(LfN;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LfN;->k:Z

    :cond_0
    return-void
.end method

.method a(LfO;)V
    .locals 1

    iget-object v0, p0, LfN;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, LfN;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, LfN;->a(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method a(LfY;)V
    .locals 3

    const-string v0, "Loading global config values."

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, LfY;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LfY;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfN;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app name loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LfN;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, LfY;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LfY;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfN;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app version loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LfN;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, LfY;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LfY;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LfN;->a(Ljava/lang/String;)I

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

    invoke-static {v1}, Lgc;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, LfN;->d()LfT;

    move-result-object v1

    invoke-interface {v1, v0}, LfT;->a(I)V

    :cond_2
    invoke-virtual {p1}, LfY;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LfN;->d:Lgi;

    invoke-virtual {p1}, LfY;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lgi;->a(I)V

    :cond_3
    invoke-virtual {p1}, LfY;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LfY;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, LfN;->a(Z)V

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

    invoke-static {v1}, Lgl;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lgh;->a()Lgh;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgl;->a(Ljava/util/Map;Ljava/lang/String;LgO;)V

    const-string v0, "&_u"

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v1

    invoke-virtual {v1}, Lhj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    invoke-virtual {v0}, Lhj;->b()Ljava/lang/String;

    iget-object v0, p0, LfN;->c:Lgw;

    invoke-interface {v0, p1}, Lgw;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v1, Lhk;->ac:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    iput-boolean p1, p0, LfN;->b:Z

    return-void
.end method

.method b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, LfN;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfO;

    invoke-interface {v0, p1}, LfO;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(LfO;)V
    .locals 1

    iget-object v0, p0, LfN;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v1, Lhk;->ad:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    iget-boolean v0, p0, LfN;->b:Z

    return v0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v1, Lhk;->R:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    iget-object v0, p0, LfN;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()LfT;
    .locals 1

    iget-object v0, p0, LfN;->g:LfT;

    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LfN;->d:Lgi;

    invoke-virtual {v0}, Lgi;->a()V

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, LfN;->c:Lgw;

    invoke-interface {v0}, Lgw;->e()V

    return-void
.end method
