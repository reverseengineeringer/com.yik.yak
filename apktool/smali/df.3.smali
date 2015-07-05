.class public Ldf;
.super Lca;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lca;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 13
    invoke-virtual {p0}, Ldf;->c()Lvd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lva;

    const/4 v2, 0x0

    sget-object v3, Ldt;->v:Ldt;

    invoke-virtual {p0}, Ldf;->b()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lds;->a(Ldt;FLvK;)LvK;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ldt;->v:Ldt;

    invoke-virtual {p0}, Ldf;->b()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {p1, v5, v6}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lds;->a(Ldt;FLvK;)LvK;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Ldt;->v:Ldt;

    invoke-virtual {p0}, Ldf;->b()J

    move-result-wide v4

    long-to-float v3, v4

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lds;->a(Ldt;FLvK;)LvK;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lvd;->a([Lva;)V

    .line 18
    return-void

    .line 13
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
