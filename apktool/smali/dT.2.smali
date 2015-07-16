.class public final LdT;
.super Lqi;
.source "SourceFile"

# interfaces
.implements LdY;


# static fields
.field public static a:LqF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LqF",
            "<",
            "LdT;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:LdT;

.field private static volatile k:LqE;


# instance fields
.field private final d:LpW;

.field private e:I

.field private f:LdW;

.field private g:I

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5619
    new-instance v0, LdU;

    invoke-direct {v0}, LdU;-><init>()V

    sput-object v0, LdT;->a:LqF;

    .line 5865
    const/4 v0, 0x0

    sput-object v0, LdT;->k:LqE;

    .line 6142
    new-instance v0, LdT;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LdT;-><init>(Z)V

    sput-object v0, LdT;->c:LdT;

    .line 6143
    sget-object v0, LdT;->c:LdT;

    invoke-direct {v0}, LdT;->q()V

    .line 6144
    return-void
.end method

.method private constructor <init>(LpZ;Lqd;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 5556
    invoke-direct {p0}, Lqi;-><init>()V

    .line 5756
    iput-byte v0, p0, LdT;->i:B

    .line 5780
    iput v0, p0, LdT;->j:I

    .line 5557
    invoke-direct {p0}, LdT;->q()V

    .line 5558
    invoke-static {}, LpW;->i()LpY;

    move-result-object v2

    .line 5561
    invoke-static {v2}, Lqb;->a(Ljava/io/OutputStream;)Lqb;

    move-result-object v3

    .line 5565
    const/4 v0, 0x0

    .line 5566
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5567
    :try_start_0
    invoke-virtual {p1}, LpZ;->a()I

    move-result v4

    .line 5568
    sparse-switch v4, :sswitch_data_0

    .line 5573
    invoke-virtual {p0, p1, v3, p2, v4}, LdT;->a(LpZ;Lqb;Lqd;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 5575
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 5571
    goto :goto_0

    .line 5580
    :sswitch_1
    invoke-virtual {p1}, LpZ;->n()I

    move-result v5

    .line 5581
    invoke-static {v5}, LdW;->a(I)LdW;

    move-result-object v6

    .line 5582
    if-nez v6, :cond_1

    .line 5583
    invoke-virtual {v3, v4}, Lqb;->d(I)V

    .line 5584
    invoke-virtual {v3, v5}, Lqb;->d(I)V
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5603
    :catch_0
    move-exception v0

    .line 5604
    :try_start_1
    invoke-virtual {v0, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5609
    :catchall_0
    move-exception v0

    .line 5610
    :try_start_2
    invoke-virtual {v3}, Lqb;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5614
    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, LdT;->d:LpW;

    .line 5616
    :goto_1
    invoke-virtual {p0}, LdT;->R()V

    throw v0

    .line 5586
    :cond_1
    :try_start_3
    iget v4, p0, LdT;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, LdT;->e:I

    .line 5587
    iput-object v6, p0, LdT;->f:LdW;
    :try_end_3
    .catch Lqu; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5605
    :catch_1
    move-exception v0

    .line 5606
    :try_start_4
    new-instance v1, Lqu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lqu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5592
    :sswitch_2
    :try_start_5
    iget v4, p0, LdT;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, LdT;->e:I

    .line 5593
    invoke-virtual {p1}, LpZ;->f()I

    move-result v4

    iput v4, p0, LdT;->g:I

    goto :goto_0

    .line 5597
    :sswitch_3
    iget v4, p0, LdT;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, LdT;->e:I

    .line 5598
    invoke-virtual {p1}, LpZ;->f()I

    move-result v4

    iput v4, p0, LdT;->h:I
    :try_end_5
    .catch Lqu; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 5610
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lqb;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5614
    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, LdT;->d:LpW;

    .line 5616
    :goto_2
    invoke-virtual {p0}, LdT;->R()V

    .line 5618
    return-void

    .line 5614
    :catch_2
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v0

    iput-object v0, p0, LdT;->d:LpW;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, LdT;->d:LpW;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, LdT;->d:LpW;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, LpY;->a()LpW;

    move-result-object v1

    iput-object v1, p0, LdT;->d:LpW;

    throw v0

    .line 5568
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(LpZ;Lqd;LdS;)V
    .locals 0

    .prologue
    .line 5532
    invoke-direct {p0, p1, p2}, LdT;-><init>(LpZ;Lqd;)V

    return-void
.end method

.method private constructor <init>(Lqk;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5538
    invoke-direct {p0, p1}, Lqi;-><init>(Lqk;)V

    .line 5756
    iput-byte v0, p0, LdT;->i:B

    .line 5780
    iput v0, p0, LdT;->j:I

    .line 5539
    invoke-virtual {p1}, Lqk;->r()LpW;

    move-result-object v0

    iput-object v0, p0, LdT;->d:LpW;

    .line 5540
    return-void
.end method

.method synthetic constructor <init>(Lqk;LdS;)V
    .locals 0

    .prologue
    .line 5532
    invoke-direct {p0, p1}, LdT;-><init>(Lqk;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5541
    invoke-direct {p0}, Lqi;-><init>()V

    .line 5756
    iput-byte v0, p0, LdT;->i:B

    .line 5780
    iput v0, p0, LdT;->j:I

    .line 5541
    sget-object v0, LpW;->a:LpW;

    iput-object v0, p0, LdT;->d:LpW;

    return-void
.end method

.method static synthetic a(LdT;I)I
    .locals 0

    .prologue
    .line 5532
    iput p1, p0, LdT;->g:I

    return p1
.end method

.method public static a()LdT;
    .locals 1

    .prologue
    .line 5545
    sget-object v0, LdT;->c:LdT;

    return-object v0
.end method

.method public static a(LdT;)LdV;
    .locals 1

    .prologue
    .line 5930
    invoke-static {}, LdT;->k()LdV;

    move-result-object v0

    invoke-virtual {v0, p0}, LdV;->a(LdT;)LdV;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LdT;LdW;)LdW;
    .locals 0

    .prologue
    .line 5532
    iput-object p1, p0, LdT;->f:LdW;

    return-object p1
.end method

.method static synthetic b(LdT;I)I
    .locals 0

    .prologue
    .line 5532
    iput p1, p0, LdT;->h:I

    return p1
.end method

.method static synthetic b(LdT;)LpW;
    .locals 1

    .prologue
    .line 5532
    iget-object v0, p0, LdT;->d:LpW;

    return-object v0
.end method

.method static synthetic c(LdT;I)I
    .locals 0

    .prologue
    .line 5532
    iput p1, p0, LdT;->e:I

    return p1
.end method

.method public static k()LdV;
    .locals 1

    .prologue
    .line 5927
    invoke-static {}, LdV;->i()LdV;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5752
    sget-object v0, LdW;->a:LdW;

    iput-object v0, p0, LdT;->f:LdW;

    .line 5753
    iput v1, p0, LdT;->g:I

    .line 5754
    iput v1, p0, LdT;->h:I

    .line 5755
    return-void
.end method


# virtual methods
.method public b()LdT;
    .locals 1

    .prologue
    .line 5549
    sget-object v0, LdT;->c:LdT;

    return-object v0
.end method

.method public c()LqF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LqF",
            "<",
            "LdT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5631
    sget-object v0, LdT;->a:LqF;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5708
    iget v1, p0, LdT;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()LdW;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, LdT;->f:LdW;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5812
    if-ne p1, p0, :cond_1

    .line 5836
    :cond_0
    :goto_0
    return v1

    .line 5815
    :cond_1
    instance-of v0, p1, LdT;

    if-nez v0, :cond_2

    .line 5816
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 5818
    :cond_2
    check-cast p1, LdT;

    .line 5821
    invoke-virtual {p0}, LdT;->d()Z

    move-result v0

    invoke-virtual {p1}, LdT;->d()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 5822
    :goto_1
    invoke-virtual {p0}, LdT;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5823
    if-eqz v0, :cond_7

    invoke-virtual {p0}, LdT;->e()LdW;

    move-result-object v0

    invoke-virtual {p1}, LdT;->e()LdW;

    move-result-object v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 5826
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, LdT;->f()Z

    move-result v0

    invoke-virtual {p1}, LdT;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 5827
    :goto_3
    invoke-virtual {p0}, LdT;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5828
    if-eqz v0, :cond_9

    invoke-virtual {p0}, LdT;->g()I

    move-result v0

    invoke-virtual {p1}, LdT;->g()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    .line 5831
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, LdT;->h()Z

    move-result v0

    invoke-virtual {p1}, LdT;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 5832
    :goto_5
    invoke-virtual {p0}, LdT;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5833
    if-eqz v0, :cond_5

    invoke-virtual {p0}, LdT;->i()I

    move-result v0

    invoke-virtual {p1}, LdT;->i()I

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 5821
    goto :goto_1

    :cond_7
    move v0, v2

    .line 5823
    goto :goto_2

    :cond_8
    move v0, v2

    .line 5826
    goto :goto_3

    :cond_9
    move v0, v2

    .line 5828
    goto :goto_4

    :cond_a
    move v0, v2

    .line 5831
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 5725
    iget v0, p0, LdT;->e:I

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

.method public g()I
    .locals 1

    .prologue
    .line 5731
    iget v0, p0, LdT;->g:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 5742
    iget v0, p0, LdT;->e:I

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

.method public hashCode()I
    .locals 2

    .prologue
    .line 5841
    iget v0, p0, LdT;->b:I

    if-eqz v0, :cond_0

    .line 5842
    iget v0, p0, LdT;->b:I

    .line 5861
    :goto_0
    return v0

    .line 5845
    :cond_0
    const-class v0, LdT;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 5846
    invoke-virtual {p0}, LdT;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5847
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 5848
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, LdT;->e()LdW;

    move-result-object v1

    invoke-static {v1}, Lqr;->a(Lqs;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5851
    :cond_1
    invoke-virtual {p0}, LdT;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5852
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 5853
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, LdT;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 5855
    :cond_2
    invoke-virtual {p0}, LdT;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5856
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 5857
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, LdT;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 5859
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, LdT;->d:LpW;

    invoke-virtual {v1}, LpW;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5860
    iput v0, p0, LdT;->b:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 5748
    iget v0, p0, LdT;->h:I

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5758
    iget-byte v1, p0, LdT;->i:B

    .line 5759
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 5762
    :goto_0
    return v0

    .line 5759
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5761
    :cond_1
    iput-byte v0, p0, LdT;->i:B

    goto :goto_0
.end method

.method public l()LdV;
    .locals 1

    .prologue
    .line 5928
    invoke-static {}, LdT;->k()LdV;

    move-result-object v0

    return-object v0
.end method

.method public m()LdV;
    .locals 1

    .prologue
    .line 5932
    invoke-static {p0}, LdT;->a(LdT;)LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()LqC;
    .locals 1

    .prologue
    .line 5532
    invoke-virtual {p0}, LdT;->m()LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()LqC;
    .locals 1

    .prologue
    .line 5532
    invoke-virtual {p0}, LdT;->l()LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 5532
    invoke-virtual {p0}, LdT;->b()LdT;

    move-result-object v0

    return-object v0
.end method
