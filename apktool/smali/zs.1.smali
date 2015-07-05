.class Lzs;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:LyJ;

.field final synthetic d:Lzl;


# direct methods
.method varargs constructor <init>(Lzl;Ljava/lang/String;[Ljava/lang/Object;ILyJ;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lzs;->d:Lzl;

    iput p4, p0, Lzs;->a:I

    iput-object p5, p0, Lzs;->c:LyJ;

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lzs;->d:Lzl;

    invoke-static {v0}, Lzl;->h(Lzl;)Lzf;

    move-result-object v0

    iget v1, p0, Lzs;->a:I

    iget-object v2, p0, Lzs;->c:LyJ;

    invoke-interface {v0, v1, v2}, Lzf;->a(ILyJ;)V

    .line 865
    iget-object v1, p0, Lzs;->d:Lzl;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lzs;->d:Lzl;

    invoke-static {v0}, Lzl;->i(Lzl;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lzs;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 867
    monitor-exit v1

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
