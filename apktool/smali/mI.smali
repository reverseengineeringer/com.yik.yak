.class public final LmI;
.super Ljava/lang/Object;


# static fields
.field private static a:Lne;


# direct methods
.method public static a(Lne;)V
    .locals 1

    sget-object v0, LmI;->a:Lne;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lne;

    sput-object v0, LmI;->a:Lne;

    goto :goto_0
.end method
