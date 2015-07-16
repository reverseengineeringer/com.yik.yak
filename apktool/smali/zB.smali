.class LzB;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:LKx;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILKx;IZ)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, LzB;->f:Lzv;

    iput p4, p0, LzB;->a:I

    iput-object p5, p0, LzB;->c:LKx;

    iput p6, p0, LzB;->d:I

    iput-boolean p7, p0, LzB;->e:Z

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 848
    :try_start_0
    iget-object v0, p0, LzB;->f:Lzv;

    invoke-static {v0}, Lzv;->h(Lzv;)Lzp;

    move-result-object v0

    iget v1, p0, LzB;->a:I

    iget-object v2, p0, LzB;->c:LKx;

    iget v3, p0, LzB;->d:I

    iget-boolean v4, p0, LzB;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lzp;->a(ILKB;IZ)Z

    move-result v0

    .line 849
    if-eqz v0, :cond_0

    iget-object v1, p0, LzB;->f:Lzv;

    iget-object v1, v1, Lzv;->i:LyW;

    iget v2, p0, LzB;->a:I

    sget-object v3, LyT;->l:LyT;

    invoke-interface {v1, v2, v3}, LyW;->a(ILyT;)V

    .line 850
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, LzB;->e:Z

    if-eqz v0, :cond_2

    .line 851
    :cond_1
    iget-object v1, p0, LzB;->f:Lzv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :try_start_1
    iget-object v0, p0, LzB;->f:Lzv;

    invoke-static {v0}, Lzv;->i(Lzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, LzB;->a:I

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
