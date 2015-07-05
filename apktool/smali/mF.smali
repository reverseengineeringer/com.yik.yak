.class public final LmF;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnb;


# direct methods
.method public static a(Lnb;)V
    .locals 1

    sget-object v0, LmF;->a:Lnb;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnb;

    sput-object v0, LmF;->a:Lnb;

    goto :goto_0
.end method
