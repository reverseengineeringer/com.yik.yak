.class final Lbh;
.super Lbf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(LbT;)V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lbf;

    invoke-direct {p0, v0, v1}, Lbf;-><init>(I[Lbf;)V

    .line 317
    iget-object v0, p1, LbT;->a:Ljava/lang/String;

    iput-object v0, p0, Lbh;->a:Ljava/lang/String;

    .line 318
    iget-object v0, p1, LbT;->b:Ljava/lang/String;

    iput-object v0, p0, Lbh;->b:Ljava/lang/String;

    .line 319
    iget-wide v0, p1, LbT;->c:J

    iput-wide v0, p0, Lbh;->c:J

    .line 320
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 324
    const/4 v0, 0x1

    iget-object v1, p0, Lbh;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    .line 325
    const/4 v1, 0x2

    iget-object v2, p0, Lbh;->b:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    const/4 v1, 0x3

    iget-wide v2, p0, Lbh;->c:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method public a(Laf;)V
    .locals 4

    .prologue
    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lbh;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    .line 333
    const/4 v0, 0x2

    iget-object v1, p0, Lbh;->b:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    .line 334
    const/4 v0, 0x3

    iget-wide v2, p0, Lbh;->c:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    .line 335
    return-void
.end method
