.class public final LGY;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;LGN;)LGG;
    .locals 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 30
    new-instance v0, LGB;

    invoke-direct {v0, p0}, LGB;-><init>(Landroid/content/Context;)V

    .line 37
    :goto_0
    invoke-interface {v0, p1}, LGG;->a(LGN;)V

    .line 39
    return-object v0

    .line 31
    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 32
    new-instance v0, LGD;

    invoke-direct {v0, p0}, LGD;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, LGE;

    invoke-direct {v0, p0}, LGE;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
