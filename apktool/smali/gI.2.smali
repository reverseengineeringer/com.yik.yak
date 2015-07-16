.class public final enum LgI;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgI;

.field public static final enum b:LgI;

.field private static final synthetic c:[LgI;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LgI;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LgI;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgI;->a:LgI;

    new-instance v0, LgI;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, LgI;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgI;->b:LgI;

    const/4 v0, 0x2

    new-array v0, v0, [LgI;

    sget-object v1, LgI;->a:LgI;

    aput-object v1, v0, v2

    sget-object v1, LgI;->b:LgI;

    aput-object v1, v0, v3

    sput-object v0, LgI;->c:[LgI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LgI;
    .locals 1

    sget-object v0, LgI;->c:[LgI;

    invoke-virtual {v0}, [LgI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgI;

    return-object v0
.end method
