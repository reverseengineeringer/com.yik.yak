.class public Ldc;
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
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 35
    invoke-virtual {p0}, Ldc;->c()Lvm;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lvj;

    const/4 v2, 0x0

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lvm;->a([Lvj;)V

    .line 40
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
