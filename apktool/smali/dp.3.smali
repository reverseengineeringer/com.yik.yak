.class public Ldp;
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
.method protected a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 35
    invoke-virtual {p0}, Ldp;->c()Lvd;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lva;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "scaleX"

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "scaleY"

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "translationY"

    new-array v3, v5, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    const/high16 v4, 0x42700000    # 60.0f

    aput v4, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v8

    invoke-static {p1, v2, v3}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lvd;->a([Lva;)V

    .line 41
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ef33333    # 0.475f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ef33333    # 0.475f
        0x3dcccccd    # 0.1f
    .end array-data
.end method
