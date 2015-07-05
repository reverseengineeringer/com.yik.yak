.class final Lbf;
.super Lbj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lbj;

    invoke-direct {p0, v0, v1}, Lbj;-><init>(I[Lbj;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 189
    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laj;->b(IF)I

    move-result v0

    add-int/2addr v0, v2

    .line 191
    const/4 v1, 0x2

    invoke-static {v1, v2}, Laj;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    const/4 v1, 0x3

    invoke-static {v1, v2}, Laj;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    const/4 v1, 0x4

    invoke-static {v1, v2}, Laj;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Laj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    return v0
.end method

.method public a(Laj;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 201
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Laj;->a(IF)V

    .line 202
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Laj;->a(II)V

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Laj;->a(IZ)V

    .line 204
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Laj;->b(II)V

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4, v5}, Laj;->a(IJ)V

    .line 206
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v4, v5}, Laj;->a(IJ)V

    .line 207
    return-void
.end method
