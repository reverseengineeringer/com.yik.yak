.class public final LdV;
.super Lqk;
.source "SourceFile"

# interfaces
.implements LdY;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqk",
        "<",
        "LdT;",
        "LdV;",
        ">;",
        "LdY;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:LdW;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5944
    invoke-direct {p0}, Lqk;-><init>()V

    .line 6039
    sget-object v0, LdW;->a:LdW;

    iput-object v0, p0, LdV;->b:LdW;

    .line 5945
    return-void
.end method

.method static synthetic i()LdV;
    .locals 1

    .prologue
    .line 5937
    invoke-static {}, LdV;->k()LdV;

    move-result-object v0

    return-object v0
.end method

.method private static k()LdV;
    .locals 1

    .prologue
    .line 5951
    new-instance v0, LdV;

    invoke-direct {v0}, LdV;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LdV;
    .locals 2

    .prologue
    .line 5966
    invoke-static {}, LdV;->k()LdV;

    move-result-object v0

    invoke-virtual {p0}, LdV;->d()LdT;

    move-result-object v1

    invoke-virtual {v0, v1}, LdV;->a(LdT;)LdV;

    move-result-object v0

    return-object v0
.end method

.method public a(I)LdV;
    .locals 1

    .prologue
    .line 6091
    iget v0, p0, LdV;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LdV;->a:I

    .line 6092
    iput p1, p0, LdV;->c:I

    .line 6094
    return-object p0
.end method

.method public a(LdT;)LdV;
    .locals 2

    .prologue
    .line 6002
    invoke-static {}, LdT;->a()LdT;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6013
    :goto_0
    return-object p0

    .line 6003
    :cond_0
    invoke-virtual {p1}, LdT;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6004
    invoke-virtual {p1}, LdT;->e()LdW;

    move-result-object v0

    invoke-virtual {p0, v0}, LdV;->a(LdW;)LdV;

    .line 6006
    :cond_1
    invoke-virtual {p1}, LdT;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6007
    invoke-virtual {p1}, LdT;->g()I

    move-result v0

    invoke-virtual {p0, v0}, LdV;->a(I)LdV;

    .line 6009
    :cond_2
    invoke-virtual {p1}, LdT;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6010
    invoke-virtual {p1}, LdT;->i()I

    move-result v0

    invoke-virtual {p0, v0}, LdV;->b(I)LdV;

    .line 6012
    :cond_3
    invoke-virtual {p0}, LdV;->r()LpW;

    move-result-object v0

    invoke-static {p1}, LdT;->b(LdT;)LpW;

    move-result-object v1

    invoke-virtual {v0, v1}, LpW;->a(LpW;)LpW;

    move-result-object v0

    invoke-virtual {p0, v0}, LdV;->a(LpW;)Lqk;

    goto :goto_0
.end method

.method public a(LdW;)LdV;
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
    iget v0, p0, LdV;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LdV;->a:I

    .line 6060
    iput-object p1, p0, LdV;->b:LdW;

    .line 6062
    return-object p0
.end method

.method public a(LpZ;Lqd;)LdV;
    .locals 4

    .prologue
    .line 6024
    const/4 v2, 0x0

    .line 6026
    :try_start_0
    sget-object v0, LdT;->a:LqF;

    invoke-interface {v0, p1, p2}, LqF;->b(LpZ;Lqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdT;
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6031
    if-eqz v0, :cond_0

    .line 6032
    invoke-virtual {p0, v0}, LdV;->a(LdT;)LdV;

    .line 6035
    :cond_0
    return-object p0

    .line 6027
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 6028
    :try_start_1
    invoke-virtual {v1}, Lqu;->a()LqB;

    move-result-object v0

    check-cast v0, LdT;
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
    invoke-virtual {p0, v1}, LdV;->a(LdT;)LdV;

    :cond_1
    throw v0

    .line 6031
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lqi;)Lqk;
    .locals 1

    .prologue
    .line 5937
    check-cast p1, LdT;

    invoke-virtual {p0, p1}, LdV;->a(LdT;)LdV;

    move-result-object v0

    return-object v0
.end method

.method public b()LdT;
    .locals 1

    .prologue
    .line 5970
    invoke-static {}, LdT;->a()LdT;

    move-result-object v0

    return-object v0
.end method

.method public b(I)LdV;
    .locals 1

    .prologue
    .line 6123
    iget v0, p0, LdV;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LdV;->a:I

    .line 6124
    iput p1, p0, LdV;->d:I

    .line 6126
    return-object p0
.end method

.method public synthetic b(LpZ;Lqd;)LpQ;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0, p1, p2}, LdV;->a(LpZ;Lqd;)LdV;

    move-result-object v0

    return-object v0
.end method

.method public c()LdT;
    .locals 2

    .prologue
    .line 5974
    invoke-virtual {p0}, LdV;->d()LdT;

    move-result-object v0

    .line 5975
    invoke-virtual {v0}, LdT;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5976
    invoke-static {v0}, LdV;->a(LqB;)LqU;

    move-result-object v0

    throw v0

    .line 5978
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpZ;Lqd;)LqC;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0, p1, p2}, LdV;->a(LpZ;Lqd;)LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->a()LdV;

    move-result-object v0

    return-object v0
.end method

.method public d()LdT;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 5982
    new-instance v2, LdT;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LdT;-><init>(Lqk;LdS;)V

    .line 5983
    iget v3, p0, LdV;->a:I

    .line 5984
    const/4 v1, 0x0

    .line 5985
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 5988
    :goto_0
    iget-object v1, p0, LdV;->b:LdW;

    invoke-static {v2, v1}, LdT;->a(LdT;LdW;)LdW;

    .line 5989
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5990
    or-int/lit8 v0, v0, 0x2

    .line 5992
    :cond_0
    iget v1, p0, LdV;->c:I

    invoke-static {v2, v1}, LdT;->a(LdT;I)I

    .line 5993
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 5994
    or-int/lit8 v0, v0, 0x4

    .line 5996
    :cond_1
    iget v1, p0, LdV;->d:I

    invoke-static {v2, v1}, LdT;->b(LdT;I)I

    .line 5997
    invoke-static {v2, v0}, LdT;->c(LdT;I)I

    .line 5998
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lqi;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->b()LdT;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqk;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->a()LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpQ;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->a()LdV;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()LqB;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->c()LdT;

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

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, LdV;->b()LdT;

    move-result-object v0

    return-object v0
.end method
