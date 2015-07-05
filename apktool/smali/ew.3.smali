.class final Lew;
.super LpP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpP",
        "<",
        "Lev;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, LpP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpW;Lqa;)Lev;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Lev;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lev;-><init>(LpW;Lqa;Leu;)V

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lew;->a(LpW;Lqa;)Lev;

    move-result-object v0

    return-object v0
.end method
