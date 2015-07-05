.class public LGF;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, LGF;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LGF;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 18
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 19
    invoke-static {v2}, LGF;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const/4 v3, 0x3

    invoke-static {v3, p0, v2}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 123
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, LGF;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LGF;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 34
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 35
    invoke-static {v2}, LGF;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const/4 v3, 0x6

    invoke-static {v3, p0, v2}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, LGF;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LGF;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 50
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 51
    invoke-static {v2}, LGF;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const/4 v3, 0x4

    invoke-static {v3, p0, v2}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 110
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 111
    invoke-static {v2}, LGF;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const/4 v3, 0x5

    invoke-static {v3, p0, v2}, Lal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
