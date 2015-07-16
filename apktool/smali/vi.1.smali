.class public Lvi;
.super Ljava/lang/Object;


# static fields
.field private static volatile e:Lvi;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lvi;->e:Lvi;

    return-void
.end method

.method public static declared-synchronized a()Lvi;
    .locals 2

    const-class v0, Lvi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvi;->e:Lvi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
