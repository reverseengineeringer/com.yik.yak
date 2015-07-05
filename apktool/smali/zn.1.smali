.class Lzn;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lzl;


# direct methods
.method varargs constructor <init>(Lzl;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lzn;->d:Lzl;

    iput p4, p0, Lzn;->a:I

    iput-wide p5, p0, Lzn;->c:J

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lzn;->d:Lzl;

    iget-object v0, v0, Lzl;->i:LyM;

    iget v1, p0, Lzn;->a:I

    iget-wide v2, p0, Lzn;->c:J

    invoke-interface {v0, v1, v2, v3}, LyM;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
