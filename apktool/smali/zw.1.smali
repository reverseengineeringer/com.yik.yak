.class Lzw;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzh;

.field final synthetic c:Lzu;


# direct methods
.method varargs constructor <init>(Lzu;Ljava/lang/String;[Ljava/lang/Object;Lzh;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lzw;->c:Lzu;

    iput-object p4, p0, Lzw;->a:Lzh;

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lzw;->c:Lzu;

    iget-object v0, v0, Lzu;->c:Lzl;

    iget-object v0, v0, Lzl;->i:LyM;

    iget-object v1, p0, Lzw;->a:Lzh;

    invoke-interface {v0, v1}, LyM;->a(Lzh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
