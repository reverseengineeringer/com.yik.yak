.class Lzz;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lzz;->d:Lzv;

    iput p4, p0, Lzz;->a:I

    iput-object p5, p0, Lzz;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lzz;->d:Lzv;

    invoke-static {v0}, Lzv;->h(Lzv;)Lzp;

    move-result-object v0

    iget v1, p0, Lzz;->a:I

    iget-object v2, p0, Lzz;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lzp;->a(ILjava/util/List;)Z

    move-result v0

    .line 805
    if-eqz v0, :cond_0

    .line 806
    :try_start_0
    iget-object v0, p0, Lzz;->d:Lzv;

    iget-object v0, v0, Lzv;->i:LyW;

    iget v1, p0, Lzz;->a:I

    sget-object v2, LyT;->l:LyT;

    invoke-interface {v0, v1, v2}, LyW;->a(ILyT;)V

    .line 807
    iget-object v1, p0, Lzz;->d:Lzv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :try_start_1
    iget-object v0, p0, Lzz;->d:Lzv;

    invoke-static {v0}, Lzv;->i(Lzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lzz;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 809
    monitor-exit v1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 809
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
