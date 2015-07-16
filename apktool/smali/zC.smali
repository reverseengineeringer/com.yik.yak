.class LzC;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:LyT;

.field final synthetic d:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ILyT;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, LzC;->d:Lzv;

    iput p4, p0, LzC;->a:I

    iput-object p5, p0, LzC;->c:LyT;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, LzC;->d:Lzv;

    invoke-static {v0}, Lzv;->h(Lzv;)Lzp;

    move-result-object v0

    iget v1, p0, LzC;->a:I

    iget-object v2, p0, LzC;->c:LyT;

    invoke-interface {v0, v1, v2}, Lzp;->a(ILyT;)V

    .line 865
    iget-object v1, p0, LzC;->d:Lzv;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, LzC;->d:Lzv;

    invoke-static {v0}, Lzv;->i(Lzv;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, LzC;->a:I

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
