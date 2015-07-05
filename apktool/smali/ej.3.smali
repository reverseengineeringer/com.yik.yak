.class public final Lej;
.super Lqh;
.source "SourceFile"

# interfaces
.implements Lek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqh",
        "<",
        "Leh;",
        "Lej;",
        ">;",
        "Lek;"
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
    invoke-direct {p0}, Lqh;-><init>()V

    .line 2558
    return-void
.end method

.method static synthetic l()Lej;
    .locals 1

    .prologue
    .line 2550
    invoke-static {}, Lej;->m()Lej;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lej;
    .locals 1

    .prologue
    .line 2564
    new-instance v0, Lej;

    invoke-direct {v0}, Lej;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lej;
    .locals 2

    .prologue
    .line 2577
    invoke-static {}, Lej;->m()Lej;

    move-result-object v0

    invoke-virtual {p0}, Lej;->d()Leh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej;->a(Leh;)Lej;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lej;
    .locals 1

    .prologue
    .line 2668
    iget v0, p0, Lej;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lej;->a:I

    .line 2669
    iput p1, p0, Lej;->b:I

    .line 2671
    return-object p0
.end method

.method public a(Leh;)Lej;
    .locals 2

    .prologue
    .line 2609
    invoke-static {}, Leh;->a()Leh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2617
    :goto_0
    return-object p0

    .line 2610
    :cond_0
    invoke-virtual {p1}, Leh;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2611
    invoke-virtual {p1}, Leh;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lej;->a(I)Lej;

    .line 2613
    :cond_1
    invoke-virtual {p1}, Leh;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2614
    invoke-virtual {p1}, Leh;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lej;->b(I)Lej;

    .line 2616
    :cond_2
    invoke-virtual {p0}, Lej;->r()LpT;

    move-result-object v0

    invoke-static {p1}, Leh;->b(Leh;)LpT;

    move-result-object v1

    invoke-virtual {v0, v1}, LpT;->a(LpT;)LpT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lej;->a(LpT;)Lqh;

    goto :goto_0
.end method

.method public a(LpW;Lqa;)Lej;
    .locals 4

    .prologue
    .line 2636
    const/4 v2, 0x0

    .line 2638
    :try_start_0
    sget-object v0, Leh;->a:LqC;

    invoke-interface {v0, p1, p2}, LqC;->b(LpW;Lqa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh;
    :try_end_0
    .catch Lqr; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2643
    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {p0, v0}, Lej;->a(Leh;)Lej;

    .line 2647
    :cond_0
    return-object p0

    .line 2639
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2640
    :try_start_1
    invoke-virtual {v1}, Lqr;->a()Lqy;

    move-result-object v0

    check-cast v0, Leh;
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
    invoke-virtual {p0, v1}, Lej;->a(Leh;)Lej;

    :cond_1
    throw v0

    .line 2643
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lqf;)Lqh;
    .locals 1

    .prologue
    .line 2550
    check-cast p1, Leh;

    invoke-virtual {p0, p1}, Lej;->a(Leh;)Lej;

    move-result-object v0

    return-object v0
.end method

.method public b()Leh;
    .locals 1

    .prologue
    .line 2581
    invoke-static {}, Leh;->a()Leh;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lej;
    .locals 1

    .prologue
    .line 2700
    iget v0, p0, Lej;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lej;->a:I

    .line 2701
    iput p1, p0, Lej;->c:I

    .line 2703
    return-object p0
.end method

.method public synthetic b(LpW;Lqa;)LpN;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0, p1, p2}, Lej;->a(LpW;Lqa;)Lej;

    move-result-object v0

    return-object v0
.end method

.method public c()Leh;
    .locals 2

    .prologue
    .line 2585
    invoke-virtual {p0}, Lej;->d()Leh;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Leh;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2587
    invoke-static {v0}, Lej;->a(Lqy;)LqR;

    move-result-object v0

    throw v0

    .line 2589
    :cond_0
    return-object v0
.end method

.method public synthetic c(LpW;Lqa;)Lqz;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0, p1, p2}, Lej;->a(LpW;Lqa;)Lej;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->a()Lej;

    move-result-object v0

    return-object v0
.end method

.method public d()Leh;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2593
    new-instance v2, Leh;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Leh;-><init>(Lqh;LdW;)V

    .line 2594
    iget v3, p0, Lej;->a:I

    .line 2595
    const/4 v1, 0x0

    .line 2596
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    .line 2599
    :goto_0
    iget v1, p0, Lej;->b:I

    invoke-static {v2, v1}, Leh;->a(Leh;I)I

    .line 2600
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2601
    or-int/lit8 v0, v0, 0x2

    .line 2603
    :cond_0
    iget v1, p0, Lej;->c:I

    invoke-static {v2, v1}, Leh;->b(Leh;I)I

    .line 2604
    invoke-static {v2, v0}, Leh;->c(Leh;I)I

    .line 2605
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lqf;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->b()Leh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqh;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->a()Lej;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpN;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->a()Lej;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lqy;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->c()Leh;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2656
    iget v1, p0, Lej;->a:I

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
    invoke-virtual {p0}, Lej;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2629
    :cond_0
    :goto_0
    return v0

    .line 2625
    :cond_1
    invoke-virtual {p0}, Lej;->k()Z

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
    iget v0, p0, Lej;->a:I

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

.method public synthetic p()Lqy;
    .locals 1

    .prologue
    .line 2550
    invoke-virtual {p0}, Lej;->b()Leh;

    move-result-object v0

    return-object v0
.end method
