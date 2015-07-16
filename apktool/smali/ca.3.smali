.class public final Lca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvk;",
            ">;"
        }
    .end annotation
.end field

.field private b:LbW;

.field private c:J

.field private d:J

.field private e:Landroid/view/animation/Interpolator;

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(LbX;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca;->a:Ljava/util/List;

    .line 70
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lca;->c:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lca;->d:J

    .line 76
    invoke-virtual {p1}, LbX;->a()LbW;

    move-result-object v0

    iput-object v0, p0, Lca;->b:LbW;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(LbX;LbZ;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lca;-><init>(LbX;)V

    return-void
.end method

.method static synthetic a(Lca;)LbW;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lca;->b:LbW;

    return-object v0
.end method

.method static synthetic b(Lca;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lca;->c:J

    return-wide v0
.end method

.method static synthetic c(Lca;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lca;->d:J

    return-wide v0
.end method

.method static synthetic d(Lca;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lca;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic e(Lca;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lca;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lca;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lca;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(J)Lca;
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lca;->c:J

    .line 85
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcb;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lca;->f:Landroid/view/View;

    .line 106
    new-instance v0, Lcb;

    new-instance v1, LbY;

    invoke-direct {v1, p0, v3}, LbY;-><init>(Lca;LbZ;)V

    invoke-static {v1}, LbY;->a(LbY;)LbW;

    move-result-object v1

    iget-object v2, p0, Lca;->f:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcb;-><init>(LbW;Landroid/view/View;LbZ;)V

    return-object v0
.end method
