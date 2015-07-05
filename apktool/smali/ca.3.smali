.class public abstract Lca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lvd;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lca;->b:J

    .line 42
    new-instance v0, Lvd;

    invoke-direct {v0}, Lvd;-><init>()V

    iput-object v0, p0, Lca;->a:Lvd;

    .line 43
    return-void
.end method


# virtual methods
.method public a(J)Lca;
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lca;->b:J

    .line 82
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lca;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lca;->a:Lvd;

    invoke-virtual {v0, p1}, Lvd;->a(Landroid/view/animation/Interpolator;)V

    .line 121
    return-object p0
.end method

.method public a(Lvb;)Lca;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lca;->a:Lvd;

    invoke-virtual {v0, p1}, Lvd;->a(Lvb;)V

    .line 96
    return-object p0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lca;->a:Lvd;

    iget-wide v2, p0, Lca;->b:J

    invoke-virtual {v0, v2, v3}, Lvd;->c(J)Lvd;

    .line 77
    iget-object v0, p0, Lca;->a:Lvd;

    invoke-virtual {v0}, Lvd;->a()V

    .line 78
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public b()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lca;->b:J

    return-wide v0
.end method

.method public b(J)Lca;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lca;->c()Lvd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvd;->b(J)V

    .line 87
    return-object p0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lca;->c(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0, p1}, Lca;->a(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lca;->a()V

    .line 52
    return-void
.end method

.method public c()Lvd;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lca;->a:Lvd;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v1}, LvU;->a(Landroid/view/View;F)V

    .line 61
    invoke-static {p1, v1}, LvU;->g(Landroid/view/View;F)V

    .line 62
    invoke-static {p1, v1}, LvU;->h(Landroid/view/View;F)V

    .line 63
    invoke-static {p1, v0}, LvU;->i(Landroid/view/View;F)V

    .line 64
    invoke-static {p1, v0}, LvU;->j(Landroid/view/View;F)V

    .line 65
    invoke-static {p1, v0}, LvU;->d(Landroid/view/View;F)V

    .line 66
    invoke-static {p1, v0}, LvU;->f(Landroid/view/View;F)V

    .line 67
    invoke-static {p1, v0}, LvU;->e(Landroid/view/View;F)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, LvU;->b(Landroid/view/View;F)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, LvU;->c(Landroid/view/View;F)V

    .line 70
    return-void
.end method
