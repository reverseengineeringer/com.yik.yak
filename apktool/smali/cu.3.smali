.class public Lcu;
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
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 35
    invoke-virtual {p0}, Lcu;->c()Lvm;

    move-result-object v0

    new-array v1, v4, [Lvj;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "translationX"

    new-array v3, v4, [F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p1, v2, v3}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lvm;->a([Lvj;)V

    .line 39
    return-void

    .line 35
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
