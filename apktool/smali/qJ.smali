.class LqJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lqy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "LqG;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lqy;


# direct methods
.method private constructor <init>(LpW;)V
    .locals 2

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, LqG;->b()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, LqJ;->a:Ljava/util/Deque;

    .line 696
    invoke-direct {p0, p1}, LqJ;->a(LpW;)Lqy;

    move-result-object v0

    iput-object v0, p0, LqJ;->b:Lqy;

    .line 697
    return-void
.end method

.method synthetic constructor <init>(LpW;LqH;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0, p1}, LqJ;-><init>(LpW;)V

    return-void
.end method

.method private a(LpW;)Lqy;
    .locals 2

    .prologue
    .line 700
    move-object v0, p1

    .line 701
    :goto_0
    instance-of v1, v0, LqG;

    if-eqz v1, :cond_0

    .line 702
    check-cast v0, LqG;

    .line 703
    iget-object v1, p0, LqJ;->a:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 704
    invoke-static {v0}, LqG;->a(LqG;)LpW;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_0
    check-cast v0, Lqy;

    return-object v0
.end method

.method private b()Lqy;
    .locals 2

    .prologue
    .line 713
    :cond_0
    iget-object v0, p0, LqJ;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    .line 716
    :cond_1
    iget-object v0, p0, LqJ;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqG;

    invoke-static {v0}, LqG;->b(LqG;)LpW;

    move-result-object v0

    invoke-direct {p0, v0}, LqJ;->a(LpW;)Lqy;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lqy;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Lqy;
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, LqJ;->b:Lqy;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 737
    :cond_0
    iget-object v0, p0, LqJ;->b:Lqy;

    .line 738
    invoke-direct {p0}, LqJ;->b()Lqy;

    move-result-object v1

    iput-object v1, p0, LqJ;->b:Lqy;

    .line 739
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, LqJ;->b:Lqy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, LqJ;->a()Lqy;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
