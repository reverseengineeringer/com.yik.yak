.class public Lcc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lca;

.field private b:J

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvb;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(Lce;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lce;->a(Lce;)Lca;

    move-result-object v0

    iput-object v0, p0, Lcc;->a:Lca;

    .line 50
    invoke-static {p1}, Lce;->b(Lce;)J

    move-result-wide v0

    iput-wide v0, p0, Lcc;->b:J

    .line 51
    invoke-static {p1}, Lce;->c(Lce;)J

    move-result-wide v0

    iput-wide v0, p0, Lcc;->c:J

    .line 52
    invoke-static {p1}, Lce;->d(Lce;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcc;->d:Landroid/view/animation/Interpolator;

    .line 53
    invoke-static {p1}, Lce;->e(Lce;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc;->e:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lce;->f(Lce;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcc;->f:Landroid/view/View;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lce;Lcd;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcc;-><init>(Lce;)V

    return-void
.end method

.method private a()Lca;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcc;->a:Lca;

    iget-wide v2, p0, Lcc;->b:J

    invoke-virtual {v0, v2, v3}, Lca;->a(J)Lca;

    move-result-object v0

    iget-object v1, p0, Lcc;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lca;->a(Landroid/view/animation/Interpolator;)Lca;

    move-result-object v0

    iget-wide v2, p0, Lcc;->c:J

    invoke-virtual {v0, v2, v3}, Lca;->b(J)Lca;

    .line 146
    iget-object v0, p0, Lcc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;

    .line 148
    iget-object v2, p0, Lcc;->a:Lca;

    invoke-virtual {v2, v0}, Lca;->a(Lvb;)Lca;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcc;->a:Lca;

    iget-object v1, p0, Lcc;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lca;->b(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcc;->a:Lca;

    return-object v0
.end method

.method static synthetic a(Lcc;)Lca;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcc;->a()Lca;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcb;)Lce;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lce;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce;-><init>(Lcb;Lcd;)V

    return-object v0
.end method
