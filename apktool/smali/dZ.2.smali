.class public final LdZ;
.super Lqh;
.source "SourceFile"

# interfaces
.implements Lec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqh",
        "<",
        "LdX;",
        "LdZ;",
        ">;",
        "Lec;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lea;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5944
    invoke-direct {p0}, Lqh;-><init>()V

    .line 6039
    sget-object v0, Lea;->a:Lea;

    iput-object v0, p0, LdZ;->b:Lea;

    .line 5945
    return-void
.end method

.method static synthetic i()LdZ;
    .locals 1

    .prologue
    .line 5937
    invoke-static {}, LdZ;->k()LdZ;

    move-result-object v0

    return-object v0
.end method

.method private static k()LdZ;
    .locals 1

    .prologue
    .line 5951
    new-instance v0, LdZ;

    invoke-direct {v0}, LdZ;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LdZ;
    .locals 2

    .prologue
    .line 5966
    invoke-static {}, LdZ;->k()LdZ;

    move-result-object v0

    invoke-virtual {p0}, LdZ;->d()LdX;

    move-result-object v1

    invoke-virtual {v0, v1}, LdZ;->a(LdX;)LdZ;

    move-result-object v0

    return-object v0
.end method

.method public a(I)LdZ;
    .locals 1

    .prologue
    .line 6091
    iget v0, p0, LdZ;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LdZ;->a:I

    .line 6092
    iput p1, p0, LdZ;->c:I

    .line 6094
    return-object p0
.end method

.method public a(LdX;)LdZ;
    .locals 2

    .prologue
    .line 6002
    invoke-static {}, LdX;->a()LdX;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6013
    :goto_0
    return-object p0

    .line 6003
    :cond_0
    invoke-virtual {p1}, LdX;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6004
    invoke-virtual {p1}, LdX;->e()Lea;

    move-result-object v0

    invoke-virtual {p0, v0}, LdZ;->a(Lea;)LdZ;

    .line 6006
    :cond_1
    invoke-virtual {p1}, LdX;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6007
    invoke-virtual {p1}, LdX;->g()I

    move-result v0

    invoke-virtual {p0, v0}, LdZ;->a(I)LdZ;

    .line 6009
    :cond_2
    invoke-virtual {p1}, LdX;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6010
    invoke-virtual {p1}, LdX;->i()I

    move-result v0

    invoke-virtual {p0, v0}, LdZ;->b(I)LdZ;

    .line 6012
    :cond_3
    invoke-virtual {p0}, LdZ;->r()LpT;

    move-result-object v0

    invoke-static {p1}, LdX;->b(LdX;)LpT;

    move-result-object v1

    invoke-virtual {v0, v1}, LpT;->a(LpT;)LpT;

    move-result-object v0

    invoke-virtual {p0, v0}, LdZ;->a(LpT;)Lqh;

    goto :goto_0
.end method

.method public a(Lea;)LdZ;
    .locals 1

    .prologue
    .line 6056
    if-nez p1, :cond_0

    .line 6057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6059
    :cond_0
    iget v0, p0, LdZ;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LdZ;->a:I

    .line 6060
    iput-object p1, p0, LdZ;->b:Lea;

    .line 6062
    return-object p0
.end method

.method public a(LpW;Lqa;)LdZ;
    .locals 4

    .prologue
    .line 6024
    const/4 v2, 0x0

    .line 6026
    :try_start_0
    sget-object v0, LdX;->a:LqC;

    invoke-interface {v0, p1, p2}, LqC;->b(LpW;Lqa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdX;
    :try_end_0
    .catch Lqr; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6031
    if-eqz v0, :cond_0

    .line 6032
    invoke-virtual {p0, v0}, LdZ;->a(LdX;)LdZ;

    .line 6035
    :cond_0
    return-object p0

    .line 6027
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 6028
    :try_start_1
    invoke-virtual {v1}, Lqr;->a()Lqy;

    move-result-object v0

    check-cast v0, LdX;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6029
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6031
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 6032
    invoke-virtual {p0, v1}, LdZ;->a(LdX;)LdZ;

    :cond_1
    throw v0

    .line 6031
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lqf;)Lqh;
    .locals 1

    .prologue
    .line 5937
    check-cast p1, LdX;

    invoke-virtual {p0, p1}, LdZ;->a(LdX;)LdZ;

    move-result-object v0

    return-object v0
.end method

.method public b()LdX;
    .locals 1

    .prologue
    .line 5970
    invoke-static {}, LdX;->a()LdX;

    move-result-object v0

    return-object v0
.end method

.method public b(I)LdZ;
    .locals 1

    .prologue
    .line 6123
    iget v0, p0, LdZ;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LdZ;->a:I

    .line 6124
    iput p1, p0, LdZ;->d:I

    .line 6126
    return-object p0
.end method

.method public synthetic b(LpW;Lqa;)LpN;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0, p1, p2}, LdZ;->a(LpW;Lqa;)LdZ;

    move-result-object v0

    return-object v0
.end method

.method public c()LdX;
    .locals 2

    .prologue
    .line 5974
    invoke-virtual {p0}, LdZ;->d()LdX;

    move-result-object v0

    .line 5975
    invoke-virtual {v0}, LdX;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5976
    invoke-static {v0}, LdZ;->a(Lqy;)LqR;

    move-result-object v0

    throw v0

    .line 5978
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpW;Lqa;)Lqz;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0, p1, p2}, LdZ;->a(LpW;Lqa;)LdZ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->a()LdZ;

    move-result-object v0

    return-object v0
.end method

.method public d()LdX;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 5982
    new-instance v2, LdX;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LdX;-><init>(Lqh;LdW;)V

    .line 5983
    iget v3, p0, LdZ;->a:I

    .line 5984
    const/4 v1, 0x0

    .line 5985
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 5988
    :goto_0
    iget-object v1, p0, LdZ;->b:Lea;

    invoke-static {v2, v1}, LdX;->a(LdX;Lea;)Lea;

    .line 5989
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5990
    or-int/lit8 v0, v0, 0x2

    .line 5992
    :cond_0
    iget v1, p0, LdZ;->c:I

    invoke-static {v2, v1}, LdX;->a(LdX;I)I

    .line 5993
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 5994
    or-int/lit8 v0, v0, 0x4

    .line 5996
    :cond_1
    iget v1, p0, LdZ;->d:I

    invoke-static {v2, v1}, LdX;->b(LdX;I)I

    .line 5997
    invoke-static {v2, v0}, LdX;->c(LdX;I)I

    .line 5998
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lqf;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->b()LdX;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqh;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->a()LdZ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpN;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->a()LdZ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lqy;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->c()LdX;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 6017
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic p()Lqy;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdZ;->b()LdX;

    move-result-object v0

    return-object v0
.end method
