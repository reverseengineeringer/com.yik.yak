.class public final enum LAA;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAA;

.field public static final enum b:LAA;

.field public static final enum c:LAA;

.field public static final enum d:LAA;

.field public static final enum e:LAA;

.field public static final enum f:LAA;

.field public static final enum g:LAA;

.field public static final enum h:LAA;

.field public static final enum i:LAA;

.field private static final synthetic k:[LAA;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    new-instance v0, LAA;

    const-string v1, "getForUser"

    const-string v2, "getForUser"

    invoke-direct {v0, v1, v4, v2}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->a:LAA;

    .line 220
    new-instance v0, LAA;

    const-string v1, "since"

    const-string v2, "since"

    invoke-direct {v0, v1, v5, v2}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->b:LAA;

    .line 221
    new-instance v0, LAA;

    const-string v1, "getAllForUser"

    const-string v2, "getAllForUser"

    invoke-direct {v0, v1, v6, v2}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->c:LAA;

    .line 222
    new-instance v0, LAA;

    const-string v1, "getByStatus"

    const-string v2, "getByStatus"

    invoke-direct {v0, v1, v7, v2}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->d:LAA;

    .line 223
    new-instance v0, LAA;

    const-string v1, "getNotifications"

    const-string v2, "getNotifications"

    invoke-direct {v0, v1, v8, v2}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->e:LAA;

    .line 224
    new-instance v0, LAA;

    const-string v1, "getNotification"

    const/4 v2, 0x5

    const-string v3, "getNotification"

    invoke-direct {v0, v1, v2, v3}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->f:LAA;

    .line 225
    new-instance v0, LAA;

    const-string v1, "updateStatus"

    const/4 v2, 0x6

    const-string v3, "updateStatus"

    invoke-direct {v0, v1, v2, v3}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->g:LAA;

    .line 226
    new-instance v0, LAA;

    const-string v1, "updateSince"

    const/4 v2, 0x7

    const-string v3, "updateSince"

    invoke-direct {v0, v1, v2, v3}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->h:LAA;

    .line 227
    new-instance v0, LAA;

    const-string v1, "updateBatch"

    const/16 v2, 0x8

    const-string v3, "updateBatch"

    invoke-direct {v0, v1, v2, v3}, LAA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAA;->i:LAA;

    .line 218
    const/16 v0, 0x9

    new-array v0, v0, [LAA;

    sget-object v1, LAA;->a:LAA;

    aput-object v1, v0, v4

    sget-object v1, LAA;->b:LAA;

    aput-object v1, v0, v5

    sget-object v1, LAA;->c:LAA;

    aput-object v1, v0, v6

    sget-object v1, LAA;->d:LAA;

    aput-object v1, v0, v7

    sget-object v1, LAA;->e:LAA;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LAA;->f:LAA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LAA;->g:LAA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LAA;->h:LAA;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LAA;->i:LAA;

    aput-object v2, v0, v1

    sput-object v0, LAA;->k:[LAA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput-object p3, p0, LAA;->j:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public static a()[LAA;
    .locals 1

    .prologue
    .line 218
    sget-object v0, LAA;->k:[LAA;

    invoke-virtual {v0}, [LAA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAA;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, LAA;->j:Ljava/lang/String;

    return-object v0
.end method
