.class final enum Lfb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfb;

.field public static final enum b:Lfb;

.field public static final enum c:Lfb;

.field public static final enum d:Lfb;

.field public static final enum e:Lfb;

.field public static final enum f:Lfb;

.field public static final enum g:Lfb;

.field private static final synthetic h:[Lfb;


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
    new-instance v0, Lfb;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->a:Lfb;

    .line 32
    new-instance v0, Lfb;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->b:Lfb;

    .line 33
    new-instance v0, Lfb;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->c:Lfb;

    .line 34
    new-instance v0, Lfb;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->d:Lfb;

    .line 35
    new-instance v0, Lfb;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->e:Lfb;

    .line 36
    new-instance v0, Lfb;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->f:Lfb;

    .line 37
    new-instance v0, Lfb;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfb;->g:Lfb;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lfb;

    sget-object v1, Lfb;->a:Lfb;

    aput-object v1, v0, v3

    sget-object v1, Lfb;->b:Lfb;

    aput-object v1, v0, v4

    sget-object v1, Lfb;->c:Lfb;

    aput-object v1, v0, v5

    sget-object v1, Lfb;->d:Lfb;

    aput-object v1, v0, v6

    sget-object v1, Lfb;->e:Lfb;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfb;->f:Lfb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfb;->g:Lfb;

    aput-object v2, v0, v1

    sput-object v0, Lfb;->h:[Lfb;

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

.method public static a()[Lfb;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lfb;->h:[Lfb;

    invoke-virtual {v0}, [Lfb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfb;

    return-object v0
.end method
