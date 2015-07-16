.class LzA;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, LzA;->e:Lzv;

    iput p4, p0, LzA;->a:I

    iput-object p5, p0, LzA;->c:Ljava/util/List;

    iput-boolean p6, p0, LzA;->d:Z

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 821
    iget-object v0, p0, LzA;->e:Lzv;

    invoke-static {v0}, Lzv;->h(Lzv;)Lzp;

    move-result-object v0

    iget v1, p0, LzA;->a:I

    iget-object v2, p0, LzA;->c:Ljava/util/List;

    iget-boolean v3, p0, LzA;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lzp;->a(ILjava/util/List;Z)Z

    move-result v0

    .line 823
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LzA;->e:Lzv;

    iget-object v1, v1, Lzv;->i:LyW;

    iget v2, p0, LzA;->a:I

    sget-object v3, LyT;->l:LyT;

    invoke-interface {v1, v2, v3}, LyW;->a(ILyT;)V

    .line 824
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, LzA;->d:Z

    if-eqz v0, :cond_2

    .line 825
    :cond_1
    iget-object v1, p0, LzA;->e:Lzv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :try_start_1
    iget-object v0, p0, LzA;->e:Lzv;

    invoke-static {v0}, Lzv;->i(Lzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, LzA;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v1

    .line 831
    :cond_2
    :goto_0
    return-void

    .line 827
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
