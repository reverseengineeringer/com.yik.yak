.class Lzr;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:LJP;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lzl;


# direct methods
.method varargs constructor <init>(Lzl;Ljava/lang/String;[Ljava/lang/Object;ILJP;IZ)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lzr;->f:Lzl;

    iput p4, p0, Lzr;->a:I

    iput-object p5, p0, Lzr;->c:LJP;

    iput p6, p0, Lzr;->d:I

    iput-boolean p7, p0, Lzr;->e:Z

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 848
    :try_start_0
    iget-object v0, p0, Lzr;->f:Lzl;

    invoke-static {v0}, Lzl;->h(Lzl;)Lzf;

    move-result-object v0

    iget v1, p0, Lzr;->a:I

    iget-object v2, p0, Lzr;->c:LJP;

    iget v3, p0, Lzr;->d:I

    iget-boolean v4, p0, Lzr;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lzf;->a(ILJT;IZ)Z

    move-result v0

    .line 849
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzr;->f:Lzl;

    iget-object v1, v1, Lzl;->i:LyM;

    iget v2, p0, Lzr;->a:I

    sget-object v3, LyJ;->l:LyJ;

    invoke-interface {v1, v2, v3}, LyM;->a(ILyJ;)V

    .line 850
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lzr;->e:Z

    if-eqz v0, :cond_2

    .line 851
    :cond_1
    iget-object v1, p0, Lzr;->f:Lzl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :try_start_1
    iget-object v0, p0, Lzr;->f:Lzl;

    invoke-static {v0}, Lzl;->i(Lzl;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lzr;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v1

    .line 857
    :cond_2
    :goto_0
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
