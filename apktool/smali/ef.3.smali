.class public final Lef;
.super Lqk;
.source "SourceFile"

# interfaces
.implements Leg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqk",
        "<",
        "Led;",
        "Lef;",
        ">;",
        "Leg;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2557
    invoke-direct {p0}, Lqk;-><init>()V

    .line 2558
    return-void
.end method

.method static synthetic l()Lef;
    .locals 1

    .prologue
    .line 2550
    invoke-static {}, Lef;->m()Lef;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lef;
    .locals 1

    .prologue
    .line 2564
    new-instance v0, Lef;

    invoke-direct {v0}, Lef;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lef;
    .locals 2

    .prologue
    .line 2577
    invoke-static {}, Lef;->m()Lef;

    move-result-object v0

    invoke-virtual {p0}, Lef;->d()Led;

    move-result-object v1

    invoke-virtual {v0, v1}, Lef;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lef;
    .locals 1

    .prologue
    .line 2668
    iget v0, p0, Lef;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lef;->a:I

    .line 2669
    iput p1, p0, Lef;->b:I

    .line 2671
    return-object p0
.end method

.method public a(Led;)Lef;
    .locals 2

    .prologue
    .line 2609
    invoke-static {}, Led;->a()Led;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2617
    :goto_0
    return-object p0

    .line 2610
    :cond_0
    invoke-virtual {p1}, Led;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2611
    invoke-virtual {p1}, Led;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lef;->a(I)Lef;

    .line 2613
    :cond_1
    invoke-virtual {p1}, Led;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2614
    invoke-virtual {p1}, Led;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lef;->b(I)Lef;

    .line 2616
    :cond_2
    invoke-virtual {p0}, Lef;->r()LpW;

    move-result-object v0

    invoke-static {p1}, Led;->b(Led;)LpW;

    move-result-object v1

    invoke-virtual {v0, v1}, LpW;->a(LpW;)LpW;

    move-result-object v0

    invoke-virtual {p0, v0}, Lef;->a(LpW;)Lqk;

    goto :goto_0
.end method

.method public a(LpZ;Lqd;)Lef;
    .locals 4

    .prologue
    .line 2636
    const/4 v2, 0x0

    .line 2638
    :try_start_0
    sget-object v0, Led;->a:LqF;

    invoke-interface {v0, p1, p2}, LqF;->b(LpZ;Lqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Led;
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2643
    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {p0, v0}, Lef;->a(Led;)Lef;

    .line 2647
    :cond_0
    return-object p0

    .line 2639
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2640
    :try_start_1
    invoke-virtual {v1}, Lqu;->a()LqB;

    move-result-object v0

    check-cast v0, Led;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2641
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2643
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2644
    invoke-virtual {p0, v1}, Lef;->a(Led;)Lef;

    :cond_1
    throw v0

    .line 2643
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lqi;)Lqk;
    .locals 1

    .prologue
    .line 2550
    check-cast p1, Led;

    invoke-virtual {p0, p1}, Lef;->a(Led;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public b()Led;
    .locals 1

    .prologue
    .line 2581
    invoke-static {}, Led;->a()Led;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lef;
    .locals 1

    .prologue
    .line 2700
    iget v0, p0, Lef;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lef;->a:I

    .line 2701
    iput p1, p0, Lef;->c:I

    .line 2703
    return-object p0
.end method

.method public synthetic b(LpZ;Lqd;)LpQ;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0, p1, p2}, Lef;->a(LpZ;Lqd;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public c()Led;
    .locals 2

    .prologue
    .line 2585
    invoke-virtual {p0}, Lef;->d()Led;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Led;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2587
    invoke-static {v0}, Lef;->a(LqB;)LqU;

    move-result-object v0

    throw v0

    .line 2589
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpZ;Lqd;)LqC;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0, p1, p2}, Lef;->a(LpZ;Lqd;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method public d()Led;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2593
    new-instance v2, Led;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Led;-><init>(Lqk;LdS;)V

    .line 2594
    iget v3, p0, Lef;->a:I

    .line 2595
    const/4 v1, 0x0

    .line 2596
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    .line 2599
    :goto_0
    iget v1, p0, Lef;->b:I

    invoke-static {v2, v1}, Led;->a(Led;I)I

    .line 2600
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2601
    or-int/lit8 v0, v0, 0x2

    .line 2603
    :cond_0
    iget v1, p0, Lef;->c:I

    invoke-static {v2, v1}, Led;->b(Led;I)I

    .line 2604
    invoke-static {v2, v0}, Led;->c(Led;I)I

    .line 2605
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lqi;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->b()Led;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqk;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpQ;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()LqB;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->c()Led;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2656
    iget v1, p0, Lef;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2621
    invoke-virtual {p0}, Lef;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2629
    :cond_0
    :goto_0
    return v0

    .line 2625
    :cond_1
    invoke-virtual {p0}, Lef;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2629
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 2688
    iget v0, p0, Lef;->a:I

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

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lef;->b()Led;

    move-result-object v0

    return-object v0
.end method
