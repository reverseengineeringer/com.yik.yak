.class final Leq;
.super LpP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpP",
        "<",
        "Lep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4006
    invoke-direct {p0}, LpP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpW;Lqa;)Lep;
    .locals 2

    .prologue
    .line 4011
    new-instance v0, Lep;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lep;-><init>(LpW;Lqa;LdW;)V

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4006
    invoke-virtual {p0, p1, p2}, Leq;->a(LpW;Lqa;)Lep;

    move-result-object v0

    return-object v0
.end method
