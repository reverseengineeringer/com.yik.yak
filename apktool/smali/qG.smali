.class LqG;
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
        "Lqv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "LqD;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lqv;


# direct methods
.method private constructor <init>(LpT;)V
    .locals 2

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, LqD;->b()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, LqG;->a:Ljava/util/Deque;

    .line 696
    invoke-direct {p0, p1}, LqG;->a(LpT;)Lqv;

    move-result-object v0

    iput-object v0, p0, LqG;->b:Lqv;

    .line 697
    return-void
.end method

.method synthetic constructor <init>(LpT;LqE;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0, p1}, LqG;-><init>(LpT;)V

    return-void
.end method

.method private a(LpT;)Lqv;
    .locals 2

    .prologue
    .line 700
    move-object v0, p1

    .line 701
    :goto_0
    instance-of v1, v0, LqD;

    if-eqz v1, :cond_0

    .line 702
    check-cast v0, LqD;

    .line 703
    iget-object v1, p0, LqG;->a:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 704
    invoke-static {v0}, LqD;->a(LqD;)LpT;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_0
    check-cast v0, Lqv;

    return-object v0
.end method

.method private b()Lqv;
    .locals 2

    .prologue
    .line 713
    :cond_0
    iget-object v0, p0, LqG;->a:Ljava/util/Deque;

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
    iget-object v0, p0, LqG;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqD;

    invoke-static {v0}, LqD;->b(LqD;)LpT;

    move-result-object v0

    invoke-direct {p0, v0}, LqG;->a(LpT;)Lqv;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lqv;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Lqv;
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, LqG;->b:Lqv;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 737
    :cond_0
    iget-object v0, p0, LqG;->b:Lqv;

    .line 738
    invoke-direct {p0}, LqG;->b()Lqv;

    move-result-object v1

    iput-object v1, p0, LqG;->b:Lqv;

    .line 739
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, LqG;->b:Lqv;

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
    invoke-virtual {p0}, LqG;->a()Lqv;

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
