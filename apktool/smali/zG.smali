.class LzG;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzr;

.field final synthetic c:LzE;


# direct methods
.method varargs constructor <init>(LzE;Ljava/lang/String;[Ljava/lang/Object;Lzr;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, LzG;->c:LzE;

    iput-object p4, p0, LzG;->a:Lzr;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, LzG;->c:LzE;

    iget-object v0, v0, LzE;->c:Lzv;

    iget-object v0, v0, Lzv;->i:LyW;

    iget-object v1, p0, LzG;->a:Lzr;

    invoke-interface {v0, v1}, LyW;->a(Lzr;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
