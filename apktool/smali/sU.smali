.class LsU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LsX;


# instance fields
.field final synthetic a:LsK;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(LsK;)V
    .locals 1

    .prologue
    .line 1945
    iput-object p1, p0, LsU;->a:LsK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LsU;->b:Ljava/util/Set;

    .line 1975
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LsU;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(LsK;LsL;)V
    .locals 0

    .prologue
    .line 1945
    invoke-direct {p0, p1}, LsU;-><init>(LsK;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, LsU;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1949
    return-void
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 1969
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LsU;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1972
    :cond_0
    monitor-exit p0

    return-void
.end method
