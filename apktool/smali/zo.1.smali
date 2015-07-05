.class Lzo;
.super LxO;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lze;

.field final synthetic f:Lzl;


# direct methods
.method varargs constructor <init>(Lzl;Ljava/lang/String;[Ljava/lang/Object;ZIILze;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lzo;->f:Lzl;

    iput-boolean p4, p0, Lzo;->a:Z

    iput p5, p0, Lzo;->c:I

    iput p6, p0, Lzo;->d:I

    iput-object p7, p0, Lzo;->e:Lze;

    invoke-direct {p0, p2, p3}, LxO;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lzo;->f:Lzl;

    iget-boolean v1, p0, Lzo;->a:Z

    iget v2, p0, Lzo;->c:I

    iget v3, p0, Lzo;->d:I

    iget-object v4, p0, Lzo;->e:Lze;

    invoke-static {v0, v1, v2, v3, v4}, Lzl;->a(Lzl;ZIILze;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
