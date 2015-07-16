.class LzF;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:LzH;

.field final synthetic c:LzE;


# direct methods
.method varargs constructor <init>(LzE;Ljava/lang/String;[Ljava/lang/Object;LzH;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, LzF;->c:LzE;

    iput-object p4, p0, LzF;->a:LzH;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, LzF;->c:LzE;

    iget-object v0, v0, LzE;->c:Lzv;

    invoke-static {v0}, Lzv;->f(Lzv;)Lzj;

    move-result-object v0

    iget-object v1, p0, LzF;->a:LzH;

    invoke-interface {v0, v1}, Lzj;->a(LzH;)V
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
