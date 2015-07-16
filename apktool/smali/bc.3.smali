.class final Lbc;
.super Lbf;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;LaY;Lbb;)V
    .locals 3

    .prologue
    .line 155
    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Lbf;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v0, v1}, Lbf;-><init>(I[Lbf;)V

    .line 156
    iput-wide p1, p0, Lbc;->a:J

    .line 157
    iput-object p3, p0, Lbc;->b:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 162
    const/4 v0, 0x1

    iget-wide v2, p0, Lbc;->a:J

    invoke-static {v0, v2, v3}, Laf;->b(IJ)I

    move-result v0

    .line 163
    const/4 v1, 0x2

    iget-object v2, p0, Lbc;->b:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    .line 165
    add-int/2addr v0, v1

    return v0
.end method

.method public a(Laf;)V
    .locals 4

    .prologue
    .line 170
    const/4 v0, 0x1

    iget-wide v2, p0, Lbc;->a:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    .line 171
    const/4 v0, 0x2

    iget-object v1, p0, Lbc;->b:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    .line 172
    return-void
.end method
