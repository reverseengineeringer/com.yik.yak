.class LpE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LpB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LpB",
            "<",
            "Ler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, LpB;

    invoke-static {}, LpO;->a()Ler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LpB;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, LpE;->a:LpB;

    return-void
.end method
