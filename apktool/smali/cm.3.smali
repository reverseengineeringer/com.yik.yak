.class public Lcm;
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
    .locals 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcm;->c()Lvd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lva;

    const/4 v2, 0x0

    const-string v3, "rotation"

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lvd;->a([Lva;)V

    .line 38
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        -0x3ee00000    # -10.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data
.end method
