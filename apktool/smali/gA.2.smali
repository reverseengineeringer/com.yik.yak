.class public final enum LgA;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LgA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LgA;

.field public static final enum b:LgA;

.field public static final enum c:LgA;

.field public static final enum d:LgA;

.field public static final enum e:LgA;

.field public static final enum f:LgA;

.field private static final synthetic g:[LgA;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LgA;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->a:LgA;

    new-instance v0, LgA;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->b:LgA;

    new-instance v0, LgA;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->c:LgA;

    new-instance v0, LgA;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->d:LgA;

    new-instance v0, LgA;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->e:LgA;

    new-instance v0, LgA;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LgA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LgA;->f:LgA;

    const/4 v0, 0x6

    new-array v0, v0, [LgA;

    sget-object v1, LgA;->a:LgA;

    aput-object v1, v0, v3

    sget-object v1, LgA;->b:LgA;

    aput-object v1, v0, v4

    sget-object v1, LgA;->c:LgA;

    aput-object v1, v0, v5

    sget-object v1, LgA;->d:LgA;

    aput-object v1, v0, v6

    sget-object v1, LgA;->e:LgA;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LgA;->f:LgA;

    aput-object v2, v0, v1

    sput-object v0, LgA;->g:[LgA;

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

.method public static a()[LgA;
    .locals 1

    sget-object v0, LgA;->g:[LgA;

    invoke-virtual {v0}, [LgA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgA;

    return-object v0
.end method
