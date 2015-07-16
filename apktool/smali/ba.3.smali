.class final Lba;
.super Lbf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LbR;)V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Lbf;

    invoke-direct {p0, v0, v1}, Lbf;-><init>(I[Lbf;)V

    .line 391
    iget-object v0, p1, LbR;->a:Ljava/lang/String;

    iput-object v0, p0, Lba;->a:Ljava/lang/String;

    .line 392
    iget-object v0, p1, LbR;->b:Ljava/lang/String;

    iput-object v0, p0, Lba;->b:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x1

    iget-object v1, p0, Lba;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v1

    .line 398
    const/4 v2, 0x2

    iget-object v0, p0, Lba;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-static {v2, v0}, Laf;->b(ILab;)I

    move-result v0

    add-int/2addr v0, v1

    .line 400
    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lba;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Laf;)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Lba;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    .line 406
    const/4 v1, 0x2

    iget-object v0, p0, Lba;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Laf;->a(ILab;)V

    .line 407
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lba;->b:Ljava/lang/String;

    goto :goto_0
.end method
