.class public Lcr;
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
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcr;->c()Lvd;

    move-result-object v0

    new-array v1, v7, [Lva;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "translationY"

    new-array v3, v4, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/high16 v4, 0x41f00000    # 30.0f

    aput v4, v3, v6

    const/high16 v4, -0x3ee00000    # -10.0f

    aput v4, v3, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lvd;->a([Lva;)V

    .line 39
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method