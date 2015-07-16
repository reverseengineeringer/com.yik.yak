.class final LdU;
.super LpS;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpS",
        "<",
        "LdT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5620
    invoke-direct {p0}, LpS;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpZ;Lqd;)LdT;
    .locals 2

    .prologue
    .line 5625
    new-instance v0, LdT;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LdT;-><init>(LpZ;Lqd;LdS;)V

    return-object v0
.end method

.method public synthetic b(LpZ;Lqd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5620
    invoke-virtual {p0, p1, p2}, LdU;->a(LpZ;Lqd;)LdT;

    move-result-object v0

    return-object v0
.end method
