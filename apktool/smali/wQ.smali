.class final LwQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym;


# instance fields
.field final synthetic a:LwO;

.field private final b:LxS;

.field private c:LKS;

.field private d:Z

.field private e:LKS;


# direct methods
.method public constructor <init>(LwO;LxS;)V
    .locals 2

    .prologue
    .line 383
    iput-object p1, p0, LwQ;->a:LwO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, LwQ;->b:LxS;

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LxS;->a(I)LKS;

    move-result-object v0

    iput-object v0, p0, LwQ;->c:LKS;

    .line 386
    new-instance v0, LwR;

    iget-object v1, p0, LwQ;->c:LKS;

    invoke-direct {v0, p0, v1, p1, p2}, LwR;-><init>(LwQ;LKS;LwO;LxS;)V

    iput-object v0, p0, LwQ;->e:LKS;

    .line 399
    return-void
.end method

.method static synthetic a(LwQ;)Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, LwQ;->d:Z

    return v0
.end method

.method static synthetic a(LwQ;Z)Z
    .locals 0

    .prologue
    .line 377
    iput-boolean p1, p0, LwQ;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, LwQ;->a:LwO;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-boolean v0, p0, LwQ;->d:Z

    if-eqz v0, :cond_0

    .line 404
    monitor-exit v1

    .line 414
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LwQ;->d:Z

    .line 407
    iget-object v0, p0, LwQ;->a:LwO;

    invoke-static {v0}, LwO;->c(LwO;)I

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v0, p0, LwQ;->c:LKS;

    invoke-static {v0}, Lyi;->a(Ljava/io/Closeable;)V

    .line 411
    :try_start_1
    iget-object v0, p0, LwQ;->b:LxS;

    invoke-virtual {v0}, LxS;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()LKS;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, LwQ;->e:LKS;

    return-object v0
.end method
