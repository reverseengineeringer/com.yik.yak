.class LnU;
.super Ljava/lang/Object;

# interfaces
.implements LnY;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LnW;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public a(LnZ;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, LnZ;->a(Ljava/util/List;)V

    return-void
.end method
