.class Lzm;
.super LKF;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzl;


# direct methods
.method constructor <init>(Lzl;LKT;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lzm;->a:Lzl;

    invoke-direct {p0, p2}, LKF;-><init>(LKT;)V

    return-void
.end method


# virtual methods
.method public a(LKx;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    iget-object v2, p0, Lzm;->a:Lzl;

    invoke-static {v2}, Lzl;->a(Lzl;)I

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget-object v2, p0, Lzm;->a:Lzl;

    invoke-static {v2}, Lzl;->a(Lzl;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, LKF;->a(LKx;J)J

    move-result-wide v2

    .line 58
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 59
    iget-object v0, p0, Lzm;->a:Lzl;

    iget-object v1, p0, Lzm;->a:Lzl;

    invoke-static {v1}, Lzl;->a(Lzl;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    invoke-static {v0, v1}, Lzl;->a(Lzl;I)I

    move-wide v0, v2

    .line 60
    goto :goto_0
.end method
