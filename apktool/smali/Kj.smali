.class final LKj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:LKj;


# instance fields
.field b:J

.field private c:LKi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, LKj;

    invoke-direct {v0}, LKj;-><init>()V

    sput-object v0, LKj;->a:LKj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method a()LKi;
    .locals 6

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, LKj;->c:LKi;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, LKj;->c:LKi;

    .line 42
    iget-object v1, v0, LKi;->d:LKi;

    iput-object v1, p0, LKj;->c:LKi;

    .line 43
    const/4 v1, 0x0

    iput-object v1, v0, LKi;->d:LKi;

    .line 44
    iget-wide v2, p0, LKj;->b:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    iput-wide v2, p0, LKj;->b:J

    .line 45
    monitor-exit p0

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, LKi;

    invoke-direct {v0}, LKi;-><init>()V

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(LKi;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x800

    .line 52
    iget-object v0, p1, LKi;->d:LKi;

    if-nez v0, :cond_0

    iget-object v0, p1, LKi;->e:LKi;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_1
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, LKj;->b:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    monitor-exit p0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_2
    iget-wide v0, p0, LKj;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, LKj;->b:J

    .line 56
    iget-object v0, p0, LKj;->c:LKi;

    iput-object v0, p1, LKi;->d:LKi;

    .line 57
    const/4 v0, 0x0

    iput v0, p1, LKi;->c:I

    iput v0, p1, LKi;->b:I

    .line 58
    iput-object p1, p0, LKj;->c:LKi;

    .line 59
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
