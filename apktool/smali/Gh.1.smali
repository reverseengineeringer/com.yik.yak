.class public final enum LGh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LGh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LGh;

.field public static final enum b:LGh;

.field public static final enum c:LGh;

.field private static final synthetic d:[LGh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, LGh;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, LGh;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGh;->a:LGh;

    .line 206
    new-instance v0, LGh;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, LGh;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGh;->b:LGh;

    .line 207
    new-instance v0, LGh;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, LGh;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGh;->c:LGh;

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [LGh;

    sget-object v1, LGh;->a:LGh;

    aput-object v1, v0, v2

    sget-object v1, LGh;->b:LGh;

    aput-object v1, v0, v3

    sget-object v1, LGh;->c:LGh;

    aput-object v1, v0, v4

    sput-object v0, LGh;->d:[LGh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
