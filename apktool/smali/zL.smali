.class LzL;
.super LKs;
.source "SourceFile"


# instance fields
.field final synthetic a:LzH;


# direct methods
.method constructor <init>(LzH;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, LzL;->a:LzH;

    invoke-direct {p0}, LKs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, LzL;->a:LzH;

    sget-object v1, LyT;->l:LyT;

    invoke-virtual {v0, v1}, LzH;->b(LyT;)V

    .line 570
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, LzL;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    return-void
.end method
