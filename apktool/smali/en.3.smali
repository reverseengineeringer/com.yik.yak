.class public final Len;
.super Lqh;
.source "SourceFile"

# interfaces
.implements Leo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqh",
        "<",
        "Lel;",
        "Len;",
        ">;",
        "Leo;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lqu;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lev;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leh;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Led;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Led;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Led;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lep;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:LdX;

.field private n:F

.field private o:Z

.field private p:Lqu;

.field private q:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7554
    invoke-direct {p0}, Lqh;-><init>()V

    .line 7870
    sget-object v0, Lqt;->a:Lqu;

    iput-object v0, p0, Len;->b:Lqu;

    .line 7963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 8088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 8213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 8338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 8463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 8588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 8713
    const-string v0, ""

    iput-object v0, p0, Len;->i:Ljava/lang/Object;

    .line 8789
    const-string v0, ""

    iput-object v0, p0, Len;->j:Ljava/lang/Object;

    .line 8865
    const-string v0, "0"

    iput-object v0, p0, Len;->k:Ljava/lang/Object;

    .line 8941
    const-string v0, ""

    iput-object v0, p0, Len;->l:Ljava/lang/Object;

    .line 9017
    invoke-static {}, LdX;->a()LdX;

    move-result-object v0

    iput-object v0, p0, Len;->m:LdX;

    .line 9141
    sget-object v0, Lqt;->a:Lqu;

    iput-object v0, p0, Len;->p:Lqu;

    .line 7555
    return-void
.end method

.method static synthetic o()Len;
    .locals 1

    .prologue
    .line 7547
    invoke-static {}, Len;->q()Len;

    move-result-object v0

    return-object v0
.end method

.method private static q()Len;
    .locals 1

    .prologue
    .line 7561
    new-instance v0, Len;

    invoke-direct {v0}, Len;-><init>()V

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 7872
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7873
    new-instance v0, Lqt;

    iget-object v1, p0, Len;->b:Lqu;

    invoke-direct {v0, v1}, Lqt;-><init>(Lqu;)V

    iput-object v0, p0, Len;->b:Lqu;

    .line 7874
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Len;->a:I

    .line 7876
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 7966
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 7967
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 7968
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Len;->a:I

    .line 7970
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 8091
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 8092
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 8093
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Len;->a:I

    .line 8095
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 8216
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 8217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 8218
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Len;->a:I

    .line 8220
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 8341
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 8343
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Len;->a:I

    .line 8345
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 8466
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 8467
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 8468
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Len;->a:I

    .line 8470
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 8591
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 8592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Len;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 8593
    iget v0, p0, Len;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Len;->a:I

    .line 8595
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 9143
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 9144
    new-instance v0, Lqt;

    iget-object v1, p0, Len;->p:Lqu;

    invoke-direct {v0, v1}, Lqt;-><init>(Lqu;)V

    iput-object v0, p0, Len;->p:Lqu;

    .line 9145
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Len;->a:I

    .line 9147
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Len;
    .locals 2

    .prologue
    .line 7602
    invoke-static {}, Len;->q()Len;

    move-result-object v0

    invoke-virtual {p0}, Len;->d()Lel;

    move-result-object v1

    invoke-virtual {v0, v1}, Len;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Len;
    .locals 1

    .prologue
    .line 9094
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Len;->a:I

    .line 9095
    iput p1, p0, Len;->n:F

    .line 9097
    return-object p0
.end method

.method public a(LdX;)Len;
    .locals 2

    .prologue
    .line 9056
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Len;->m:LdX;

    invoke-static {}, LdX;->a()LdX;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9058
    iget-object v0, p0, Len;->m:LdX;

    invoke-static {v0}, LdX;->a(LdX;)LdZ;

    move-result-object v0

    invoke-virtual {v0, p1}, LdZ;->a(LdX;)LdZ;

    move-result-object v0

    invoke-virtual {v0}, LdZ;->d()LdX;

    move-result-object v0

    iput-object v0, p0, Len;->m:LdX;

    .line 9064
    :goto_0
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Len;->a:I

    .line 9065
    return-object p0

    .line 9061
    :cond_0
    iput-object p1, p0, Len;->m:LdX;

    goto :goto_0
.end method

.method public a(Lel;)Len;
    .locals 2

    .prologue
    .line 7700
    invoke-static {}, Lel;->a()Lel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7814
    :goto_0
    return-object p0

    .line 7701
    :cond_0
    invoke-static {p1}, Lel;->b(Lel;)Lqu;

    move-result-object v0

    invoke-interface {v0}, Lqu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7702
    iget-object v0, p0, Len;->b:Lqu;

    invoke-interface {v0}, Lqu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7703
    invoke-static {p1}, Lel;->b(Lel;)Lqu;

    move-result-object v0

    iput-object v0, p0, Len;->b:Lqu;

    .line 7704
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Len;->a:I

    .line 7711
    :cond_1
    :goto_1
    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7712
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7713
    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->c:Ljava/util/List;

    .line 7714
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Len;->a:I

    .line 7721
    :cond_2
    :goto_2
    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7722
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7723
    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->d:Ljava/util/List;

    .line 7724
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Len;->a:I

    .line 7731
    :cond_3
    :goto_3
    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7732
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7733
    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->e:Ljava/util/List;

    .line 7734
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Len;->a:I

    .line 7741
    :cond_4
    :goto_4
    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7742
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7743
    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->f:Ljava/util/List;

    .line 7744
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Len;->a:I

    .line 7751
    :cond_5
    :goto_5
    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7752
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7753
    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->g:Ljava/util/List;

    .line 7754
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Len;->a:I

    .line 7761
    :cond_6
    :goto_6
    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7762
    iget-object v0, p0, Len;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7763
    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Len;->h:Ljava/util/List;

    .line 7764
    iget v0, p0, Len;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Len;->a:I

    .line 7771
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lel;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7772
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Len;->a:I

    .line 7773
    invoke-static {p1}, Lel;->i(Lel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Len;->i:Ljava/lang/Object;

    .line 7776
    :cond_8
    invoke-virtual {p1}, Lel;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7777
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Len;->a:I

    .line 7778
    invoke-static {p1}, Lel;->j(Lel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Len;->j:Ljava/lang/Object;

    .line 7781
    :cond_9
    invoke-virtual {p1}, Lel;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7782
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Len;->a:I

    .line 7783
    invoke-static {p1}, Lel;->k(Lel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Len;->k:Ljava/lang/Object;

    .line 7786
    :cond_a
    invoke-virtual {p1}, Lel;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7787
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Len;->a:I

    .line 7788
    invoke-static {p1}, Lel;->l(Lel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Len;->l:Ljava/lang/Object;

    .line 7791
    :cond_b
    invoke-virtual {p1}, Lel;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7792
    invoke-virtual {p1}, Lel;->E()LdX;

    move-result-object v0

    invoke-virtual {p0, v0}, Len;->a(LdX;)Len;

    .line 7794
    :cond_c
    invoke-virtual {p1}, Lel;->F()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7795
    invoke-virtual {p1}, Lel;->G()F

    move-result v0

    invoke-virtual {p0, v0}, Len;->a(F)Len;

    .line 7797
    :cond_d
    invoke-virtual {p1}, Lel;->H()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7798
    invoke-virtual {p1}, Lel;->I()Z

    move-result v0

    invoke-virtual {p0, v0}, Len;->a(Z)Len;

    .line 7800
    :cond_e
    invoke-static {p1}, Lel;->m(Lel;)Lqu;

    move-result-object v0

    invoke-interface {v0}, Lqu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 7801
    iget-object v0, p0, Len;->p:Lqu;

    invoke-interface {v0}, Lqu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7802
    invoke-static {p1}, Lel;->m(Lel;)Lqu;

    move-result-object v0

    iput-object v0, p0, Len;->p:Lqu;

    .line 7803
    iget v0, p0, Len;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Len;->a:I

    .line 7810
    :cond_f
    :goto_8
    invoke-virtual {p1}, Lel;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7811
    invoke-virtual {p1}, Lel;->M()I

    move-result v0

    invoke-virtual {p0, v0}, Len;->f(I)Len;

    .line 7813
    :cond_10
    invoke-virtual {p0}, Len;->r()LpT;

    move-result-object v0

    invoke-static {p1}, Lel;->n(Lel;)LpT;

    move-result-object v1

    invoke-virtual {v0, v1}, LpT;->a(LpT;)LpT;

    move-result-object v0

    invoke-virtual {p0, v0}, Len;->a(LpT;)Lqh;

    goto/16 :goto_0

    .line 7706
    :cond_11
    invoke-direct {p0}, Len;->s()V

    .line 7707
    iget-object v0, p0, Len;->b:Lqu;

    invoke-static {p1}, Lel;->b(Lel;)Lqu;

    move-result-object v1

    invoke-interface {v0, v1}, Lqu;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 7716
    :cond_12
    invoke-direct {p0}, Len;->t()V

    .line 7717
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-static {p1}, Lel;->c(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 7726
    :cond_13
    invoke-direct {p0}, Len;->u()V

    .line 7727
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-static {p1}, Lel;->d(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 7736
    :cond_14
    invoke-direct {p0}, Len;->v()V

    .line 7737
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-static {p1}, Lel;->e(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 7746
    :cond_15
    invoke-direct {p0}, Len;->w()V

    .line 7747
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-static {p1}, Lel;->f(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 7756
    :cond_16
    invoke-direct {p0}, Len;->x()V

    .line 7757
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-static {p1}, Lel;->g(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 7766
    :cond_17
    invoke-direct {p0}, Len;->y()V

    .line 7767
    iget-object v0, p0, Len;->h:Ljava/util/List;

    invoke-static {p1}, Lel;->h(Lel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 7805
    :cond_18
    invoke-direct {p0}, Len;->z()V

    .line 7806
    iget-object v0, p0, Len;->p:Lqu;

    invoke-static {p1}, Lel;->m(Lel;)Lqu;

    move-result-object v1

    invoke-interface {v0, v1}, Lqu;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8
.end method

.method public a(LpW;Lqa;)Len;
    .locals 4

    .prologue
    .line 7855
    const/4 v2, 0x0

    .line 7857
    :try_start_0
    sget-object v0, Lel;->a:LqC;

    invoke-interface {v0, p1, p2}, LqC;->b(LpW;Lqa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lel;
    :try_end_0
    .catch Lqr; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7862
    if-eqz v0, :cond_0

    .line 7863
    invoke-virtual {p0, v0}, Len;->a(Lel;)Len;

    .line 7866
    :cond_0
    return-object p0

    .line 7858
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7859
    :try_start_1
    invoke-virtual {v1}, Lqr;->a()Lqy;

    move-result-object v0

    check-cast v0, Lel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7860
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7862
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7863
    invoke-virtual {p0, v1}, Len;->a(Lel;)Len;

    :cond_1
    throw v0

    .line 7862
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Z)Len;
    .locals 1

    .prologue
    .line 9126
    iget v0, p0, Len;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Len;->a:I

    .line 9127
    iput-boolean p1, p0, Len;->o:Z

    .line 9129
    return-object p0
.end method

.method public a(I)Lev;
    .locals 1

    .prologue
    .line 7988
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lev;

    return-object v0
.end method

.method public bridge synthetic a(Lqf;)Lqh;
    .locals 1

    .prologue
    .line 7547
    check-cast p1, Lel;

    invoke-virtual {p0, p1}, Len;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Leh;
    .locals 1

    .prologue
    .line 8113
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh;

    return-object v0
.end method

.method public b()Lel;
    .locals 1

    .prologue
    .line 7606
    invoke-static {}, Lel;->a()Lel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)LpN;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0, p1, p2}, Len;->a(LpW;Lqa;)Len;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Led;
    .locals 1

    .prologue
    .line 8238
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led;

    return-object v0
.end method

.method public c()Lel;
    .locals 2

    .prologue
    .line 7610
    invoke-virtual {p0}, Len;->d()Lel;

    move-result-object v0

    .line 7611
    invoke-virtual {v0}, Lel;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7612
    invoke-static {v0}, Len;->a(Lqy;)LqR;

    move-result-object v0

    throw v0

    .line 7614
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpW;Lqa;)Lqz;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0, p1, p2}, Len;->a(LpW;Lqa;)Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Led;
    .locals 1

    .prologue
    .line 8363
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led;

    return-object v0
.end method

.method public d()Lel;
    .locals 7

    .prologue
    const v6, 0x8000

    const/4 v0, 0x1

    .line 7618
    new-instance v2, Lel;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lel;-><init>(Lqh;LdW;)V

    .line 7619
    iget v3, p0, Len;->a:I

    .line 7620
    const/4 v1, 0x0

    .line 7621
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 7622
    new-instance v4, LqS;

    iget-object v5, p0, Len;->b:Lqu;

    invoke-direct {v4, v5}, LqS;-><init>(Lqu;)V

    iput-object v4, p0, Len;->b:Lqu;

    .line 7624
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Len;->a:I

    .line 7626
    :cond_0
    iget-object v4, p0, Len;->b:Lqu;

    invoke-static {v2, v4}, Lel;->a(Lel;Lqu;)Lqu;

    .line 7627
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7628
    iget-object v4, p0, Len;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->c:Ljava/util/List;

    .line 7629
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Len;->a:I

    .line 7631
    :cond_1
    iget-object v4, p0, Len;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->a(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7632
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 7633
    iget-object v4, p0, Len;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->d:Ljava/util/List;

    .line 7634
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Len;->a:I

    .line 7636
    :cond_2
    iget-object v4, p0, Len;->d:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->b(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7637
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 7638
    iget-object v4, p0, Len;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->e:Ljava/util/List;

    .line 7639
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Len;->a:I

    .line 7641
    :cond_3
    iget-object v4, p0, Len;->e:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->c(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7642
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 7643
    iget-object v4, p0, Len;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->f:Ljava/util/List;

    .line 7644
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Len;->a:I

    .line 7646
    :cond_4
    iget-object v4, p0, Len;->f:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->d(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7647
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 7648
    iget-object v4, p0, Len;->g:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->g:Ljava/util/List;

    .line 7649
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Len;->a:I

    .line 7651
    :cond_5
    iget-object v4, p0, Len;->g:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->e(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7652
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 7653
    iget-object v4, p0, Len;->h:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Len;->h:Ljava/util/List;

    .line 7654
    iget v4, p0, Len;->a:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Len;->a:I

    .line 7656
    :cond_6
    iget-object v4, p0, Len;->h:Ljava/util/List;

    invoke-static {v2, v4}, Lel;->f(Lel;Ljava/util/List;)Ljava/util/List;

    .line 7657
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_f

    .line 7660
    :goto_0
    iget-object v1, p0, Len;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lel;->a(Lel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7661
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 7662
    or-int/lit8 v0, v0, 0x2

    .line 7664
    :cond_7
    iget-object v1, p0, Len;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lel;->b(Lel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7665
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 7666
    or-int/lit8 v0, v0, 0x4

    .line 7668
    :cond_8
    iget-object v1, p0, Len;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lel;->c(Lel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7669
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 7670
    or-int/lit8 v0, v0, 0x8

    .line 7672
    :cond_9
    iget-object v1, p0, Len;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lel;->d(Lel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7673
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 7674
    or-int/lit8 v0, v0, 0x10

    .line 7676
    :cond_a
    iget-object v1, p0, Len;->m:LdX;

    invoke-static {v2, v1}, Lel;->a(Lel;LdX;)LdX;

    .line 7677
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 7678
    or-int/lit8 v0, v0, 0x20

    .line 7680
    :cond_b
    iget v1, p0, Len;->n:F

    invoke-static {v2, v1}, Lel;->a(Lel;F)F

    .line 7681
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 7682
    or-int/lit8 v0, v0, 0x40

    .line 7684
    :cond_c
    iget-boolean v1, p0, Len;->o:Z

    invoke-static {v2, v1}, Lel;->a(Lel;Z)Z

    .line 7685
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    .line 7686
    new-instance v1, LqS;

    iget-object v4, p0, Len;->p:Lqu;

    invoke-direct {v1, v4}, LqS;-><init>(Lqu;)V

    iput-object v1, p0, Len;->p:Lqu;

    .line 7688
    iget v1, p0, Len;->a:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Len;->a:I

    .line 7690
    :cond_d
    iget-object v1, p0, Len;->p:Lqu;

    invoke-static {v2, v1}, Lel;->b(Lel;Lqu;)Lqu;

    .line 7691
    and-int v1, v3, v6

    if-ne v1, v6, :cond_e

    .line 7692
    or-int/lit16 v0, v0, 0x80

    .line 7694
    :cond_e
    iget v1, p0, Len;->q:I

    invoke-static {v2, v1}, Lel;->a(Lel;I)I

    .line 7695
    invoke-static {v2, v0}, Lel;->b(Lel;I)I

    .line 7696
    return-object v2

    :cond_f
    move v0, v1

    goto :goto_0
.end method

.method public e(I)Led;
    .locals 1

    .prologue
    .line 8488
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led;

    return-object v0
.end method

.method public synthetic e()Lqf;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->b()Lel;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Len;
    .locals 2

    .prologue
    .line 9251
    iget v0, p0, Len;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Len;->a:I

    .line 9252
    iput p1, p0, Len;->q:I

    .line 9254
    return-object p0
.end method

.method public synthetic f()Lqh;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpN;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->a()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lqy;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->c()Lel;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 7982
    iget-object v0, p0, Len;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7818
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Len;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7819
    invoke-virtual {p0, v0}, Len;->a(I)Lev;

    move-result-object v2

    invoke-virtual {v2}, Lev;->j()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7848
    :cond_0
    :goto_1
    return v1

    .line 7818
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7824
    :goto_2
    invoke-virtual {p0}, Len;->k()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 7825
    invoke-virtual {p0, v0}, Len;->b(I)Leh;

    move-result-object v2

    invoke-virtual {v2}, Leh;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7824
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 7830
    :goto_3
    invoke-virtual {p0}, Len;->l()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 7831
    invoke-virtual {p0, v0}, Len;->c(I)Led;

    move-result-object v2

    invoke-virtual {v2}, Led;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7830
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 7836
    :goto_4
    invoke-virtual {p0}, Len;->m()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 7837
    invoke-virtual {p0, v0}, Len;->d(I)Led;

    move-result-object v2

    invoke-virtual {v2}, Led;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7836
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v1

    .line 7842
    :goto_5
    invoke-virtual {p0}, Len;->n()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 7843
    invoke-virtual {p0, v0}, Len;->e(I)Led;

    move-result-object v2

    invoke-virtual {v2}, Led;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7842
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7848
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public k()I
    .locals 1

    .prologue
    .line 8107
    iget-object v0, p0, Len;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 8232
    iget-object v0, p0, Len;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 8357
    iget-object v0, p0, Len;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 8482
    iget-object v0, p0, Len;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic p()Lqy;
    .locals 1

    .prologue
    .line 7547
    invoke-virtual {p0}, Len;->b()Lel;

    move-result-object v0

    return-object v0
.end method
