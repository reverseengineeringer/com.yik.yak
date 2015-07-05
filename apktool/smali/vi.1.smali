.class Lvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb;


# instance fields
.field private a:Lvd;

.field private b:Lvj;

.field private c:I


# direct methods
.method public constructor <init>(Lvd;Lvj;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lvi;->a:Lvd;

    .line 637
    iput-object p2, p0, Lvi;->b:Lvj;

    .line 638
    iput p3, p0, Lvi;->c:I

    .line 639
    return-void
.end method

.method private c(Lva;)V
    .locals 6

    .prologue
    .line 680
    iget-object v0, p0, Lvi;->a:Lvd;

    iget-boolean v0, v0, Lvd;->b:Z

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lvi;->b:Lvj;

    iget-object v0, v0, Lvj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 687
    iget-object v0, p0, Lvi;->b:Lvj;

    iget-object v0, v0, Lvj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvh;

    .line 688
    iget v4, v0, Lvh;->b:I

    iget v5, p0, Lvi;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lvh;->a:Lvj;

    iget-object v4, v4, Lvj;->a:Lva;

    if-ne v4, p1, :cond_2

    .line 693
    invoke-virtual {p1, p0}, Lva;->b(Lvb;)V

    .line 697
    :goto_2
    iget-object v1, p0, Lvi;->b:Lvj;

    iget-object v1, v1, Lvj;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lvi;->b:Lvj;

    iget-object v0, v0, Lvj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lvi;->b:Lvj;

    iget-object v0, v0, Lvj;->a:Lva;

    invoke-virtual {v0}, Lva;->a()V

    .line 701
    iget-object v0, p0, Lvi;->a:Lvd;

    invoke-static {v0}, Lvd;->a(Lvd;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lvi;->b:Lvj;

    iget-object v1, v1, Lvj;->a:Lva;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Lva;)V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lvi;->c:I

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0, p1}, Lvi;->c(Lva;)V

    .line 671
    :cond_0
    return-void
.end method

.method public b(Lva;)V
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Lvi;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lvi;->c(Lva;)V

    .line 656
    :cond_0
    return-void
.end method
