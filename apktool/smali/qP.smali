.class LqP;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LqJ;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LqJ;)V
    .locals 1

    .prologue
    .line 504
    iput-object p1, p0, LqP;->a:LqJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, LqP;->b:I

    return-void
.end method

.method synthetic constructor <init>(LqJ;LqK;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, LqP;-><init>(LqJ;)V

    return-void
.end method

.method private b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, LqP;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, LqP;->a:LqJ;

    invoke-static {v0}, LqJ;->c(LqJ;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LqP;->d:Ljava/util/Iterator;

    .line 552
    :cond_0
    iget-object v0, p0, LqP;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, LqP;->c:Z

    .line 521
    iget v0, p0, LqP;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LqP;->b:I

    iget-object v1, p0, LqP;->a:LqJ;

    invoke-static {v1}, LqJ;->b(LqJ;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v0, p0, LqP;->a:LqJ;

    invoke-static {v0}, LqJ;->b(LqJ;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LqP;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 524
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, LqP;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 512
    iget v0, p0, LqP;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LqP;->a:LqJ;

    invoke-static {v1}, LqJ;->b(LqJ;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, LqP;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, LqP;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 529
    iget-boolean v0, p0, LqP;->c:Z

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LqP;->c:Z

    .line 533
    iget-object v0, p0, LqP;->a:LqJ;

    invoke-static {v0}, LqJ;->a(LqJ;)V

    .line 535
    iget v0, p0, LqP;->b:I

    iget-object v1, p0, LqP;->a:LqJ;

    invoke-static {v1}, LqJ;->b(LqJ;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 536
    iget-object v0, p0, LqP;->a:LqJ;

    iget v1, p0, LqP;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LqP;->b:I

    invoke-static {v0, v1}, LqJ;->a(LqJ;I)Ljava/lang/Object;

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, LqP;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
