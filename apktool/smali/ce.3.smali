.class public final Lce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lca;

.field private c:J

.field private d:J

.field private e:Landroid/view/animation/Interpolator;

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcb;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lce;->a:Ljava/util/List;

    .line 70
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lce;->c:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lce;->d:J

    .line 76
    invoke-virtual {p1}, Lcb;->a()Lca;

    move-result-object v0

    iput-object v0, p0, Lce;->b:Lca;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcb;Lcd;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lce;-><init>(Lcb;)V

    return-void
.end method

.method static synthetic a(Lce;)Lca;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lce;->b:Lca;

    return-object v0
.end method

.method static synthetic b(Lce;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lce;->c:J

    return-wide v0
.end method

.method static synthetic c(Lce;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lce;->d:J

    return-wide v0
.end method

.method static synthetic d(Lce;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lce;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic e(Lce;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lce;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lce;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lce;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(J)Lce;
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lce;->c:J

    .line 85
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcf;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lce;->f:Landroid/view/View;

    .line 106
    new-instance v0, Lcf;

    new-instance v1, Lcc;

    invoke-direct {v1, p0, v3}, Lcc;-><init>(Lce;Lcd;)V

    invoke-static {v1}, Lcc;->a(Lcc;)Lca;

    move-result-object v1

    iget-object v2, p0, Lce;->f:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcf;-><init>(Lca;Landroid/view/View;Lcd;)V

    return-object v0
.end method
