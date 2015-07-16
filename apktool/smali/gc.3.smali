.class public Lgc;
.super Ljava/lang/Object;


# static fields
.field private static a:LfN;

.field private static volatile b:Z

.field private static c:LfT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lgc;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfT;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v1

    invoke-interface {v1}, LfT;->a()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static b()LfT;
    .locals 2

    const-class v1, Lgc;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lgc;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lgc;->c:LfT;

    if-nez v0, :cond_0

    new-instance v0, LgN;

    invoke-direct {v0}, LgN;-><init>()V

    sput-object v0, Lgc;->c:LfT;

    :cond_0
    sget-object v0, Lgc;->c:LfT;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lgc;->a:LfN;

    if-nez v0, :cond_2

    invoke-static {}, LfN;->a()LfN;

    move-result-object v0

    sput-object v0, Lgc;->a:LfN;

    :cond_2
    sget-object v0, Lgc;->a:LfN;

    if-eqz v0, :cond_3

    sget-object v0, Lgc;->a:LfN;

    invoke-virtual {v0}, LfN;->d()LfT;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfT;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfT;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgc;->b()LfT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfT;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
