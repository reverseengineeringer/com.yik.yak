.class Lzw;
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
    .line 340
    iput-object p1, p0, Lzw;->d:Lzv;

    iput p4, p0, Lzw;->a:I

    iput-object p5, p0, Lzw;->c:LyT;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lzw;->d:Lzv;

    iget v1, p0, Lzw;->a:I

    iget-object v2, p0, Lzw;->c:LyT;

    invoke-virtual {v0, v1, v2}, Lzv;->b(ILyT;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
