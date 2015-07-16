.class public final LGK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LGL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, LGM;

    invoke-direct {v0}, LGM;-><init>()V

    sput-object v0, LGK;->a:LGL;

    return-void
.end method

.method public static a()LGL;
    .locals 1

    .prologue
    .line 30
    sget-object v0, LGK;->a:LGL;

    return-object v0
.end method
