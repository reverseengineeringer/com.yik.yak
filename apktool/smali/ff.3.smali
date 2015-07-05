.class final enum Lff;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lff;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lff;

.field public static final enum b:Lff;

.field public static final enum c:Lff;

.field public static final enum d:Lff;

.field public static final enum e:Lff;

.field public static final enum f:Lff;

.field public static final enum g:Lff;

.field private static final synthetic h:[Lff;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lff;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->a:Lff;

    .line 32
    new-instance v0, Lff;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->b:Lff;

    .line 33
    new-instance v0, Lff;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->c:Lff;

    .line 34
    new-instance v0, Lff;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->d:Lff;

    .line 35
    new-instance v0, Lff;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->e:Lff;

    .line 36
    new-instance v0, Lff;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->f:Lff;

    .line 37
    new-instance v0, Lff;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lff;->g:Lff;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lff;

    sget-object v1, Lff;->a:Lff;

    aput-object v1, v0, v3

    sget-object v1, Lff;->b:Lff;

    aput-object v1, v0, v4

    sget-object v1, Lff;->c:Lff;

    aput-object v1, v0, v5

    sget-object v1, Lff;->d:Lff;

    aput-object v1, v0, v6

    sget-object v1, Lff;->e:Lff;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lff;->f:Lff;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lff;->g:Lff;

    aput-object v2, v0, v1

    sput-object v0, Lff;->h:[Lff;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lff;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lff;->h:[Lff;

    invoke-virtual {v0}, [Lff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lff;

    return-object v0
.end method
