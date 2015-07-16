.class public LcZ;
.super LbW;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, LbW;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, LcZ;->c()Lvm;

    move-result-object v1

    new-array v2, v6, [Lvj;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Ldp;->e:Ldp;

    invoke-virtual {p0}, LcZ;->b()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "translationY"

    new-array v6, v6, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v6, v7

    const/4 v0, 0x0

    aput v0, v6, v8

    invoke-static {p1, v5, v6}, Lvz;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lvz;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ldo;->a(Ldp;FLvT;)LvT;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Lvm;->a([Lvj;)V

    .line 18
    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
