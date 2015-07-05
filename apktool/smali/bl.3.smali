.class final Lbl;
.super Lbj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(LbX;)V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lbj;

    invoke-direct {p0, v0, v1}, Lbj;-><init>(I[Lbj;)V

    .line 317
    iget-object v0, p1, LbX;->a:Ljava/lang/String;

    iput-object v0, p0, Lbl;->a:Ljava/lang/String;

    .line 318
    iget-object v0, p1, LbX;->b:Ljava/lang/String;

    iput-object v0, p0, Lbl;->b:Ljava/lang/String;

    .line 319
    iget-wide v0, p1, LbX;->c:J

    iput-wide v0, p0, Lbl;->c:J

    .line 320
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 324
    const/4 v0, 0x1

    iget-object v1, p0, Lbl;->a:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-static {v0, v1}, Laj;->b(ILaf;)I

    move-result v0

    .line 325
    const/4 v1, 0x2

    iget-object v2, p0, Lbl;->b:Ljava/lang/String;

    invoke-static {v2}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-static {v1, v2}, Laj;->b(ILaf;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    const/4 v1, 0x3

    iget-wide v2, p0, Lbl;->c:J

    invoke-static {v1, v2, v3}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method public a(Laj;)V
    .locals 4

    .prologue
    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lbl;->a:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 333
    const/4 v0, 0x2

    iget-object v1, p0, Lbl;->b:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 334
    const/4 v0, 0x3

    iget-wide v2, p0, Lbl;->c:J

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 335
    return-void
.end method
