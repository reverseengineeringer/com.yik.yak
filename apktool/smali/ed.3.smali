.class public final Led;
.super Lqf;
.source "SourceFile"

# interfaces
.implements Leg;


# static fields
.field public static a:LqC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqC",
            "<",
            "Led;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Led;

.field private static volatile m:LqB;


# instance fields
.field private final d:LpT;

.field private e:I

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

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2891
    new-instance v0, Lee;

    invoke-direct {v0}, Lee;-><init>()V

    sput-object v0, Led;->a:LqC;

    .line 3154
    const/4 v0, 0x0

    sput-object v0, Led;->m:LqB;

    .line 3556
    new-instance v0, Led;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Led;-><init>(Z)V

    sput-object v0, Led;->c:Led;

    .line 3557
    sget-object v0, Led;->c:Led;

    invoke-direct {v0}, Led;->u()V

    .line 3558
    return-void
.end method

.method private constructor <init>(LpW;Lqa;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 2806
    invoke-direct {p0}, Lqf;-><init>()V

    .line 3006
    iput-byte v2, p0, Led;->k:B

    .line 3040
    iput v2, p0, Led;->l:I

    .line 2807
    invoke-direct {p0}, Led;->u()V

    .line 2809
    invoke-static {}, LpT;->i()LpV;

    move-result-object v3

    .line 2811
    invoke-static {v3}, LpY;->a(Ljava/io/OutputStream;)LpY;

    move-result-object v4

    move v2, v0

    .line 2816
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 2817
    :try_start_0
    invoke-virtual {p1}, LpW;->a()I

    move-result v5

    .line 2818
    sparse-switch v5, :sswitch_data_0

    .line 2823
    invoke-virtual {p0, p1, v4, p2, v5}, Led;->a(LpW;LpY;Lqa;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    .line 2825
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 2821
    goto :goto_0

    .line 2830
    :sswitch_1
    iget v5, p0, Led;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Led;->e:I

    .line 2831
    invoke-virtual {p1}, LpW;->i()Z

    move-result v5

    iput-boolean v5, p0, Led;->j:Z
    :try_end_0
    .catch Lqr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2872
    :catch_0
    move-exception v0

    .line 2873
    :try_start_1
    invoke-virtual {v0, p0}, Lqr;->a(Lqy;)Lqr;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2878
    :catchall_0
    move-exception v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    .line 2879
    iget-object v1, p0, Led;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Led;->f:Ljava/util/List;

    .line 2882
    :cond_1
    :try_start_2
    invoke-virtual {v4}, LpY;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2886
    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpT;

    .line 2888
    :goto_1
    invoke-virtual {p0}, Led;->R()V

    throw v0

    .line 2835
    :sswitch_2
    :try_start_3
    iget v5, p0, Led;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Led;->e:I

    .line 2836
    invoke-virtual {p1}, LpW;->f()I

    move-result v5

    iput v5, p0, Led;->g:I
    :try_end_3
    .catch Lqr; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2874
    :catch_1
    move-exception v0

    .line 2875
    :try_start_4
    new-instance v5, Lqr;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lqr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lqr;->a(Lqy;)Lqr;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2840
    :sswitch_3
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v1, :cond_2

    .line 2841
    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Led;->f:Ljava/util/List;

    .line 2842
    or-int/lit8 v2, v2, 0x1

    .line 2844
    :cond_2
    iget-object v5, p0, Led;->f:Ljava/util/List;

    invoke-virtual {p1}, LpW;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2848
    :sswitch_4
    invoke-virtual {p1}, LpW;->s()I

    move-result v5

    .line 2849
    invoke-virtual {p1, v5}, LpW;->c(I)I

    move-result v5

    .line 2850
    and-int/lit8 v6, v2, 0x1

    if-eq v6, v1, :cond_3

    invoke-virtual {p1}, LpW;->w()I

    move-result v6

    if-lez v6, :cond_3

    .line 2851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Led;->f:Ljava/util/List;

    .line 2852
    or-int/lit8 v2, v2, 0x1

    .line 2854
    :cond_3
    :goto_2
    invoke-virtual {p1}, LpW;->w()I

    move-result v6

    if-lez v6, :cond_4

    .line 2855
    iget-object v6, p0, Led;->f:Ljava/util/List;

    invoke-virtual {p1}, LpW;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2857
    :cond_4
    invoke-virtual {p1, v5}, LpW;->d(I)V

    goto/16 :goto_0

    .line 2861
    :sswitch_5
    iget v5, p0, Led;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Led;->e:I

    .line 2862
    invoke-virtual {p1}, LpW;->f()I

    move-result v5

    iput v5, p0, Led;->h:I

    goto/16 :goto_0

    .line 2866
    :sswitch_6
    iget v5, p0, Led;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Led;->e:I

    .line 2867
    invoke-virtual {p1}, LpW;->i()Z

    move-result v5

    iput-boolean v5, p0, Led;->i:Z
    :try_end_5
    .catch Lqr; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2878
    :cond_5
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_6

    .line 2879
    iget-object v0, p0, Led;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Led;->f:Ljava/util/List;

    .line 2882
    :cond_6
    :try_start_6
    invoke-virtual {v4}, LpY;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2886
    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpT;

    .line 2888
    :goto_3
    invoke-virtual {p0}, Led;->R()V

    .line 2890
    return-void

    .line 2886
    :catch_2
    move-exception v0

    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpT;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpT;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpT;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, LpV;->a()LpT;

    move-result-object v1

    iput-object v1, p0, Led;->d:LpT;

    throw v0

    .line 2818
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(LpW;Lqa;LdW;)V
    .locals 0

    .prologue
    .line 2782
    invoke-direct {p0, p1, p2}, Led;-><init>(LpW;Lqa;)V

    return-void
.end method

.method private constructor <init>(Lqh;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2788
    invoke-direct {p0, p1}, Lqf;-><init>(Lqh;)V

    .line 3006
    iput-byte v0, p0, Led;->k:B

    .line 3040
    iput v0, p0, Led;->l:I

    .line 2789
    invoke-virtual {p1}, Lqh;->r()LpT;

    move-result-object v0

    iput-object v0, p0, Led;->d:LpT;

    .line 2790
    return-void
.end method

.method synthetic constructor <init>(Lqh;LdW;)V
    .locals 0

    .prologue
    .line 2782
    invoke-direct {p0, p1}, Led;-><init>(Lqh;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2791
    invoke-direct {p0}, Lqf;-><init>()V

    .line 3006
    iput-byte v0, p0, Led;->k:B

    .line 3040
    iput v0, p0, Led;->l:I

    .line 2791
    sget-object v0, LpT;->a:LpT;

    iput-object v0, p0, Led;->d:LpT;

    return-void
.end method

.method static synthetic a(Led;I)I
    .locals 0

    .prologue
    .line 2782
    iput p1, p0, Led;->g:I

    return p1
.end method

.method public static a()Led;
    .locals 1

    .prologue
    .line 2795
    sget-object v0, Led;->c:Led;

    return-object v0
.end method

.method public static a(Led;)Lef;
    .locals 1

    .prologue
    .line 3219
    invoke-static {}, Led;->r()Lef;

    move-result-object v0

    invoke-virtual {v0, p0}, Lef;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Led;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 2782
    iput-object p1, p0, Led;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Led;Z)Z
    .locals 0

    .prologue
    .line 2782
    iput-boolean p1, p0, Led;->i:Z

    return p1
.end method

.method static synthetic b(Led;I)I
    .locals 0

    .prologue
    .line 2782
    iput p1, p0, Led;->h:I

    return p1
.end method

.method static synthetic b(Led;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Led;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Led;Z)Z
    .locals 0

    .prologue
    .line 2782
    iput-boolean p1, p0, Led;->j:Z

    return p1
.end method

.method static synthetic c(Led;I)I
    .locals 0

    .prologue
    .line 2782
    iput p1, p0, Led;->e:I

    return p1
.end method

.method static synthetic c(Led;)LpT;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Led;->d:LpT;

    return-object v0
.end method

.method public static r()Lef;
    .locals 1

    .prologue
    .line 3216
    invoke-static {}, Lef;->k()Lef;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Led;->f:Ljava/util/List;

    .line 3001
    iput v1, p0, Led;->g:I

    .line 3002
    iput v1, p0, Led;->h:I

    .line 3003
    iput-boolean v1, p0, Led;->i:Z

    .line 3004
    iput-boolean v1, p0, Led;->j:Z

    .line 3005
    return-void
.end method


# virtual methods
.method public b()Led;
    .locals 1

    .prologue
    .line 2799
    sget-object v0, Led;->c:Led;

    return-object v0
.end method

.method public c()LqC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LqC",
            "<",
            "Led;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2903
    sget-object v0, Led;->a:LqC;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2916
    iget-object v0, p0, Led;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Led;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3085
    if-ne p1, p0, :cond_1

    .line 3116
    :cond_0
    :goto_0
    return v1

    .line 3088
    :cond_1
    instance-of v0, p1, Led;

    if-nez v0, :cond_2

    .line 3089
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 3091
    :cond_2
    check-cast p1, Led;

    .line 3094
    invoke-virtual {p0}, Led;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Led;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 3096
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Led;->f()Z

    move-result v0

    invoke-virtual {p1}, Led;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 3097
    :goto_2
    invoke-virtual {p0}, Led;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3098
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Led;->g()I

    move-result v0

    invoke-virtual {p1}, Led;->g()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    .line 3101
    :cond_3
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Led;->h()Z

    move-result v0

    invoke-virtual {p1}, Led;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 3102
    :goto_4
    invoke-virtual {p0}, Led;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3103
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Led;->i()I

    move-result v0

    invoke-virtual {p1}, Led;->i()I

    move-result v3

    if-ne v0, v3, :cond_b

    move v0, v1

    .line 3106
    :cond_4
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Led;->k()Z

    move-result v0

    invoke-virtual {p1}, Led;->k()Z

    move-result v3

    if-ne v0, v3, :cond_c

    move v0, v1

    .line 3107
    :goto_6
    invoke-virtual {p0}, Led;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3108
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Led;->l()Z

    move-result v0

    invoke-virtual {p1}, Led;->l()Z

    move-result v3

    if-ne v0, v3, :cond_d

    move v0, v1

    .line 3111
    :cond_5
    :goto_7
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Led;->m()Z

    move-result v0

    invoke-virtual {p1}, Led;->m()Z

    move-result v3

    if-ne v0, v3, :cond_e

    move v0, v1

    .line 3112
    :goto_8
    invoke-virtual {p0}, Led;->m()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3113
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Led;->q()Z

    move-result v0

    invoke-virtual {p1}, Led;->q()Z

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 3094
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 3096
    goto :goto_2

    :cond_9
    move v0, v2

    .line 3098
    goto :goto_3

    :cond_a
    move v0, v2

    .line 3101
    goto :goto_4

    :cond_b
    move v0, v2

    .line 3103
    goto :goto_5

    :cond_c
    move v0, v2

    .line 3106
    goto :goto_6

    :cond_d
    move v0, v2

    .line 3108
    goto :goto_7

    :cond_e
    move v0, v2

    .line 3111
    goto :goto_8

    :cond_f
    move v1, v0

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2939
    iget v1, p0, Led;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Led;->g:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 2956
    iget v0, p0, Led;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3121
    iget v0, p0, Led;->b:I

    if-eqz v0, :cond_0

    .line 3122
    iget v0, p0, Led;->b:I

    .line 3150
    :goto_0
    return v0

    .line 3125
    :cond_0
    const-class v0, Led;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 3126
    invoke-virtual {p0}, Led;->e()I

    move-result v1

    if-lez v1, :cond_1

    .line 3127
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3128
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3130
    :cond_1
    invoke-virtual {p0}, Led;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3131
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3132
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 3134
    :cond_2
    invoke-virtual {p0}, Led;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3135
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 3136
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 3138
    :cond_3
    invoke-virtual {p0}, Led;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3139
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 3140
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->l()Z

    move-result v1

    invoke-static {v1}, Lqo;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3143
    :cond_4
    invoke-virtual {p0}, Led;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3144
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3145
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Led;->q()Z

    move-result v1

    invoke-static {v1}, Lqo;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Led;->d:LpT;

    invoke-virtual {v1}, LpT;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    iput v0, p0, Led;->b:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Led;->h:I

    return v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3008
    iget-byte v2, p0, Led;->k:B

    .line 3009
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 3016
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3009
    goto :goto_0

    .line 3011
    :cond_1
    invoke-virtual {p0}, Led;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3012
    iput-byte v1, p0, Led;->k:B

    move v0, v1

    .line 3013
    goto :goto_0

    .line 3015
    :cond_2
    iput-byte v0, p0, Led;->k:B

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 2973
    iget v0, p0, Led;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 2979
    iget-boolean v0, p0, Led;->i:Z

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 2990
    iget v0, p0, Led;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic n()Lqz;
    .locals 1

    .prologue
    .line 2782
    invoke-virtual {p0}, Led;->t()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lqz;
    .locals 1

    .prologue
    .line 2782
    invoke-virtual {p0}, Led;->s()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lqy;
    .locals 1

    .prologue
    .line 2782
    invoke-virtual {p0}, Led;->b()Led;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 2996
    iget-boolean v0, p0, Led;->j:Z

    return v0
.end method

.method public s()Lef;
    .locals 1

    .prologue
    .line 3217
    invoke-static {}, Led;->r()Lef;

    move-result-object v0

    return-object v0
.end method

.method public t()Lef;
    .locals 1

    .prologue
    .line 3221
    invoke-static {p0}, Led;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method
