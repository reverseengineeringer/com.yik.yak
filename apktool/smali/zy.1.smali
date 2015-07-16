.class Lzy;
.super LxY;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lzo;

.field final synthetic f:Lzv;


# direct methods
.method varargs constructor <init>(Lzv;Ljava/lang/String;[Ljava/lang/Object;ZIILzo;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lzy;->f:Lzv;

    iput-boolean p4, p0, Lzy;->a:Z

    iput p5, p0, Lzy;->c:I

    iput p6, p0, Lzy;->d:I

    iput-object p7, p0, Lzy;->e:Lzo;

    invoke-direct {p0, p2, p3}, LxY;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lzy;->f:Lzv;

    iget-boolean v1, p0, Lzy;->a:Z

    iget v2, p0, Lzy;->c:I

    iget v3, p0, Lzy;->d:I

    iget-object v4, p0, Lzy;->e:Lzo;

    invoke-static {v0, v1, v2, v3, v4}, Lzv;->a(Lzv;ZIILzo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
