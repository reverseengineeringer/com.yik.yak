.class LoL;
.super Ljava/lang/Object;

# interfaces
.implements LoN;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:LoK;


# direct methods
.method constructor <init>(LoK;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, LoL;->e:LoK;

    iput-object p2, p0, LoL;->a:Ljava/util/Map;

    iput-object p3, p0, LoL;->b:Ljava/util/Map;

    iput-object p4, p0, LoL;->c:Ljava/util/Map;

    iput-object p5, p0, LoL;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LoI;Ljava/util/Set;Ljava/util/Set;LoF;)V
    .locals 2
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

    iget-object v0, p0, LoL;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LoL;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoF;->c()LoD;

    :cond_0
    iget-object v0, p0, LoL;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LoL;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoF;->d()LoD;

    :cond_1
    return-void
.end method
