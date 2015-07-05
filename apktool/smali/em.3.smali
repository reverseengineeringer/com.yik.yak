.class final Lem;
.super LpP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpP",
        "<",
        "Lel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6578
    invoke-direct {p0}, LpP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpW;Lqa;)Lel;
    .locals 2

    .prologue
    .line 6583
    new-instance v0, Lel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lel;-><init>(LpW;Lqa;LdW;)V

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6578
    invoke-virtual {p0, p1, p2}, Lem;->a(LpW;Lqa;)Lel;

    move-result-object v0

    return-object v0
.end method
