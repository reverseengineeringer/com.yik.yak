.class LnY;
.super Ljava/lang/Object;

# interfaces
.implements Loc;


# instance fields
.field final synthetic a:LnW;


# direct methods
.method constructor <init>(LnW;)V
    .locals 0

    iput-object p1, p0, LnY;->a:LnW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LnZ;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LnZ;

    iget-object v2, p0, LnY;->a:LnW;

    iget-object v3, p0, LnY;->a:LnW;

    iget-object v4, v0, LnZ;->a:Ljava/lang/String;

    iget-object v0, v0, LnZ;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, LnW;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, LnW;->a(LnW;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LnY;->a:LnW;

    invoke-static {v0}, LnW;->a(LnW;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
