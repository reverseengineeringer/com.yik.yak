.class Lzx;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lzx;->d:Lzv;

    iput p4, p0, Lzx;->a:I

    iput-wide p5, p0, Lzx;->c:J

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lzx;->d:Lzv;

    iget-object v0, v0, Lzv;->i:LyW;

    iget v1, p0, Lzx;->a:I

    iget-wide v2, p0, Lzx;->c:J

    invoke-interface {v0, v1, v2, v3}, LyW;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
