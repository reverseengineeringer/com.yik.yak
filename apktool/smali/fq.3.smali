.class public Lfq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lfn;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Lfr;->d(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lfs;->a:Lfs;

    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v1

    invoke-interface {v1}, Lfr;->a()Lfs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Lfr;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lfq;->a:Lfn;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lfn;->a()Lfn;

    move-result-object v0

    sput-object v0, Lfq;->a:Lfn;

    .line 96
    :cond_0
    sget-object v0, Lfq;->a:Lfn;

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lfq;->a:Lfn;

    invoke-virtual {v0}, Lfn;->d()Lfr;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0}, Lfr;->b(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0}, Lfr;->a(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lfq;->b()Lfr;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lfr;->c(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
