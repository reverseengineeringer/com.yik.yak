.class final Lei;
.super LpP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LpP",
        "<",
        "Leh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2325
    invoke-direct {p0}, LpP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpW;Lqa;)Leh;
    .locals 2

    .prologue
    .line 2330
    new-instance v0, Leh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Leh;-><init>(LpW;Lqa;LdW;)V

    return-object v0
.end method

.method public synthetic b(LpW;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2325
    invoke-virtual {p0, p1, p2}, Lei;->a(LpW;Lqa;)Leh;

    move-result-object v0

    return-object v0
.end method
