.class public LcG;
.super LbW;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, LbW;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 37
    invoke-virtual {p0}, LcG;->c()Lvm;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lvj;

    const-string v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v4, v5}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "pivotX"

    new-array v5, v6, [F

    aput v0, v5, v7

    aput v0, v5, v8

    invoke-static {p1, v4, v5}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x3

    const-string v4, "pivotY"

    new-array v5, v6, [F

    aput v1, v5, v7

    aput v1, v5, v8

    invoke-static {p1, v4, v5}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lvm;->a([Lvj;)V

    .line 43
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
