.class Lvn;
.super Lvl;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lvm;


# direct methods
.method constructor <init>(Lvm;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lvn;->c:Lvm;

    iput-object p2, p0, Lvn;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lvl;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvn;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lvj;)V
    .locals 4

    .prologue
    .line 514
    iget-boolean v0, p0, Lvn;->a:Z

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lvn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 516
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 517
    iget-object v0, p0, Lvn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    .line 518
    iget-object v3, v0, Lvs;->a:Lvj;

    invoke-virtual {v3}, Lvj;->a()V

    .line 519
    iget-object v3, p0, Lvn;->c:Lvm;

    invoke-static {v3}, Lvm;->a(Lvm;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v0, Lvs;->a:Lvj;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method
