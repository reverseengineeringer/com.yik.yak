.class public Lck;
.super Lca;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lck;->c()Lvd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lva;

    const/4 v2, 0x0

    const-string v3, "translationX"

    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lvq;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvq;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lvd;->a([Lva;)V

    .line 39
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41700000    # 15.0f
        -0x3e900000    # -15.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x0
    .end array-data
.end method
