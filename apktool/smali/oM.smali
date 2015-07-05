.class LoM;
.super Ljava/lang/Object;

# interfaces
.implements LoN;


# instance fields
.field final synthetic a:LoK;


# direct methods
.method constructor <init>(LoK;)V
    .locals 0

    iput-object p1, p0, LoM;->a:LoK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LoI;Ljava/util/Set;Ljava/util/Set;LoF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoI;",
            "Ljava/util/Set",
            "<",
            "LoH;",
            ">;",
            "Ljava/util/Set",
            "<",
            "LoH;",
            ">;",
            "LoF;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, LoI;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, LoI;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoF;->e()LoD;

    invoke-interface {p4}, LoF;->f()LoD;

    return-void
.end method
