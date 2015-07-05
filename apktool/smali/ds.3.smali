.class public Lds;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ldt;FLvK;)LvK;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ldr;

    invoke-static {p0, p1, p2, v0}, Lds;->a(Ldt;FLvK;[Ldr;)LvK;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ldt;FLvK;[Ldr;)LvK;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ldt;->a(F)Ldq;

    move-result-object v0

    .line 39
    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {v0, p3}, Ldq;->a([Ldr;)V

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, LvK;->a(LvJ;)V

    .line 43
    return-object p2
.end method
