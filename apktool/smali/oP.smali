.class LoP;
.super Ljava/lang/Object;

# interfaces
.implements LoQ;


# instance fields
.field final synthetic a:LoN;


# direct methods
.method constructor <init>(LoN;)V
    .locals 0

    iput-object p1, p0, LoP;->a:LoN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LoL;Ljava/util/Set;Ljava/util/Set;LoI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoL;",
            "Ljava/util/Set",
            "<",
            "LoK;",
            ">;",
            "Ljava/util/Set",
            "<",
            "LoK;",
            ">;",
            "LoI;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, LoL;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, LoL;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoI;->e()LoG;

    invoke-interface {p4}, LoI;->f()LoG;

    return-void
.end method
