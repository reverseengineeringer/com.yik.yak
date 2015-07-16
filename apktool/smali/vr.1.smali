.class Lvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvk;


# instance fields
.field private a:Lvm;

.field private b:Lvs;

.field private c:I


# direct methods
.method public constructor <init>(Lvm;Lvs;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lvr;->a:Lvm;

    .line 637
    iput-object p2, p0, Lvr;->b:Lvs;

    .line 638
    iput p3, p0, Lvr;->c:I

    .line 639
    return-void
.end method

.method private c(Lvj;)V
    .locals 6

    .prologue
    .line 680
    iget-object v0, p0, Lvr;->a:Lvm;

    iget-boolean v0, v0, Lvm;->b:Z

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lvr;->b:Lvs;

    iget-object v0, v0, Lvs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 687
    iget-object v0, p0, Lvr;->b:Lvs;

    iget-object v0, v0, Lvs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvq;

    .line 688
    iget v4, v0, Lvq;->b:I

    iget v5, p0, Lvr;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lvq;->a:Lvs;

    iget-object v4, v4, Lvs;->a:Lvj;

    if-ne v4, p1, :cond_2

    .line 693
    invoke-virtual {p1, p0}, Lvj;->b(Lvk;)V

    .line 697
    :goto_2
    iget-object v1, p0, Lvr;->b:Lvs;

    iget-object v1, v1, Lvs;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lvr;->b:Lvs;

    iget-object v0, v0, Lvs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lvr;->b:Lvs;

    iget-object v0, v0, Lvs;->a:Lvj;

    invoke-virtual {v0}, Lvj;->a()V

    .line 701
    iget-object v0, p0, Lvr;->a:Lvm;

    invoke-static {v0}, Lvm;->a(Lvm;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lvr;->b:Lvs;

    iget-object v1, v1, Lvs;->a:Lvj;

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
.method public a(Lvj;)V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lvr;->c:I

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0, p1}, Lvr;->c(Lvj;)V

    .line 671
    :cond_0
    return-void
.end method

.method public b(Lvj;)V
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Lvr;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lvr;->c(Lvj;)V

    .line 656
    :cond_0
    return-void
.end method
