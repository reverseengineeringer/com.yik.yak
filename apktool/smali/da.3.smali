.class public Lda;
.super Lca;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 39
    invoke-virtual {p0}, Lda;->c()Lvd;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lva;

    sget-object v4, Ldt;->z:Ldt;

    const v5, 0x44a28000    # 1300.0f

    const-string v6, "rotation"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lds;->a(Ldt;FLvK;)LvK;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "translationY"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "pivotX"

    new-array v5, v8, [F

    aput v0, v5, v9

    aput v0, v5, v10

    aput v0, v5, v11

    aput v0, v5, v12

    const/4 v6, 0x4

    aput v0, v5, v6

    const/4 v6, 0x5

    aput v0, v5, v6

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v0

    aput-object v0, v3, v12

    const/4 v0, 0x4

    const-string v4, "pivotY"

    new-array v5, v8, [F

    aput v1, v5, v9

    aput v1, v5, v10

    aput v1, v5, v11

    aput v1, v5, v12

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v1, v5, v6

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lvd;->a([Lva;)V

    .line 47
    const-wide/16 v0, 0x514

    invoke-virtual {p0, v0, v1}, Lda;->a(J)Lca;

    .line 48
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x42a00000    # 80.0f
        0x42700000    # 60.0f
        0x42a00000    # 80.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x442f0000    # 700.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
