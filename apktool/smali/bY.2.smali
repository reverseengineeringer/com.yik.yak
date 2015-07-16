.class public LbY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LbW;

.field private b:J

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvk;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(Lca;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lca;->a(Lca;)LbW;

    move-result-object v0

    iput-object v0, p0, LbY;->a:LbW;

    .line 50
    invoke-static {p1}, Lca;->b(Lca;)J

    move-result-wide v0

    iput-wide v0, p0, LbY;->b:J

    .line 51
    invoke-static {p1}, Lca;->c(Lca;)J

    move-result-wide v0

    iput-wide v0, p0, LbY;->c:J

    .line 52
    invoke-static {p1}, Lca;->d(Lca;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, LbY;->d:Landroid/view/animation/Interpolator;

    .line 53
    invoke-static {p1}, Lca;->e(Lca;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LbY;->e:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lca;->f(Lca;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LbY;->f:Landroid/view/View;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lca;LbZ;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, LbY;-><init>(Lca;)V

    return-void
.end method

.method private a()LbW;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, LbY;->a:LbW;

    iget-wide v2, p0, LbY;->b:J

    invoke-virtual {v0, v2, v3}, LbW;->a(J)LbW;

    move-result-object v0

    iget-object v1, p0, LbY;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, LbW;->a(Landroid/view/animation/Interpolator;)LbW;

    move-result-object v0

    iget-wide v2, p0, LbY;->c:J

    invoke-virtual {v0, v2, v3}, LbW;->b(J)LbW;

    .line 146
    iget-object v0, p0, LbY;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, LbY;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvk;

    .line 148
    iget-object v2, p0, LbY;->a:LbW;

    invoke-virtual {v2, v0}, LbW;->a(Lvk;)LbW;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, LbY;->a:LbW;

    iget-object v1, p0, LbY;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, LbW;->b(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, LbY;->a:LbW;

    return-object v0
.end method

.method static synthetic a(LbY;)LbW;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, LbY;->a()LbW;

    move-result-object v0

    return-object v0
.end method

.method public static a(LbX;)Lca;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lca;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lca;-><init>(LbX;LbZ;)V

    return-object v0
.end method
