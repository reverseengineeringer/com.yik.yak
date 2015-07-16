.class final Les;
.super LpS;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpS",
        "<",
        "Ler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, LpS;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpZ;Lqd;)Ler;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ler;-><init>(LpZ;Lqd;Leq;)V

    return-object v0
.end method

.method public synthetic b(LpZ;Lqd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Les;->a(LpZ;Lqd;)Ler;

    move-result-object v0

    return-object v0
.end method
