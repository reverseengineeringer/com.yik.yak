.class final LdY;
.super LpP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpP",
        "<",
        "LdX;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5620
    invoke-direct {p0}, LpP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpW;Lqa;)LdX;
    .locals 2

    .prologue
    .line 5625
    new-instance v0, LdX;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LdX;-><init>(LpW;Lqa;LdW;)V

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5620
    invoke-virtual {p0, p1, p2}, LdY;->a(LpW;Lqa;)LdX;

    move-result-object v0

    return-object v0
.end method
