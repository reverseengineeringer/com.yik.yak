.class Lzv;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzx;

.field final synthetic c:Lzu;


# direct methods
.method varargs constructor <init>(Lzu;Ljava/lang/String;[Ljava/lang/Object;Lzx;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lzv;->c:Lzu;

    iput-object p4, p0, Lzv;->a:Lzx;

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, Lzv;->c:Lzu;

    iget-object v0, v0, Lzu;->c:Lzl;

    invoke-static {v0}, Lzl;->f(Lzl;)LyZ;

    move-result-object v0

    iget-object v1, p0, Lzv;->a:Lzx;

    invoke-interface {v0, v1}, LyZ;->a(Lzx;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
