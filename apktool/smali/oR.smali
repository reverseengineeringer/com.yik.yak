.class LoR;
.super LoQ;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static k:LoR;


# instance fields
.field private b:Lom;

.field private volatile c:Lol;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lon;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LoR;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, LoQ;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, LoR;->d:I

    iput-boolean v1, p0, LoR;->e:Z

    iput-boolean v2, p0, LoR;->f:Z

    iput-boolean v1, p0, LoR;->g:Z

    iput-boolean v1, p0, LoR;->h:Z

    new-instance v0, LoS;

    invoke-direct {v0, p0}, LoS;-><init>(LoR;)V

    iput-object v0, p0, LoR;->i:Lon;

    iput-boolean v2, p0, LoR;->j:Z

    return-void
.end method

.method static synthetic a(LoR;)Lom;
    .locals 1

    iget-object v0, p0, LoR;->b:Lom;

    return-object v0
.end method

.method public static b()LoR;
    .locals 1

    sget-object v0, LoR;->k:LoR;

    if-nez v0, :cond_0

    new-instance v0, LoR;

    invoke-direct {v0}, LoR;-><init>()V

    sput-object v0, LoR;->k:LoR;

    :cond_0
    sget-object v0, LoR;->k:LoR;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LoR;->f:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lop;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LoR;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LoR;->c:Lol;

    new-instance v0, LoT;

    invoke-direct {v0, p0}, LoT;-><init>(LoR;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
