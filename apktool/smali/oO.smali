.class LoO;
.super Ljava/lang/Object;

# interfaces
.implements LoQ;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:LoN;


# direct methods
.method constructor <init>(LoN;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, LoO;->e:LoN;

    iput-object p2, p0, LoO;->a:Ljava/util/Map;

    iput-object p3, p0, LoO;->b:Ljava/util/Map;

    iput-object p4, p0, LoO;->c:Ljava/util/Map;

    iput-object p5, p0, LoO;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LoL;Ljava/util/Set;Ljava/util/Set;LoI;)V
    .locals 2
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

    iget-object v0, p0, LoO;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LoO;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoI;->c()LoG;

    :cond_0
    iget-object v0, p0, LoO;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LoO;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, LoI;->d()LoG;

    :cond_1
    return-void
.end method
