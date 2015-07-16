.class public final enum Lro;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lro;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lro;

.field public static final enum b:Lro;

.field public static final enum c:Lro;

.field public static final enum d:Lro;

.field public static final enum e:Lro;

.field private static final synthetic f:[Lro;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lro;

    const-string v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v2}, Lro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lro;->a:Lro;

    new-instance v0, Lro;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lro;->b:Lro;

    new-instance v0, Lro;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lro;->c:Lro;

    new-instance v0, Lro;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lro;->d:Lro;

    new-instance v0, Lro;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lro;->e:Lro;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lro;

    sget-object v1, Lro;->a:Lro;

    aput-object v1, v0, v2

    sget-object v1, Lro;->b:Lro;

    aput-object v1, v0, v3

    sget-object v1, Lro;->c:Lro;

    aput-object v1, v0, v4

    sget-object v1, Lro;->d:Lro;

    aput-object v1, v0, v5

    sget-object v1, Lro;->e:Lro;

    aput-object v1, v0, v6

    sput-object v0, Lro;->f:[Lro;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
