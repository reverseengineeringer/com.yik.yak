.class public final Lel;
.super Lqi;
.source "SourceFile"

# interfaces
.implements Leo;


# static fields
.field public static a:LqF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqF",
            "<",
            "Lel;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lel;

.field private static volatile q:LqE;


# instance fields
.field private final d:LpW;

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

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:B

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4005
    new-instance v0, Lem;

    invoke-direct {v0}, Lem;-><init>()V

    sput-object v0, Lel;->a:LqF;

    .line 4512
    const/4 v0, 0x0

    sput-object v0, Lel;->q:LqE;

    .line 5491
    new-instance v0, Lel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lel;-><init>(Z)V

    sput-object v0, Lel;->c:Lel;

    .line 5492
    sget-object v0, Lel;->c:Lel;

    invoke-direct {v0}, Lel;->E()V

    .line 5493
    return-void
.end method

.method private constructor <init>(LpZ;Lqd;)V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    .line 3724
    invoke-direct {p0}, Lqi;-><init>()V

    .line 4272
    const/4 v0, -0x1

    iput-byte v0, p0, Lel;->o:B

    .line 4317
    const/4 v0, -0x1

    iput v0, p0, Lel;->p:I

    .line 3725
    invoke-direct {p0}, Lel;->E()V

    .line 3726
    const/4 v2, 0x0

    .line 3727
    invoke-static {}, LpW;->i()LpY;

    move-result-object v3

    .line 3729
    invoke-static {v3}, Lqb;->a(Ljava/io/OutputStream;)Lqb;

    move-result-object v4

    .line 3733
    const/4 v0, 0x0

    .line 3734
    :cond_0
    :goto_0
    if-nez v0, :cond_29

    .line 3735
    :try_start_0
    invoke-virtual {p1}, LpZ;->a()I

    move-result v5

    .line 3736
    sparse-switch v5, :sswitch_data_0

    .line 3741
    invoke-virtual {p0, p1, v4, p2, v5}, Lel;->a(LpZ;Lqb;Lqd;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    .line 3743
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 3739
    goto :goto_0

    .line 3748
    :sswitch_1
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v1, :cond_1

    .line 3749
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->e:Ljava/util/List;

    .line 3750
    or-int/lit8 v2, v2, 0x1

    .line 3752
    :cond_1
    iget-object v5, p0, Lel;->e:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3959
    :catch_0
    move-exception v0

    .line 3960
    :try_start_1
    invoke-virtual {v0, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3965
    :catchall_0
    move-exception v0

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v1, :cond_2

    .line 3966
    iget-object v1, p0, Lel;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->e:Ljava/util/List;

    .line 3968
    :cond_2
    and-int/lit8 v1, v2, 0x2

    if-ne v1, v8, :cond_3

    .line 3969
    iget-object v1, p0, Lel;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->f:Ljava/util/List;

    .line 3971
    :cond_3
    and-int/lit8 v1, v2, 0x4

    if-ne v1, v9, :cond_4

    .line 3972
    iget-object v1, p0, Lel;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->g:Ljava/util/List;

    .line 3974
    :cond_4
    and-int/lit8 v1, v2, 0x8

    if-ne v1, v10, :cond_5

    .line 3975
    iget-object v1, p0, Lel;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->h:Ljava/util/List;

    .line 3977
    :cond_5
    and-int/lit8 v1, v2, 0x10

    if-ne v1, v11, :cond_6

    .line 3978
    iget-object v1, p0, Lel;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->i:Ljava/util/List;

    .line 3980
    :cond_6
    and-int/lit8 v1, v2, 0x20

    const/16 v5, 0x20

    if-ne v1, v5, :cond_7

    .line 3981
    iget-object v1, p0, Lel;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->j:Ljava/util/List;

    .line 3983
    :cond_7
    and-int/lit8 v1, v2, 0x40

    const/16 v5, 0x40

    if-ne v1, v5, :cond_8

    .line 3984
    iget-object v1, p0, Lel;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->k:Ljava/util/List;

    .line 3986
    :cond_8
    and-int/lit16 v1, v2, 0x80

    const/16 v5, 0x80

    if-ne v1, v5, :cond_9

    .line 3987
    iget-object v1, p0, Lel;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->l:Ljava/util/List;

    .line 3989
    :cond_9
    and-int/lit16 v1, v2, 0x100

    const/16 v5, 0x100

    if-ne v1, v5, :cond_a

    .line 3990
    iget-object v1, p0, Lel;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->m:Ljava/util/List;

    .line 3992
    :cond_a
    and-int/lit16 v1, v2, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b

    .line 3993
    iget-object v1, p0, Lel;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lel;->n:Ljava/util/List;

    .line 3996
    :cond_b
    :try_start_2
    invoke-virtual {v4}, Lqb;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4000
    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Lel;->d:LpW;

    .line 4002
    :goto_1
    invoke-virtual {p0}, Lel;->R()V

    throw v0

    .line 3756
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3757
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3758
    and-int/lit8 v6, v2, 0x1

    if-eq v6, v1, :cond_c

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_c

    .line 3759
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->e:Ljava/util/List;

    .line 3760
    or-int/lit8 v2, v2, 0x1

    .line 3762
    :cond_c
    :goto_2
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_d

    .line 3763
    iget-object v6, p0, Lel;->e:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lqu; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3961
    :catch_1
    move-exception v0

    .line 3962
    :try_start_4
    new-instance v5, Lqu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lqu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3765
    :cond_d
    :try_start_5
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3769
    :sswitch_3
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v8, :cond_e

    .line 3770
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->f:Ljava/util/List;

    .line 3771
    or-int/lit8 v2, v2, 0x2

    .line 3773
    :cond_e
    iget-object v5, p0, Lel;->f:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3777
    :sswitch_4
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3778
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3779
    and-int/lit8 v6, v2, 0x2

    if-eq v6, v8, :cond_f

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_f

    .line 3780
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->f:Ljava/util/List;

    .line 3781
    or-int/lit8 v2, v2, 0x2

    .line 3783
    :cond_f
    :goto_3
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_10

    .line 3784
    iget-object v6, p0, Lel;->f:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3786
    :cond_10
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3790
    :sswitch_5
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v9, :cond_11

    .line 3791
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->g:Ljava/util/List;

    .line 3792
    or-int/lit8 v2, v2, 0x4

    .line 3794
    :cond_11
    iget-object v5, p0, Lel;->g:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3798
    :sswitch_6
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3799
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3800
    and-int/lit8 v6, v2, 0x4

    if-eq v6, v9, :cond_12

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_12

    .line 3801
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->g:Ljava/util/List;

    .line 3802
    or-int/lit8 v2, v2, 0x4

    .line 3804
    :cond_12
    :goto_4
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_13

    .line 3805
    iget-object v6, p0, Lel;->g:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3807
    :cond_13
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3811
    :sswitch_7
    and-int/lit8 v5, v2, 0x8

    if-eq v5, v10, :cond_14

    .line 3812
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->h:Ljava/util/List;

    .line 3813
    or-int/lit8 v2, v2, 0x8

    .line 3815
    :cond_14
    iget-object v5, p0, Lel;->h:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3819
    :sswitch_8
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3820
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3821
    and-int/lit8 v6, v2, 0x8

    if-eq v6, v10, :cond_15

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_15

    .line 3822
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->h:Ljava/util/List;

    .line 3823
    or-int/lit8 v2, v2, 0x8

    .line 3825
    :cond_15
    :goto_5
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_16

    .line 3826
    iget-object v6, p0, Lel;->h:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3828
    :cond_16
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3832
    :sswitch_9
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v11, :cond_17

    .line 3833
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->i:Ljava/util/List;

    .line 3834
    or-int/lit8 v2, v2, 0x10

    .line 3836
    :cond_17
    iget-object v5, p0, Lel;->i:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3840
    :sswitch_a
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3841
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3842
    and-int/lit8 v6, v2, 0x10

    if-eq v6, v11, :cond_18

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_18

    .line 3843
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->i:Ljava/util/List;

    .line 3844
    or-int/lit8 v2, v2, 0x10

    .line 3846
    :cond_18
    :goto_6
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_19

    .line 3847
    iget-object v6, p0, Lel;->i:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3849
    :cond_19
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3853
    :sswitch_b
    and-int/lit8 v5, v2, 0x20

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1a

    .line 3854
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->j:Ljava/util/List;

    .line 3855
    or-int/lit8 v2, v2, 0x20

    .line 3857
    :cond_1a
    iget-object v5, p0, Lel;->j:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3861
    :sswitch_c
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3862
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3863
    and-int/lit8 v6, v2, 0x20

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1b

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_1b

    .line 3864
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->j:Ljava/util/List;

    .line 3865
    or-int/lit8 v2, v2, 0x20

    .line 3867
    :cond_1b
    :goto_7
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_1c

    .line 3868
    iget-object v6, p0, Lel;->j:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3870
    :cond_1c
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3874
    :sswitch_d
    and-int/lit8 v5, v2, 0x40

    const/16 v6, 0x40

    if-eq v5, v6, :cond_1d

    .line 3875
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->k:Ljava/util/List;

    .line 3876
    or-int/lit8 v2, v2, 0x40

    .line 3878
    :cond_1d
    iget-object v5, p0, Lel;->k:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3882
    :sswitch_e
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3883
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3884
    and-int/lit8 v6, v2, 0x40

    const/16 v7, 0x40

    if-eq v6, v7, :cond_1e

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_1e

    .line 3885
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->k:Ljava/util/List;

    .line 3886
    or-int/lit8 v2, v2, 0x40

    .line 3888
    :cond_1e
    :goto_8
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_1f

    .line 3889
    iget-object v6, p0, Lel;->k:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3891
    :cond_1f
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3895
    :sswitch_f
    and-int/lit16 v5, v2, 0x80

    const/16 v6, 0x80

    if-eq v5, v6, :cond_20

    .line 3896
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->l:Ljava/util/List;

    .line 3897
    or-int/lit16 v2, v2, 0x80

    .line 3899
    :cond_20
    iget-object v5, p0, Lel;->l:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3903
    :sswitch_10
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3904
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3905
    and-int/lit16 v6, v2, 0x80

    const/16 v7, 0x80

    if-eq v6, v7, :cond_21

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_21

    .line 3906
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->l:Ljava/util/List;

    .line 3907
    or-int/lit16 v2, v2, 0x80

    .line 3909
    :cond_21
    :goto_9
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_22

    .line 3910
    iget-object v6, p0, Lel;->l:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3912
    :cond_22
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3916
    :sswitch_11
    and-int/lit16 v5, v2, 0x100

    const/16 v6, 0x100

    if-eq v5, v6, :cond_23

    .line 3917
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->m:Ljava/util/List;

    .line 3918
    or-int/lit16 v2, v2, 0x100

    .line 3920
    :cond_23
    iget-object v5, p0, Lel;->m:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3924
    :sswitch_12
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3925
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3926
    and-int/lit16 v6, v2, 0x100

    const/16 v7, 0x100

    if-eq v6, v7, :cond_24

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_24

    .line 3927
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->m:Ljava/util/List;

    .line 3928
    or-int/lit16 v2, v2, 0x100

    .line 3930
    :cond_24
    :goto_a
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_25

    .line 3931
    iget-object v6, p0, Lel;->m:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3933
    :cond_25
    invoke-virtual {p1, v5}, LpZ;->d(I)V

    goto/16 :goto_0

    .line 3937
    :sswitch_13
    and-int/lit16 v5, v2, 0x200

    const/16 v6, 0x200

    if-eq v5, v6, :cond_26

    .line 3938
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lel;->n:Ljava/util/List;

    .line 3939
    or-int/lit16 v2, v2, 0x200

    .line 3941
    :cond_26
    iget-object v5, p0, Lel;->n:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3945
    :sswitch_14
    invoke-virtual {p1}, LpZ;->s()I

    move-result v5

    .line 3946
    invoke-virtual {p1, v5}, LpZ;->c(I)I

    move-result v5

    .line 3947
    and-int/lit16 v6, v2, 0x200

    const/16 v7, 0x200

    if-eq v6, v7, :cond_27

    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_27

    .line 3948
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lel;->n:Ljava/util/List;

    .line 3949
    or-int/lit16 v2, v2, 0x200

    .line 3951
    :cond_27
    :goto_b
    invoke-virtual {p1}, LpZ;->w()I

    move-result v6

    if-lez v6, :cond_28

    .line 3952
    iget-object v6, p0, Lel;->n:Ljava/util/List;

    invoke-virtual {p1}, LpZ;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3954
    :cond_28
    invoke-virtual {p1, v5}, LpZ;->d(I)V
    :try_end_5
    .catch Lqu; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3965
    :cond_29
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_2a

    .line 3966
    iget-object v0, p0, Lel;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->e:Ljava/util/List;

    .line 3968
    :cond_2a
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v8, :cond_2b

    .line 3969
    iget-object v0, p0, Lel;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->f:Ljava/util/List;

    .line 3971
    :cond_2b
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v9, :cond_2c

    .line 3972
    iget-object v0, p0, Lel;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->g:Ljava/util/List;

    .line 3974
    :cond_2c
    and-int/lit8 v0, v2, 0x8

    if-ne v0, v10, :cond_2d

    .line 3975
    iget-object v0, p0, Lel;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->h:Ljava/util/List;

    .line 3977
    :cond_2d
    and-int/lit8 v0, v2, 0x10

    if-ne v0, v11, :cond_2e

    .line 3978
    iget-object v0, p0, Lel;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->i:Ljava/util/List;

    .line 3980
    :cond_2e
    and-int/lit8 v0, v2, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2f

    .line 3981
    iget-object v0, p0, Lel;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->j:Ljava/util/List;

    .line 3983
    :cond_2f
    and-int/lit8 v0, v2, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_30

    .line 3984
    iget-object v0, p0, Lel;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->k:Ljava/util/List;

    .line 3986
    :cond_30
    and-int/lit16 v0, v2, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_31

    .line 3987
    iget-object v0, p0, Lel;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->l:Ljava/util/List;

    .line 3989
    :cond_31
    and-int/lit16 v0, v2, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_32

    .line 3990
    iget-object v0, p0, Lel;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->m:Ljava/util/List;

    .line 3992
    :cond_32
    and-int/lit16 v0, v2, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_33

    .line 3993
    iget-object v0, p0, Lel;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->n:Ljava/util/List;

    .line 3996
    :cond_33
    :try_start_6
    invoke-virtual {v4}, Lqb;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4000
    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, Lel;->d:LpW;

    .line 4002
    :goto_c
    invoke-virtual {p0}, Lel;->R()V

    .line 4004
    return-void

    .line 4000
    :catch_2
    move-exception v0

    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, Lel;->d:LpW;

    goto :goto_c

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Lel;->d:LpW;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Lel;->d:LpW;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, Lel;->d:LpW;

    throw v0

    .line 3736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x22 -> :sswitch_8
        0x28 -> :sswitch_9
        0x2a -> :sswitch_a
        0x30 -> :sswitch_b
        0x32 -> :sswitch_c
        0x38 -> :sswitch_d
        0x3a -> :sswitch_e
        0x40 -> :sswitch_f
        0x42 -> :sswitch_10
        0x48 -> :sswitch_11
        0x4a -> :sswitch_12
        0x50 -> :sswitch_13
        0x52 -> :sswitch_14
    .end sparse-switch
.end method

.method synthetic constructor <init>(LpZ;Lqd;LdS;)V
    .locals 0

    .prologue
    .line 3700
    invoke-direct {p0, p1, p2}, Lel;-><init>(LpZ;Lqd;)V

    return-void
.end method

.method private constructor <init>(Lqk;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3706
    invoke-direct {p0, p1}, Lqi;-><init>(Lqk;)V

    .line 4272
    iput-byte v0, p0, Lel;->o:B

    .line 4317
    iput v0, p0, Lel;->p:I

    .line 3707
    invoke-virtual {p1}, Lqk;->r()LpW;

    move-result-object v0

    iput-object v0, p0, Lel;->d:LpW;

    .line 3708
    return-void
.end method

.method synthetic constructor <init>(Lqk;LdS;)V
    .locals 0

    .prologue
    .line 3700
    invoke-direct {p0, p1}, Lel;-><init>(Lqk;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3709
    invoke-direct {p0}, Lqi;-><init>()V

    .line 4272
    iput-byte v0, p0, Lel;->o:B

    .line 4317
    iput v0, p0, Lel;->p:I

    .line 3709
    sget-object v0, LpW;->a:LpW;

    iput-object v0, p0, Lel;->d:LpW;

    return-void
.end method

.method public static B()Len;
    .locals 1

    .prologue
    .line 4574
    invoke-static {}, Len;->i()Len;

    move-result-object v0

    return-object v0
.end method

.method private E()V
    .locals 1

    .prologue
    .line 4261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->e:Ljava/util/List;

    .line 4262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->f:Ljava/util/List;

    .line 4263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->g:Ljava/util/List;

    .line 4264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->h:Ljava/util/List;

    .line 4265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->i:Ljava/util/List;

    .line 4266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->j:Ljava/util/List;

    .line 4267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->k:Ljava/util/List;

    .line 4268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->l:Ljava/util/List;

    .line 4269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->m:Ljava/util/List;

    .line 4270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lel;->n:Ljava/util/List;

    .line 4271
    return-void
.end method

.method public static a()Lel;
    .locals 1

    .prologue
    .line 3713
    sget-object v0, Lel;->c:Lel;

    return-object v0
.end method

.method public static a(Lel;)Len;
    .locals 1

    .prologue
    .line 4577
    invoke-static {}, Lel;->B()Len;

    move-result-object v0

    invoke-virtual {v0, p0}, Len;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic g(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic i(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic j(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lel;->n:Ljava/util/List;

    return-object p1
.end method

.method static synthetic k(Lel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lel;)LpW;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lel;->d:LpW;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lel;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public C()Len;
    .locals 1

    .prologue
    .line 4575
    invoke-static {}, Lel;->B()Len;

    move-result-object v0

    return-object v0
.end method

.method public D()Len;
    .locals 1

    .prologue
    .line 4579
    invoke-static {p0}, Lel;->a(Lel;)Len;

    move-result-object v0

    return-object v0
.end method

.method public b()Lel;
    .locals 1

    .prologue
    .line 3717
    sget-object v0, Lel;->c:Lel;

    return-object v0
.end method

.method public c()LqF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LqF",
            "<",
            "Lel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4017
    sget-object v0, Lel;->a:LqF;

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
    .line 4029
    iget-object v0, p0, Lel;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 4035
    iget-object v0, p0, Lel;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4427
    if-ne p1, p0, :cond_1

    .line 4456
    :cond_0
    :goto_0
    return v0

    .line 4430
    :cond_1
    instance-of v2, p1, Lel;

    if-nez v2, :cond_2

    .line 4431
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 4433
    :cond_2
    check-cast p1, Lel;

    .line 4436
    invoke-virtual {p0}, Lel;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 4438
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lel;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    .line 4440
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lel;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    .line 4442
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lel;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    .line 4444
    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lel;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 4446
    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lel;->r()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->r()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    .line 4448
    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lel;->t()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->t()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    .line 4450
    :goto_7
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lel;->v()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    .line 4452
    :goto_8
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lel;->x()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    .line 4454
    :goto_9
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lel;->z()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lel;->z()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 4436
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 4438
    goto/16 :goto_2

    :cond_6
    move v2, v1

    .line 4440
    goto :goto_3

    :cond_7
    move v2, v1

    .line 4442
    goto :goto_4

    :cond_8
    move v2, v1

    .line 4444
    goto :goto_5

    :cond_9
    move v2, v1

    .line 4446
    goto :goto_6

    :cond_a
    move v2, v1

    .line 4448
    goto :goto_7

    :cond_b
    move v2, v1

    .line 4450
    goto :goto_8

    :cond_c
    move v2, v1

    .line 4452
    goto :goto_9
.end method

.method public f()Ljava/util/List;
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
    .line 4053
    iget-object v0, p0, Lel;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 4059
    iget-object v0, p0, Lel;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
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
    .line 4077
    iget-object v0, p0, Lel;->g:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 4461
    iget v0, p0, Lel;->b:I

    if-eqz v0, :cond_0

    .line 4462
    iget v0, p0, Lel;->b:I

    .line 4508
    :goto_0
    return v0

    .line 4465
    :cond_0
    const-class v0, Lel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 4466
    invoke-virtual {p0}, Lel;->e()I

    move-result v1

    if-lez v1, :cond_1

    .line 4467
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 4468
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4470
    :cond_1
    invoke-virtual {p0}, Lel;->g()I

    move-result v1

    if-lez v1, :cond_2

    .line 4471
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 4472
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4474
    :cond_2
    invoke-virtual {p0}, Lel;->i()I

    move-result v1

    if-lez v1, :cond_3

    .line 4475
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 4476
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4478
    :cond_3
    invoke-virtual {p0}, Lel;->l()I

    move-result v1

    if-lez v1, :cond_4

    .line 4479
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 4480
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4482
    :cond_4
    invoke-virtual {p0}, Lel;->q()I

    move-result v1

    if-lez v1, :cond_5

    .line 4483
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 4484
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4486
    :cond_5
    invoke-virtual {p0}, Lel;->s()I

    move-result v1

    if-lez v1, :cond_6

    .line 4487
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 4488
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4490
    :cond_6
    invoke-virtual {p0}, Lel;->u()I

    move-result v1

    if-lez v1, :cond_7

    .line 4491
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 4492
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4494
    :cond_7
    invoke-virtual {p0}, Lel;->w()I

    move-result v1

    if-lez v1, :cond_8

    .line 4495
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 4496
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4498
    :cond_8
    invoke-virtual {p0}, Lel;->y()I

    move-result v1

    if-lez v1, :cond_9

    .line 4499
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 4500
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->x()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4502
    :cond_9
    invoke-virtual {p0}, Lel;->A()I

    move-result v1

    if-lez v1, :cond_a

    .line 4503
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    .line 4504
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lel;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4506
    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lel;->d:LpW;

    invoke-virtual {v1}, LpW;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4507
    iput v0, p0, Lel;->b:I

    goto/16 :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 4083
    iget-object v0, p0, Lel;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4274
    iget-byte v1, p0, Lel;->o:B

    .line 4275
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 4278
    :goto_0
    return v0

    .line 4275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4277
    :cond_1
    iput-byte v0, p0, Lel;->o:B

    goto :goto_0
.end method

.method public k()Ljava/util/List;
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
    .line 4101
    iget-object v0, p0, Lel;->h:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 4107
    iget-object v0, p0, Lel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()Ljava/util/List;
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
    .line 4125
    iget-object v0, p0, Lel;->i:Ljava/util/List;

    return-object v0
.end method

.method public synthetic n()LqC;
    .locals 1

    .prologue
    .line 3700
    invoke-virtual {p0}, Lel;->D()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()LqC;
    .locals 1

    .prologue
    .line 3700
    invoke-virtual {p0}, Lel;->C()Len;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 3700
    invoke-virtual {p0}, Lel;->b()Lel;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 4131
    iget-object v0, p0, Lel;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/List;
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
    .line 4149
    iget-object v0, p0, Lel;->j:Ljava/util/List;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 4155
    iget-object v0, p0, Lel;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/List;
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
    .line 4173
    iget-object v0, p0, Lel;->k:Ljava/util/List;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 4179
    iget-object v0, p0, Lel;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public v()Ljava/util/List;
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
    .line 4197
    iget-object v0, p0, Lel;->l:Ljava/util/List;

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 4203
    iget-object v0, p0, Lel;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public x()Ljava/util/List;
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
    .line 4221
    iget-object v0, p0, Lel;->m:Ljava/util/List;

    return-object v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 4227
    iget-object v0, p0, Lel;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z()Ljava/util/List;
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
    .line 4245
    iget-object v0, p0, Lel;->n:Ljava/util/List;

    return-object v0
.end method
