.class public final LGc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LGd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, LGe;

    invoke-direct {v0}, LGe;-><init>()V

    sput-object v0, LGc;->a:LGd;

    return-void
.end method

.method public static a()LGd;
    .locals 1

    .prologue
    .line 30
    sget-object v0, LGc;->a:LGd;

    return-object v0
.end method
