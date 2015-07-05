.class public Lco;
.super Lca;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 38
    invoke-virtual {p0}, Lco;->c()Lvd;

    move-result-object v2

    new-array v3, v10, [Lva;

    const-string v4, "rotation"

    new-array v5, v11, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "pivotX"

    new-array v5, v11, [F

    aput v0, v5, v7

    aput v0, v5, v8

    aput v0, v5, v9

    aput v0, v5, v10

    const/4 v6, 0x4

    aput v0, v5, v6

    invoke-static {p1, v4, v5}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "pivotY"

    new-array v4, v11, [F

    aput v1, v4, v7

    aput v1, v4, v8

    aput v1, v4, v9

    aput v1, v4, v10

    const/4 v5, 0x4

    aput v1, v4, v5

    invoke-static {p1, v0, v4}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v2, v3}, Lvd;->a([Lva;)V

    .line 43
    return-void

    .line 38
    :array_0
    .array-data 4
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data
.end method
