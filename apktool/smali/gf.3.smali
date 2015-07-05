.class public Lgf;
.super Ljava/lang/Object;


# static fields
.field private static a:LfQ;

.field private static volatile b:Z

.field private static c:LfW;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lgf;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfW;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v1

    invoke-interface {v1}, LfW;->a()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static b()LfW;
    .locals 2

    const-class v1, Lgf;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lgf;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lgf;->c:LfW;

    if-nez v0, :cond_0

    new-instance v0, LgQ;

    invoke-direct {v0}, LgQ;-><init>()V

    sput-object v0, Lgf;->c:LfW;

    :cond_0
    sget-object v0, Lgf;->c:LfW;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lgf;->a:LfQ;

    if-nez v0, :cond_2

    invoke-static {}, LfQ;->a()LfQ;

    move-result-object v0

    sput-object v0, Lgf;->a:LfQ;

    :cond_2
    sget-object v0, Lgf;->a:LfQ;

    if-eqz v0, :cond_3

    sget-object v0, Lgf;->a:LfQ;

    invoke-virtual {v0}, LfQ;->d()LfW;

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

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfW;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfW;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lgf;->b()LfW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LfW;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
