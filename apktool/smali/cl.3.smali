.class public Lcl;
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
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 36
    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 37
    invoke-virtual {p0}, Lcl;->c()Lvm;

    move-result-object v1

    new-array v2, v6, [Lvj;

    const-string v3, "translationX"

    const/16 v4, 0x8

    new-array v4, v4, [F

    mul-float v5, v7, v0

    aput v5, v4, v8

    const/high16 v5, -0x3e380000    # -25.0f

    mul-float/2addr v5, v0

    aput v5, v4, v9

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, v0

    aput v5, v4, v6

    const/4 v5, 0x3

    const/high16 v6, -0x3e900000    # -15.0f

    mul-float/2addr v6, v0

    aput v6, v4, v5

    const/4 v5, 0x4

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, v0

    aput v6, v4, v5

    const/4 v5, 0x5

    const/high16 v6, -0x3f600000    # -5.0f

    mul-float/2addr v6, v0

    aput v6, v4, v5

    const/4 v5, 0x6

    mul-float/2addr v0, v7

    aput v0, v4, v5

    aput v7, v4, v10

    invoke-static {p1, v3, v4}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v0

    aput-object v0, v2, v8

    const-string v0, "rotation"

    new-array v3, v10, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v0, v3}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {v1, v2}, Lvm;->a([Lvj;)V

    .line 41
    return-void

    .line 37
    :array_0
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method
