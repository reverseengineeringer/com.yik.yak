.class final enum LoE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LoE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LoE;

.field public static final enum b:LoE;

.field public static final enum c:LoE;

.field private static final synthetic d:[LoE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LoE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LoE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LoE;->a:LoE;

    new-instance v0, LoE;

    const-string v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, LoE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LoE;->b:LoE;

    new-instance v0, LoE;

    const-string v1, "CONTAINER_DEBUG"

    invoke-direct {v0, v1, v4}, LoE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LoE;->c:LoE;

    const/4 v0, 0x3

    new-array v0, v0, [LoE;

    sget-object v1, LoE;->a:LoE;

    aput-object v1, v0, v2

    sget-object v1, LoE;->b:LoE;

    aput-object v1, v0, v3

    sget-object v1, LoE;->c:LoE;

    aput-object v1, v0, v4

    sput-object v0, LoE;->d:[LoE;

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

.method public static a()[LoE;
    .locals 1

    sget-object v0, LoE;->d:[LoE;

    invoke-virtual {v0}, [LoE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LoE;

    return-object v0
.end method
