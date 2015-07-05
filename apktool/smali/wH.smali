.class final LwH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc;


# instance fields
.field final synthetic a:LwF;

.field private final b:LxI;

.field private c:LKk;

.field private d:Z

.field private e:LKk;


# direct methods
.method public constructor <init>(LwF;LxI;)V
    .locals 2

    .prologue
    .line 383
    iput-object p1, p0, LwH;->a:LwF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, LwH;->b:LxI;

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LxI;->a(I)LKk;

    move-result-object v0

    iput-object v0, p0, LwH;->c:LKk;

    .line 386
    new-instance v0, LwI;

    iget-object v1, p0, LwH;->c:LKk;

    invoke-direct {v0, p0, v1, p1, p2}, LwI;-><init>(LwH;LKk;LwF;LxI;)V

    iput-object v0, p0, LwH;->e:LKk;

    .line 399
    return-void
.end method

.method static synthetic a(LwH;)Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, LwH;->d:Z

    return v0
.end method

.method static synthetic a(LwH;Z)Z
    .locals 0

    .prologue
    .line 377
    iput-boolean p1, p0, LwH;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, LwH;->a:LwF;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-boolean v0, p0, LwH;->d:Z

    if-eqz v0, :cond_0

    .line 404
    monitor-exit v1

    .line 414
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LwH;->d:Z

    .line 407
    iget-object v0, p0, LwH;->a:LwF;

    invoke-static {v0}, LwF;->c(LwF;)I

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v0, p0, LwH;->c:LKk;

    invoke-static {v0}, LxY;->a(Ljava/io/Closeable;)V

    .line 411
    :try_start_1
    iget-object v0, p0, LwH;->b:LxI;

    invoke-virtual {v0}, LxI;->b()V
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

.method public b()LKk;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, LwH;->e:LKk;

    return-object v0
.end method
