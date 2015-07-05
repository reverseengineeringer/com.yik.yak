.class public final enum LGx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LGx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LGx;

.field public static final enum b:LGx;

.field private static final synthetic c:[LGx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, LGx;

    const-string v1, "VotingDirectionUp"

    invoke-direct {v0, v1, v2}, LGx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGx;->a:LGx;

    new-instance v0, LGx;

    const-string v1, "VotingDirectionDown"

    invoke-direct {v0, v1, v3}, LGx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGx;->b:LGx;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [LGx;

    sget-object v1, LGx;->a:LGx;

    aput-object v1, v0, v2

    sget-object v1, LGx;->b:LGx;

    aput-object v1, v0, v3

    sput-object v0, LGx;->c:[LGx;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
