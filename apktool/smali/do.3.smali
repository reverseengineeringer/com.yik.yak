.class public Ldo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ldp;FLvT;)LvT;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ldn;

    invoke-static {p0, p1, p2, v0}, Ldo;->a(Ldp;FLvT;[Ldn;)LvT;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ldp;FLvT;[Ldn;)LvT;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ldp;->a(F)Ldm;

    move-result-object v0

    .line 39
    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {v0, p3}, Ldm;->a([Ldn;)V

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, LvT;->a(LvS;)V

    .line 43
    return-object p2
.end method
