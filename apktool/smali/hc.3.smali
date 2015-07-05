.class final enum Lhc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhc;

.field public static final enum b:Lhc;

.field public static final enum c:Lhc;

.field public static final enum d:Lhc;

.field public static final enum e:Lhc;

.field public static final enum f:Lhc;

.field public static final enum g:Lhc;

.field private static final synthetic h:[Lhc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lhc;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->a:Lhc;

    new-instance v0, Lhc;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->b:Lhc;

    new-instance v0, Lhc;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->c:Lhc;

    new-instance v0, Lhc;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->d:Lhc;

    new-instance v0, Lhc;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->e:Lhc;

    new-instance v0, Lhc;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->f:Lhc;

    new-instance v0, Lhc;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lhc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhc;->g:Lhc;

    const/4 v0, 0x7

    new-array v0, v0, [Lhc;

    sget-object v1, Lhc;->a:Lhc;

    aput-object v1, v0, v3

    sget-object v1, Lhc;->b:Lhc;

    aput-object v1, v0, v4

    sget-object v1, Lhc;->c:Lhc;

    aput-object v1, v0, v5

    sget-object v1, Lhc;->d:Lhc;

    aput-object v1, v0, v6

    sget-object v1, Lhc;->e:Lhc;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhc;->f:Lhc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhc;->g:Lhc;

    aput-object v2, v0, v1

    sput-object v0, Lhc;->h:[Lhc;

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

.method public static a()[Lhc;
    .locals 1

    sget-object v0, Lhc;->h:[Lhc;

    invoke-virtual {v0}, [Lhc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhc;

    return-object v0
.end method
