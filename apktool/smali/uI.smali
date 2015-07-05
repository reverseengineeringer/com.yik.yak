.class public LuI;
.super LuB;
.source "SourceFile"


# instance fields
.field private final a:LtO;

.field private final b:LtO;


# direct methods
.method public constructor <init>(Ljava/util/List;LtO;LtO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lul;",
            ">;",
            "LtO;",
            "LtO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, LuB;-><init>(Ljava/util/List;)V

    .line 40
    iput-object p2, p0, LuI;->a:LtO;

    .line 41
    iput-object p3, p0, LuI;->b:LtO;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, LuI;->b:LtO;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, LuI;->a:LtO;

    invoke-virtual {v0}, LtO;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    array-length v2, v0

    if-ne v1, v2, :cond_2

    .line 54
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 55
    iget-object v1, p0, LuI;->b:LtO;

    invoke-virtual {v1, p1}, LtO;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz v0, :cond_2

    .line 62
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 63
    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    check-cast v1, Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :cond_2
    iget-object v0, p0, LuI;->a:LtO;

    invoke-virtual {v0, p1}, LtO;->a(Landroid/view/View;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, LuB;->b(Landroid/view/View;)V

    return-void
.end method
