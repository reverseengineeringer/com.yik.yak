.class LpB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpy",
            "<",
            "Lev;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lpy;

    invoke-static {}, LpL;->a()Lev;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpy;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, LpB;->a:Lpy;

    return-void
.end method
