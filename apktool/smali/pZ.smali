.class public final LpZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lqa;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-boolean v1, p0, LpZ;->h:Z

    .line 812
    const v0, 0x7fffffff

    iput v0, p0, LpZ;->j:I

    .line 816
    const/16 v0, 0x40

    iput v0, p0, LpZ;->l:I

    .line 819
    const/high16 v0, 0x4000000

    iput v0, p0, LpZ;->m:I

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, LpZ;->n:Lqa;

    .line 835
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, LpZ;->a:[B

    .line 836
    iput v1, p0, LpZ;->c:I

    .line 837
    iput v1, p0, LpZ;->e:I

    .line 838
    iput v1, p0, LpZ;->i:I

    .line 839
    iput-object p1, p0, LpZ;->f:Ljava/io/InputStream;

    .line 840
    iput-boolean v1, p0, LpZ;->b:Z

    .line 841
    return-void
.end method

.method private constructor <init>(Lqy;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, LpZ;->h:Z

    .line 812
    const v0, 0x7fffffff

    iput v0, p0, LpZ;->j:I

    .line 816
    const/16 v0, 0x40

    iput v0, p0, LpZ;->l:I

    .line 819
    const/high16 v0, 0x4000000

    iput v0, p0, LpZ;->m:I

    .line 992
    iput-object v2, p0, LpZ;->n:Lqa;

    .line 844
    iget-object v0, p1, Lqy;->c:[B

    iput-object v0, p0, LpZ;->a:[B

    .line 845
    invoke-virtual {p1}, Lqy;->b()I

    move-result v0

    iput v0, p0, LpZ;->e:I

    .line 846
    invoke-virtual {p1}, Lqy;->b()I

    move-result v0

    invoke-virtual {p1}, Lqy;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LpZ;->c:I

    .line 847
    iget v0, p0, LpZ;->e:I

    neg-int v0, v0

    iput v0, p0, LpZ;->i:I

    .line 848
    iput-object v2, p0, LpZ;->f:Ljava/io/InputStream;

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, LpZ;->b:Z

    .line 850
    return-void
.end method

.method public static a(J)J
    .locals 4

    .prologue
    .line 788
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)LpZ;
    .locals 1

    .prologue
    .line 30
    new-instance v0, LpZ;

    invoke-direct {v0, p0}, LpZ;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method static a(Lqy;)LpZ;
    .locals 2

    .prologue
    .line 92
    new-instance v0, LpZ;

    invoke-direct {v0, p0}, LpZ;-><init>(Lqy;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lqy;->a()I

    move-result v1

    invoke-virtual {v0, v1}, LpZ;->c(I)I
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1002
    iget v0, p0, LpZ;->e:I

    iget v3, p0, LpZ;->c:I

    if-ge v0, v3, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    iget v0, p0, LpZ;->i:I

    iget v3, p0, LpZ;->c:I

    add-int/2addr v0, v3

    iget v3, p0, LpZ;->j:I

    if-ne v0, v3, :cond_2

    .line 1009
    if-eqz p1, :cond_1

    .line 1010
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 1043
    :goto_0
    return v0

    .line 1016
    :cond_2
    iget v0, p0, LpZ;->i:I

    iget v3, p0, LpZ;->c:I

    add-int/2addr v0, v3

    iput v0, p0, LpZ;->i:I

    .line 1022
    iput v2, p0, LpZ;->e:I

    .line 1023
    iget-object v0, p0, LpZ;->f:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, LpZ;->c:I

    .line 1024
    iget v0, p0, LpZ;->c:I

    if-eqz v0, :cond_3

    iget v0, p0, LpZ;->c:I

    if-ge v0, v1, :cond_5

    .line 1025
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LpZ;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_4
    iget-object v0, p0, LpZ;->f:Ljava/io/InputStream;

    iget-object v3, p0, LpZ;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 1029
    :cond_5
    iget v0, p0, LpZ;->c:I

    if-ne v0, v1, :cond_7

    .line 1030
    iput v2, p0, LpZ;->c:I

    .line 1031
    if-eqz p1, :cond_6

    .line 1032
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    .line 1034
    goto :goto_0

    .line 1037
    :cond_7
    invoke-direct {p0}, LpZ;->z()V

    .line 1038
    iget v0, p0, LpZ;->i:I

    iget v1, p0, LpZ;->c:I

    add-int/2addr v0, v1

    iget v1, p0, LpZ;->d:I

    add-int/2addr v0, v1

    .line 1040
    iget v1, p0, LpZ;->m:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 1041
    :cond_8
    invoke-static {}, Lqu;->i()Lqu;

    move-result-object v0

    throw v0

    .line 1043
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 2

    .prologue
    .line 774
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 937
    iget v0, p0, LpZ;->c:I

    iget v1, p0, LpZ;->d:I

    add-int/2addr v0, v1

    iput v0, p0, LpZ;->c:I

    .line 938
    iget v0, p0, LpZ;->i:I

    iget v1, p0, LpZ;->c:I

    add-int/2addr v0, v1

    .line 939
    iget v1, p0, LpZ;->j:I

    if-le v0, v1, :cond_0

    .line 941
    iget v1, p0, LpZ;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, LpZ;->d:I

    .line 942
    iget v0, p0, LpZ;->c:I

    iget v1, p0, LpZ;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, LpZ;->c:I

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LpZ;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, LpZ;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iput v0, p0, LpZ;->g:I

    .line 132
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    iput v0, p0, LpZ;->g:I

    .line 127
    iget v0, p0, LpZ;->g:I

    invoke-static {v0}, LqZ;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Lqu;->e()Lqu;

    move-result-object v0

    throw v0

    .line 132
    :cond_1
    iget v0, p0, LpZ;->g:I

    goto :goto_0
.end method

.method public a(LqF;Lqd;)LqB;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LqB;",
            ">(",
            "LqF",
            "<TT;>;",
            "Lqd;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    .line 511
    iget v1, p0, LpZ;->k:I

    iget v2, p0, LpZ;->l:I

    if-lt v1, v2, :cond_0

    .line 512
    invoke-static {}, Lqu;->h()Lqu;

    move-result-object v0

    throw v0

    .line 514
    :cond_0
    invoke-virtual {p0, v0}, LpZ;->c(I)I

    move-result v1

    .line 515
    iget v0, p0, LpZ;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LpZ;->k:I

    .line 516
    invoke-interface {p1, p0, p2}, LqF;->b(LpZ;Lqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqB;

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, LpZ;->a(I)V

    .line 518
    iget v2, p0, LpZ;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LpZ;->k:I

    .line 519
    invoke-virtual {p0, v1}, LpZ;->d(I)V

    .line 520
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, LpZ;->g:I

    if-eq v0, p1, :cond_0

    .line 146
    invoke-static {}, Lqu;->f()Lqu;

    move-result-object v0

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public a(ILqC;Lqd;)V
    .locals 2

    .prologue
    .line 406
    iget v0, p0, LpZ;->k:I

    iget v1, p0, LpZ;->l:I

    if-lt v0, v1, :cond_0

    .line 407
    invoke-static {}, Lqu;->h()Lqu;

    move-result-object v0

    throw v0

    .line 409
    :cond_0
    iget v0, p0, LpZ;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LpZ;->k:I

    .line 410
    invoke-interface {p2, p0, p3}, LqC;->c(LpZ;Lqd;)LqC;

    .line 411
    const/4 v0, 0x4

    invoke-static {p1, v0}, LqZ;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, LpZ;->a(I)V

    .line 413
    iget v0, p0, LpZ;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LpZ;->k:I

    .line 414
    return-void
.end method

.method public a(LqC;Lqd;)V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    .line 475
    iget v1, p0, LpZ;->k:I

    iget v2, p0, LpZ;->l:I

    if-lt v1, v2, :cond_0

    .line 476
    invoke-static {}, Lqu;->h()Lqu;

    move-result-object v0

    throw v0

    .line 478
    :cond_0
    invoke-virtual {p0, v0}, LpZ;->c(I)I

    move-result v0

    .line 479
    iget v1, p0, LpZ;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LpZ;->k:I

    .line 480
    invoke-interface {p1, p0, p2}, LqC;->c(LpZ;Lqd;)LqC;

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LpZ;->a(I)V

    .line 482
    iget v1, p0, LpZ;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LpZ;->k:I

    .line 483
    invoke-virtual {p0, v0}, LpZ;->d(I)V

    .line 484
    return-void
.end method

.method public a(Lqb;)V
    .locals 1

    .prologue
    .line 258
    :cond_0
    invoke-virtual {p0}, LpZ;->a()I

    move-result v0

    .line 259
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, LpZ;->a(ILqb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :cond_1
    return-void
.end method

.method public a(ILqb;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-static {p1}, LqZ;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    invoke-static {}, Lqu;->g()Lqu;

    move-result-object v0

    throw v0

    .line 198
    :pswitch_0
    invoke-virtual {p0}, LpZ;->e()J

    move-result-wide v2

    .line 199
    invoke-virtual {p2, p1}, Lqb;->d(I)V

    .line 200
    invoke-virtual {p2, v2, v3}, Lqb;->a(J)V

    .line 231
    :goto_0
    return v0

    .line 204
    :pswitch_1
    invoke-virtual {p0}, LpZ;->v()J

    move-result-wide v2

    .line 205
    invoke-virtual {p2, p1}, Lqb;->d(I)V

    .line 206
    invoke-virtual {p2, v2, v3}, Lqb;->b(J)V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, LpZ;->l()LpW;

    move-result-object v1

    .line 211
    invoke-virtual {p2, p1}, Lqb;->d(I)V

    .line 212
    invoke-virtual {p2, v1}, Lqb;->a(LpW;)V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-virtual {p2, p1}, Lqb;->d(I)V

    .line 217
    invoke-virtual {p0, p2}, LpZ;->a(Lqb;)V

    .line 218
    invoke-static {p1}, LqZ;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, LqZ;->a(II)I

    move-result v1

    .line 220
    invoke-virtual {p0, v1}, LpZ;->a(I)V

    .line 221
    invoke-virtual {p2, v1}, Lqb;->d(I)V

    goto :goto_0

    .line 225
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :pswitch_5
    invoke-virtual {p0}, LpZ;->u()I

    move-result v1

    .line 229
    invoke-virtual {p2, p1}, Lqb;->d(I)V

    .line 230
    invoke-virtual {p2, v1}, Lqb;->a(I)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b()D
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, LpZ;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, LpZ;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 921
    if-gez p1, :cond_0

    .line 922
    invoke-static {}, Lqu;->c()Lqu;

    move-result-object v0

    throw v0

    .line 924
    :cond_0
    iget v0, p0, LpZ;->i:I

    iget v1, p0, LpZ;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 925
    iget v1, p0, LpZ;->j:I

    .line 926
    if-le v0, v1, :cond_1

    .line 927
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    .line 929
    :cond_1
    iput v0, p0, LpZ;->j:I

    .line 931
    invoke-direct {p0}, LpZ;->z()V

    .line 933
    return v1
.end method

.method public d()J
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, LpZ;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 954
    iput p1, p0, LpZ;->j:I

    .line 955
    invoke-direct {p0}, LpZ;->z()V

    .line 956
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, LpZ;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(I)[B
    .locals 11

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1067
    if-gez p1, :cond_0

    .line 1068
    invoke-static {}, Lqu;->c()Lqu;

    move-result-object v0

    throw v0

    .line 1071
    :cond_0
    iget v0, p0, LpZ;->i:I

    iget v2, p0, LpZ;->e:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, LpZ;->j:I

    if-le v0, v2, :cond_1

    .line 1073
    iget v0, p0, LpZ;->j:I

    iget v1, p0, LpZ;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, LpZ;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LpZ;->f(I)V

    .line 1075
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    .line 1078
    :cond_1
    iget v0, p0, LpZ;->c:I

    iget v2, p0, LpZ;->e:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_2

    .line 1080
    new-array v0, p1, [B

    .line 1081
    iget-object v2, p0, LpZ;->a:[B

    iget v3, p0, LpZ;->e:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    iget v1, p0, LpZ;->e:I

    add-int/2addr v1, p1

    iput v1, p0, LpZ;->e:I

    .line 1163
    :goto_0
    return-object v0

    .line 1084
    :cond_2
    if-ge p1, v10, :cond_4

    .line 1089
    new-array v2, p1, [B

    .line 1090
    iget v0, p0, LpZ;->c:I

    iget v3, p0, LpZ;->e:I

    sub-int/2addr v0, v3

    .line 1091
    iget-object v3, p0, LpZ;->a:[B

    iget v4, p0, LpZ;->e:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    iget v3, p0, LpZ;->c:I

    iput v3, p0, LpZ;->e:I

    .line 1097
    invoke-direct {p0, v5}, LpZ;->a(Z)Z

    .line 1099
    :goto_1
    sub-int v3, p1, v0

    iget v4, p0, LpZ;->c:I

    if-le v3, v4, :cond_3

    .line 1100
    iget-object v3, p0, LpZ;->a:[B

    iget v4, p0, LpZ;->c:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    iget v3, p0, LpZ;->c:I

    add-int/2addr v0, v3

    .line 1102
    iget v3, p0, LpZ;->c:I

    iput v3, p0, LpZ;->e:I

    .line 1103
    invoke-direct {p0, v5}, LpZ;->a(Z)Z

    goto :goto_1

    .line 1106
    :cond_3
    iget-object v3, p0, LpZ;->a:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    sub-int v0, p1, v0

    iput v0, p0, LpZ;->e:I

    move-object v0, v2

    .line 1109
    goto :goto_0

    .line 1121
    :cond_4
    iget v5, p0, LpZ;->e:I

    .line 1122
    iget v6, p0, LpZ;->c:I

    .line 1125
    iget v0, p0, LpZ;->i:I

    iget v2, p0, LpZ;->c:I

    add-int/2addr v0, v2

    iput v0, p0, LpZ;->i:I

    .line 1126
    iput v1, p0, LpZ;->e:I

    .line 1127
    iput v1, p0, LpZ;->c:I

    .line 1130
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 1131
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 1133
    :goto_2
    if-lez v4, :cond_8

    .line 1134
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 1136
    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_7

    .line 1137
    iget-object v2, p0, LpZ;->f:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    .line 1139
    :goto_4
    if-ne v2, v3, :cond_6

    .line 1140
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    .line 1137
    :cond_5
    iget-object v2, p0, LpZ;->f:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    .line 1142
    :cond_6
    iget v9, p0, LpZ;->i:I

    add-int/2addr v9, v2

    iput v9, p0, LpZ;->i:I

    .line 1143
    add-int/2addr v0, v2

    .line 1144
    goto :goto_3

    .line 1145
    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    .line 1146
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 1147
    goto :goto_2

    .line 1150
    :cond_8
    new-array v3, p1, [B

    .line 1153
    sub-int v0, v6, v5

    .line 1154
    iget-object v2, p0, LpZ;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1158
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1160
    goto :goto_5

    :cond_9
    move-object v0, v3

    .line 1163
    goto/16 :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1174
    if-gez p1, :cond_0

    .line 1175
    invoke-static {}, Lqu;->c()Lqu;

    move-result-object v0

    throw v0

    .line 1178
    :cond_0
    iget v0, p0, LpZ;->i:I

    iget v1, p0, LpZ;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, LpZ;->j:I

    if-le v0, v1, :cond_1

    .line 1180
    iget v0, p0, LpZ;->j:I

    iget v1, p0, LpZ;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, LpZ;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LpZ;->f(I)V

    .line 1182
    invoke-static {}, Lqu;->b()Lqu;

    move-result-object v0

    throw v0

    .line 1185
    :cond_1
    iget v0, p0, LpZ;->c:I

    iget v1, p0, LpZ;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 1187
    iget v0, p0, LpZ;->e:I

    add-int/2addr v0, p1

    iput v0, p0, LpZ;->e:I

    .line 1205
    :goto_0
    return-void

    .line 1190
    :cond_2
    iget v0, p0, LpZ;->c:I

    iget v1, p0, LpZ;->e:I

    sub-int/2addr v0, v1

    .line 1191
    iget v1, p0, LpZ;->c:I

    iput v1, p0, LpZ;->e:I

    .line 1196
    invoke-direct {p0, v3}, LpZ;->a(Z)Z

    .line 1197
    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, LpZ;->c:I

    if-le v1, v2, :cond_3

    .line 1198
    iget v1, p0, LpZ;->c:I

    add-int/2addr v0, v1

    .line 1199
    iget v1, p0, LpZ;->c:I

    iput v1, p0, LpZ;->e:I

    .line 1200
    invoke-direct {p0, v3}, LpZ;->a(Z)Z

    goto :goto_1

    .line 1203
    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, LpZ;->e:I

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, LpZ;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, LpZ;->u()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 364
    invoke-virtual {p0}, LpZ;->s()I

    move-result v1

    .line 365
    iget v0, p0, LpZ;->c:I

    iget v2, p0, LpZ;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, LpZ;->a:[B

    iget v3, p0, LpZ;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 369
    iget v2, p0, LpZ;->e:I

    add-int/2addr v1, v2

    iput v1, p0, LpZ;->e:I

    .line 373
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, LpZ;->e(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, LpZ;->s()I

    move-result v1

    .line 386
    iget v0, p0, LpZ;->c:I

    iget v2, p0, LpZ;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 389
    iget-object v0, p0, LpZ;->a:[B

    iget v2, p0, LpZ;->e:I

    invoke-static {v0, v2, v1}, LpW;->a([BII)LpW;

    move-result-object v0

    .line 390
    iget v2, p0, LpZ;->e:I

    add-int/2addr v1, v2

    iput v1, p0, LpZ;->e:I

    .line 395
    :goto_0
    invoke-virtual {v0}, LpW;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    invoke-static {}, Lqu;->j()Lqu;

    move-result-object v0

    throw v0

    .line 393
    :cond_0
    new-instance v0, Lqy;

    invoke-virtual {p0, v1}, LpZ;->e(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lqy;-><init>([B)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {v0}, LpW;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()LpW;
    .locals 4

    .prologue
    .line 525
    invoke-virtual {p0}, LpZ;->s()I

    move-result v1

    .line 526
    if-nez v1, :cond_0

    .line 527
    sget-object v0, LpW;->a:LpW;

    .line 538
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget v0, p0, LpZ;->c:I

    iget v2, p0, LpZ;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_2

    if-lez v1, :cond_2

    .line 531
    iget-boolean v0, p0, LpZ;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LpZ;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, LpT;

    iget-object v2, p0, LpZ;->a:[B

    iget v3, p0, LpZ;->e:I

    invoke-direct {v0, v2, v3, v1}, LpT;-><init>([BII)V

    .line 534
    :goto_1
    iget v2, p0, LpZ;->e:I

    add-int/2addr v1, v2

    iput v1, p0, LpZ;->e:I

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, LpZ;->a:[B

    iget v2, p0, LpZ;->e:I

    invoke-static {v0, v2, v1}, LpW;->a([BII)LpW;

    move-result-object v0

    goto :goto_1

    .line 538
    :cond_2
    new-instance v0, Lqy;

    invoke-virtual {p0, v1}, LpZ;->e(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lqy;-><init>([B)V

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, LpZ;->u()I

    move-result v0

    return v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, LpZ;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, LpZ;->s()I

    move-result v0

    invoke-static {v0}, LpZ;->b(I)I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0}, LpZ;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, LpZ;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .locals 3

    .prologue
    .line 623
    invoke-virtual {p0}, LpZ;->y()B

    move-result v0

    .line 624
    if-ltz v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v0

    .line 627
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 628
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    if-ltz v1, :cond_2

    .line 629
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 631
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 632
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    if-ltz v1, :cond_3

    .line 633
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 635
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 636
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    if-ltz v1, :cond_4

    .line 637
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 639
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 640
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 641
    if-gez v1, :cond_0

    .line 643
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 644
    invoke-virtual {p0}, LpZ;->y()B

    move-result v2

    if-gez v2, :cond_0

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 648
    :cond_5
    invoke-static {}, Lqu;->d()Lqu;

    move-result-object v0

    throw v0
.end method

.method public t()J
    .locals 6

    .prologue
    .line 718
    const/4 v2, 0x0

    .line 719
    const-wide/16 v0, 0x0

    .line 720
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 721
    invoke-virtual {p0}, LpZ;->y()B

    move-result v3

    .line 722
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 723
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 724
    return-wide v0

    .line 726
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 727
    goto :goto_0

    .line 728
    :cond_1
    invoke-static {}, Lqu;->d()Lqu;

    move-result-object v0

    throw v0
.end method

.method public u()I
    .locals 4

    .prologue
    .line 733
    invoke-virtual {p0}, LpZ;->y()B

    move-result v0

    .line 734
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    .line 735
    invoke-virtual {p0}, LpZ;->y()B

    move-result v2

    .line 736
    invoke-virtual {p0}, LpZ;->y()B

    move-result v3

    .line 737
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public v()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 745
    invoke-virtual {p0}, LpZ;->y()B

    move-result v0

    .line 746
    invoke-virtual {p0}, LpZ;->y()B

    move-result v1

    .line 747
    invoke-virtual {p0}, LpZ;->y()B

    move-result v2

    .line 748
    invoke-virtual {p0}, LpZ;->y()B

    move-result v3

    .line 749
    invoke-virtual {p0}, LpZ;->y()B

    move-result v4

    .line 750
    invoke-virtual {p0}, LpZ;->y()B

    move-result v5

    .line 751
    invoke-virtual {p0}, LpZ;->y()B

    move-result v6

    .line 752
    invoke-virtual {p0}, LpZ;->y()B

    move-result v7

    .line 753
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 963
    iget v0, p0, LpZ;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 964
    const/4 v0, -0x1

    .line 968
    :goto_0
    return v0

    .line 967
    :cond_0
    iget v0, p0, LpZ;->i:I

    iget v1, p0, LpZ;->e:I

    add-int/2addr v0, v1

    .line 968
    iget v1, p0, LpZ;->j:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public x()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 977
    iget v1, p0, LpZ;->e:I

    iget v2, p0, LpZ;->c:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, LpZ;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public y()B
    .locals 3

    .prologue
    .line 1054
    iget v0, p0, LpZ;->e:I

    iget v1, p0, LpZ;->c:I

    if-ne v0, v1, :cond_0

    .line 1055
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LpZ;->a(Z)Z

    .line 1057
    :cond_0
    iget-object v0, p0, LpZ;->a:[B

    iget v1, p0, LpZ;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LpZ;->e:I

    aget-byte v0, v0, v1

    return v0
.end method
