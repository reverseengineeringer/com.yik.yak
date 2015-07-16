.class public LfR;
.super LfS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LfS",
        "<",
        "LfR;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LfS;-><init>()V

    invoke-static {}, Lhj;->a()Lhj;

    move-result-object v0

    sget-object v1, Lhk;->H:Lhk;

    invoke-virtual {v0, v1}, Lhj;->a(Lhk;)V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, LfR;->a(Ljava/lang/String;Ljava/lang/String;)LfS;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LfR;
    .locals 1

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, LfR;->a(Ljava/lang/String;Ljava/lang/String;)LfS;

    return-object p0
.end method

.method public a(Z)LfR;
    .locals 2

    const-string v0, "&exf"

    invoke-static {p1}, Lgl;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LfR;->a(Ljava/lang/String;Ljava/lang/String;)LfS;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, LfS;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
