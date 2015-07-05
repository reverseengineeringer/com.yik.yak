.class public Lrx;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lrv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LrO;)LrO;
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lrv;->a(LrO;)LrO;

    .line 19
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, LrO;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method

.method public a(LrN;)Lru;
    .locals 2

    .prologue
    .line 10
    invoke-static {p1}, Lrx;->b(LrS;)I

    move-result v0

    .line 11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lru;->a:Lru;

    .line 13
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lru;->b:Lru;

    goto :goto_0
.end method

.method public c()Lrs;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lrx;

    invoke-direct {v0}, Lrx;-><init>()V

    return-object v0
.end method
