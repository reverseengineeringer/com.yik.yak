.class final LG;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field private static final c:LG;

.field private static final e:I


# instance fields
.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, LG;

    invoke-direct {v0}, LG;-><init>()V

    sput-object v0, LG;->c:LG;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, LG;->e:I

    .line 59
    sget v0, LG;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LG;->a:I

    .line 60
    sget v0, LG;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, LG;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, LI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI;-><init>(LH;)V

    iput-object v0, p0, LG;->d:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, LG;->a:I

    sget v3, LG;->b:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 80
    const/4 v0, 0x1

    invoke-static {v1, v0}, LG;->a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 82
    return-object v1
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 129
    sget-object v0, LG;->c:LG;

    iget-object v0, v0, LG;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
