.class Lzm;
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
    .line 340
    iput-object p1, p0, Lzm;->d:Lzl;

    iput p4, p0, Lzm;->a:I

    iput-object p5, p0, Lzm;->c:LyJ;

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lzm;->d:Lzl;

    iget v1, p0, Lzm;->a:I

    iget-object v2, p0, Lzm;->c:LyJ;

    invoke-virtual {v0, v1, v2}, Lzl;->b(ILyJ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
