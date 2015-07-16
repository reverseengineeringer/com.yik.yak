.class public LrB;
.super Lrz;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lrz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LrS;)LrS;
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lrz;->a(LrS;)LrS;

    .line 19
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method

.method public a(LrR;)Lry;
    .locals 2

    .prologue
    .line 10
    invoke-static {p1}, LrB;->b(LrW;)I

    move-result v0

    .line 11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lry;->a:Lry;

    .line 13
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public c()Lrw;
    .locals 1

    .prologue
    .line 25
    new-instance v0, LrB;

    invoke-direct {v0}, LrB;-><init>()V

    return-object v0
.end method
