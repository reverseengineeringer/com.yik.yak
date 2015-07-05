.class public final enum LgL;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgL;

.field public static final enum b:LgL;

.field private static final synthetic c:[LgL;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LgL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LgL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgL;->a:LgL;

    new-instance v0, LgL;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, LgL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgL;->b:LgL;

    const/4 v0, 0x2

    new-array v0, v0, [LgL;

    sget-object v1, LgL;->a:LgL;

    aput-object v1, v0, v2

    sget-object v1, LgL;->b:LgL;

    aput-object v1, v0, v3

    sput-object v0, LgL;->c:[LgL;

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

.method public static a()[LgL;
    .locals 1

    sget-object v0, LgL;->c:[LgL;

    invoke-virtual {v0}, [LgL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgL;

    return-object v0
.end method
