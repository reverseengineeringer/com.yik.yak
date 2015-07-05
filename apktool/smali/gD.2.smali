.class public final enum LgD;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgD;

.field public static final enum b:LgD;

.field public static final enum c:LgD;

.field public static final enum d:LgD;

.field public static final enum e:LgD;

.field public static final enum f:LgD;

.field private static final synthetic g:[LgD;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LgD;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->a:LgD;

    new-instance v0, LgD;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->b:LgD;

    new-instance v0, LgD;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->c:LgD;

    new-instance v0, LgD;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->d:LgD;

    new-instance v0, LgD;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->e:LgD;

    new-instance v0, LgD;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LgD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgD;->f:LgD;

    const/4 v0, 0x6

    new-array v0, v0, [LgD;

    sget-object v1, LgD;->a:LgD;

    aput-object v1, v0, v3

    sget-object v1, LgD;->b:LgD;

    aput-object v1, v0, v4

    sget-object v1, LgD;->c:LgD;

    aput-object v1, v0, v5

    sget-object v1, LgD;->d:LgD;

    aput-object v1, v0, v6

    sget-object v1, LgD;->e:LgD;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LgD;->f:LgD;

    aput-object v2, v0, v1

    sput-object v0, LgD;->g:[LgD;

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

.method public static a()[LgD;
    .locals 1

    sget-object v0, LgD;->g:[LgD;

    invoke-virtual {v0}, [LgD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgD;

    return-object v0
.end method
