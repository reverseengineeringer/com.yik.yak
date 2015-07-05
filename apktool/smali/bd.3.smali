.class final Lbd;
.super Lbj;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LbU;)V
    .locals 2

    .prologue
    .line 351
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lbj;

    invoke-direct {p0, v0, v1}, Lbj;-><init>(I[Lbj;)V

    .line 352
    iget-wide v0, p1, LbU;->a:J

    iput-wide v0, p0, Lbd;->a:J

    .line 353
    iget-wide v0, p1, LbU;->b:J

    iput-wide v0, p0, Lbd;->b:J

    .line 354
    iget-object v0, p1, LbU;->c:Ljava/lang/String;

    iput-object v0, p0, Lbd;->c:Ljava/lang/String;

    .line 355
    iget-object v0, p1, LbU;->d:Ljava/lang/String;

    iput-object v0, p0, Lbd;->d:Ljava/lang/String;

    .line 356
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 360
    const/4 v0, 0x1

    iget-wide v2, p0, Lbd;->a:J

    invoke-static {v0, v2, v3}, Laj;->b(IJ)I

    move-result v0

    .line 361
    const/4 v1, 0x2

    iget-wide v2, p0, Lbd;->b:J

    invoke-static {v1, v2, v3}, Laj;->b(IJ)I

    move-result v1

    .line 362
    const/4 v2, 0x3

    iget-object v3, p0, Lbd;->c:Ljava/lang/String;

    invoke-static {v3}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v3

    invoke-static {v2, v3}, Laj;->b(ILaf;)I

    move-result v2

    .line 364
    const/4 v3, 0x4

    iget-object v4, p0, Lbd;->d:Ljava/lang/String;

    invoke-static {v4}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v4

    invoke-static {v3, v4}, Laj;->b(ILaf;)I

    move-result v3

    .line 367
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public a(Laj;)V
    .locals 4

    .prologue
    .line 372
    const/4 v0, 0x1

    iget-wide v2, p0, Lbd;->a:J

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 373
    const/4 v0, 0x2

    iget-wide v2, p0, Lbd;->b:J

    invoke-virtual {p1, v0, v2, v3}, Laj;->a(IJ)V

    .line 374
    const/4 v0, 0x3

    iget-object v1, p0, Lbd;->c:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 375
    const/4 v0, 0x4

    iget-object v1, p0, Lbd;->d:Ljava/lang/String;

    invoke-static {v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laj;->a(ILaf;)V

    .line 376
    return-void
.end method
