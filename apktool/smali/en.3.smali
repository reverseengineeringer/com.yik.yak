.class public final Len;
.super Lqk;
.source "SourceFile"

# interfaces
.implements Leo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqk",
        "<",
        "Lel;",
        "Len;",
        ">;",
        "Leo;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4591
    invoke-direct {p0}, Lqk;-><init>()V

    .line 4827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->b:Ljava/util/List;

    .line 4893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 4959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 5025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 5157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 5223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 5289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->i:Ljava/util/List;

    .line 5355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->j:Ljava/util/List;

    .line 5421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->k:Ljava/util/List;

    .line 4592
    return-void
.end method

.method static synthetic i()Len;
    .locals 1

    .prologue
    .line 4584
    invoke-static {}, Len;->k()Len;

    move-result-object v0

    return-object v0
.end method

.method private static k()Len;
    .locals 1

    .prologue
    .line 4598
    new-instance v0, Len;

    invoke-direct {v0}, Len;-><init>()V

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 4829
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4830
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->b:Ljava/util/List;

    .line 4831
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Len;->a:I

    .line 4833
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 4895
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4896
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 4897
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Len;->a:I

    .line 4899
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 4961
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4962
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 4963
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Len;->a:I

    .line 4965
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 5027
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 5028
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 5029
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Len;->a:I

    .line 5031
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 5093
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 5094
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 5095
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Len;->a:I

    .line 5097
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 5159
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 5161
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Len;->a:I

    .line 5163
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 5225
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 5226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 5227
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Len;->a:I

    .line 5229
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 5291
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 5292
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->i:Ljava/util/List;

    .line 5293
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Len;->a:I

    .line 5295
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 5357
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 5358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->j:Ljava/util/List;

    .line 5359
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Len;->a:I

    .line 5361
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 5423
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 5424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->k:Ljava/util/List;

    .line 5425
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Len;->a:I

    .line 5427
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Len;
    .locals 2

    .prologue
    .line 4627
    invoke-static {}, Len;->k()Len;

    move-result-object v0

    invoke-virtual {p0}, Len;->d()Lel;

    move-result-object v1

    invoke-virtual {v0, v1}, Len;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method public a(Lel;)Len;
    .locals 2

    .prologue
    .line 4699
    invoke-static {}, Lel;->a()Lel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4801
    :goto_0
    return-object p0

    .line 4700
    :cond_0
    invoke-static {p1}, Lel;->b(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4701
    iget-object v0, p0, Len;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4702
    invoke-static {p1}, Lel;->b(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->b:Ljava/util/List;

    .line 4703
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Len;->a:I

    .line 4710
    :cond_1
    :goto_1
    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4711
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4712
    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 4713
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Len;->a:I

    .line 4720
    :cond_2
    :goto_2
    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4721
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4722
    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 4723
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Len;->a:I

    .line 4730
    :cond_3
    :goto_3
    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4731
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4732
    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 4733
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Len;->a:I

    .line 4740
    :cond_4
    :goto_4
    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4741
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4742
    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 4743
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Len;->a:I

    .line 4750
    :cond_5
    :goto_5
    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4751
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4752
    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 4753
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Len;->a:I

    .line 4760
    :cond_6
    :goto_6
    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4761
    iget-object v0, p0, Len;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4762
    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 4763
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Len;->a:I

    .line 4770
    :cond_7
    :goto_7
    invoke-static {p1}, Lel;->i(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4771
    iget-object v0, p0, Len;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4772
    invoke-static {p1}, Lel;->i(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->i:Ljava/util/List;

    .line 4773
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Len;->a:I

    .line 4780
    :cond_8
    :goto_8
    invoke-static {p1}, Lel;->j(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4781
    iget-object v0, p0, Len;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4782
    invoke-static {p1}, Lel;->j(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->j:Ljava/util/List;

    .line 4783
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Len;->a:I

    .line 4790
    :cond_9
    :goto_9
    invoke-static {p1}, Lel;->k(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4791
    iget-object v0, p0, Len;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4792
    invoke-static {p1}, Lel;->k(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->k:Ljava/util/List;

    .line 4793
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Len;->a:I

    .line 4800
    :cond_a
    :goto_a
    invoke-virtual {p0}, Len;->r()LpW;

    move-result-object v0

    invoke-static {p1}, Lel;->l(Lel;)LpW;

    move-result-object v1

    invoke-virtual {v0, v1}, LpW;->a(LpW;)LpW;

    move-result-object v0

    invoke-virtual {p0, v0}, Len;->a(LpW;)Lqk;

    goto/16 :goto_0

    .line 4705
    :cond_b
    invoke-direct {p0}, Len;->l()V

    .line 4706
    iget-object v0, p0, Len;->b:Ljava/util/List;

    invoke-static {p1}, Lel;->b(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4715
    :cond_c
    invoke-direct {p0}, Len;->m()V

    .line 4716
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 4725
    :cond_d
    invoke-direct {p0}, Len;->n()V

    .line 4726
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 4735
    :cond_e
    invoke-direct {p0}, Len;->o()V

    .line 4736
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 4745
    :cond_f
    invoke-direct {p0}, Len;->q()V

    .line 4746
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 4755
    :cond_10
    invoke-direct {p0}, Len;->s()V

    .line 4756
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 4765
    :cond_11
    invoke-direct {p0}, Len;->t()V

    .line 4766
    iget-object v0, p0, Len;->h:Ljava/util/List;

    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 4775
    :cond_12
    invoke-direct {p0}, Len;->u()V

    .line 4776
    iget-object v0, p0, Len;->i:Ljava/util/List;

    invoke-static {p1}, Lel;->i(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 4785
    :cond_13
    invoke-direct {p0}, Len;->v()V

    .line 4786
    iget-object v0, p0, Len;->j:Ljava/util/List;

    invoke-static {p1}, Lel;->j(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 4795
    :cond_14
    invoke-direct {p0}, Len;->w()V

    .line 4796
    iget-object v0, p0, Len;->k:Ljava/util/List;

    invoke-static {p1}, Lel;->k(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a
.end method

.method public a(LpZ;Lqd;)Len;
    .locals 4

    .prologue
    .line 4812
    const/4 v2, 0x0

    .line 4814
    :try_start_0
    sget-object v0, Lel;->a:LqF;

    invoke-interface {v0, p1, p2}, LqF;->b(LpZ;Lqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lel;
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4819
    if-eqz v0, :cond_0

    .line 4820
    invoke-virtual {p0, v0}, Len;->a(Lel;)Len;

    .line 4823
    :cond_0
    return-object p0

    .line 4815
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 4816
    :try_start_1
    invoke-virtual {v1}, Lqu;->a()LqB;

    move-result-object v0

    check-cast v0, Lel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4817
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4819
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4820
    invoke-virtual {p0, v1}, Len;->a(Lel;)Len;

    :cond_1
    throw v0

    .line 4819
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lqi;)Lqk;
    .locals 1

    .prologue
    .line 4584
    check-cast p1, Lel;

    invoke-virtual {p0, p1}, Len;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method public b()Lel;
    .locals 1

    .prologue
    .line 4631
    invoke-static {}, Lel;->a()Lel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(LpZ;Lqd;)LpQ;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0, p1, p2}, Len;->a(LpZ;Lqd;)Len;

    move-result-object v0

    return-object v0
.end method

.method public c()Lel;
    .locals 2

    .prologue
    .line 4635
    invoke-virtual {p0}, Len;->d()Lel;

    move-result-object v0

    .line 4636
    invoke-virtual {v0}, Lel;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4637
    invoke-static {v0}, Len;->a(LqB;)LqU;

    move-result-object v0

    throw v0

    .line 4639
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpZ;Lqd;)LqC;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0, p1, p2}, Len;->a(LpZ;Lqd;)Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public d()Lel;
    .locals 3

    .prologue
    .line 4643
    new-instance v0, Lel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lel;-><init>(Lqk;LdS;)V

    .line 4644
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4646
    iget-object v1, p0, Len;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->b:Ljava/util/List;

    .line 4647
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Len;->a:I

    .line 4649
    :cond_0
    iget-object v1, p0, Len;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->a(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4650
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4651
    iget-object v1, p0, Len;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->c:Ljava/util/List;

    .line 4652
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Len;->a:I

    .line 4654
    :cond_1
    iget-object v1, p0, Len;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->b(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4655
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 4656
    iget-object v1, p0, Len;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->d:Ljava/util/List;

    .line 4657
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Len;->a:I

    .line 4659
    :cond_2
    iget-object v1, p0, Len;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->c(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4660
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 4661
    iget-object v1, p0, Len;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->e:Ljava/util/List;

    .line 4662
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Len;->a:I

    .line 4664
    :cond_3
    iget-object v1, p0, Len;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->d(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4665
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4666
    iget-object v1, p0, Len;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->f:Ljava/util/List;

    .line 4667
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Len;->a:I

    .line 4669
    :cond_4
    iget-object v1, p0, Len;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->e(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4670
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 4671
    iget-object v1, p0, Len;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->g:Ljava/util/List;

    .line 4672
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Len;->a:I

    .line 4674
    :cond_5
    iget-object v1, p0, Len;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->f(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4675
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 4676
    iget-object v1, p0, Len;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->h:Ljava/util/List;

    .line 4677
    iget v1, p0, Len;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Len;->a:I

    .line 4679
    :cond_6
    iget-object v1, p0, Len;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->g(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4680
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 4681
    iget-object v1, p0, Len;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->i:Ljava/util/List;

    .line 4682
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Len;->a:I

    .line 4684
    :cond_7
    iget-object v1, p0, Len;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->h(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4685
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 4686
    iget-object v1, p0, Len;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->j:Ljava/util/List;

    .line 4687
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Len;->a:I

    .line 4689
    :cond_8
    iget-object v1, p0, Len;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->i(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4690
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 4691
    iget-object v1, p0, Len;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Len;->k:Ljava/util/List;

    .line 4692
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Len;->a:I

    .line 4694
    :cond_9
    iget-object v1, p0, Len;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lel;->j(Lel;Ljava/util/List;)Ljava/util/List;

    .line 4695
    return-object v0
.end method

.method public synthetic e()Lqi;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->b()Lel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqk;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpQ;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()LqB;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->c()Lel;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 4805
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 4584
    invoke-virtual {p0}, Len;->b()Lel;

    move-result-object v0

    return-object v0
.end method
