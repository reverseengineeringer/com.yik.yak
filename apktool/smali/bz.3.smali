.class Lbz;
.super LJf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJf",
        "<",
        "LbC;",
        ">;"
    }
.end annotation


# instance fields
.field private g:LJR;


# direct methods
.method constructor <init>(Landroid/content/Context;LbF;LIj;LJo;)V
    .locals 6

    .prologue
    .line 32
    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LJf;-><init>(Landroid/content/Context;LJe;LIj;LJo;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbz;->c:LIj;

    invoke-interface {v1}, LIj;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(LJR;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lbz;->g:LJR;

    .line 65
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbz;->g:LJR;

    if-nez v0, :cond_0

    invoke-super {p0}, LJf;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbz;->g:LJR;

    iget v0, v0, LJR;->e:I

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbz;->g:LJR;

    if-nez v0, :cond_0

    invoke-super {p0}, LJf;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbz;->g:LJR;

    iget v0, v0, LJR;->c:I

    goto :goto_0
.end method
