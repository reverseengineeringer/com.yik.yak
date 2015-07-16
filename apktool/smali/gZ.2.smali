.class final enum LgZ;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgZ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgZ;

.field public static final enum b:LgZ;

.field public static final enum c:LgZ;

.field public static final enum d:LgZ;

.field public static final enum e:LgZ;

.field public static final enum f:LgZ;

.field public static final enum g:LgZ;

.field private static final synthetic h:[LgZ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LgZ;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->a:LgZ;

    new-instance v0, LgZ;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->b:LgZ;

    new-instance v0, LgZ;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->c:LgZ;

    new-instance v0, LgZ;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->d:LgZ;

    new-instance v0, LgZ;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->e:LgZ;

    new-instance v0, LgZ;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->f:LgZ;

    new-instance v0, LgZ;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LgZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgZ;->g:LgZ;

    const/4 v0, 0x7

    new-array v0, v0, [LgZ;

    sget-object v1, LgZ;->a:LgZ;

    aput-object v1, v0, v3

    sget-object v1, LgZ;->b:LgZ;

    aput-object v1, v0, v4

    sget-object v1, LgZ;->c:LgZ;

    aput-object v1, v0, v5

    sget-object v1, LgZ;->d:LgZ;

    aput-object v1, v0, v6

    sget-object v1, LgZ;->e:LgZ;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LgZ;->f:LgZ;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LgZ;->g:LgZ;

    aput-object v2, v0, v1

    sput-object v0, LgZ;->h:[LgZ;

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

.method public static a()[LgZ;
    .locals 1

    sget-object v0, LgZ;->h:[LgZ;

    invoke-virtual {v0}, [LgZ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgZ;

    return-object v0
.end method
