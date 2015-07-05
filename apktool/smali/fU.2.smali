.class public LfU;
.super LfV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LfV",
        "<",
        "LfU;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LfV;-><init>()V

    invoke-static {}, Lhm;->a()Lhm;

    move-result-object v0

    sget-object v1, Lhn;->H:Lhn;

    invoke-virtual {v0, v1}, Lhm;->a(Lhn;)V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, LfU;->a(Ljava/lang/String;Ljava/lang/String;)LfV;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LfU;
    .locals 1

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, LfU;->a(Ljava/lang/String;Ljava/lang/String;)LfV;

    return-object p0
.end method

.method public a(Z)LfU;
    .locals 2

    const-string v0, "&exf"

    invoke-static {p1}, Lgo;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LfU;->a(Ljava/lang/String;Ljava/lang/String;)LfV;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, LfV;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
