.class public final enum Lrk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrk;

.field public static final enum b:Lrk;

.field public static final enum c:Lrk;

.field public static final enum d:Lrk;

.field public static final enum e:Lrk;

.field private static final synthetic f:[Lrk;


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
    new-instance v0, Lrk;

    const-string v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v2}, Lrk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrk;->a:Lrk;

    new-instance v0, Lrk;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lrk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrk;->b:Lrk;

    new-instance v0, Lrk;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lrk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrk;->c:Lrk;

    new-instance v0, Lrk;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lrk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrk;->d:Lrk;

    new-instance v0, Lrk;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lrk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrk;->e:Lrk;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lrk;

    sget-object v1, Lrk;->a:Lrk;

    aput-object v1, v0, v2

    sget-object v1, Lrk;->b:Lrk;

    aput-object v1, v0, v3

    sget-object v1, Lrk;->c:Lrk;

    aput-object v1, v0, v4

    sget-object v1, Lrk;->d:Lrk;

    aput-object v1, v0, v5

    sget-object v1, Lrk;->e:Lrk;

    aput-object v1, v0, v6

    sput-object v0, Lrk;->f:[Lrk;

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
