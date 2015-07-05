.class public final enum Lpx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lpx;

.field public static final enum b:Lpx;

.field public static final enum c:Lpx;

.field public static final enum d:Lpx;

.field public static final enum e:Lpx;

.field public static final enum f:Lpx;

.field private static final synthetic g:[Lpx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lpx;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v3}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->a:Lpx;

    .line 19
    new-instance v0, Lpx;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->b:Lpx;

    .line 21
    new-instance v0, Lpx;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->c:Lpx;

    .line 23
    new-instance v0, Lpx;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v6}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->d:Lpx;

    .line 25
    new-instance v0, Lpx;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->e:Lpx;

    .line 27
    new-instance v0, Lpx;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpx;->f:Lpx;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lpx;

    sget-object v1, Lpx;->a:Lpx;

    aput-object v1, v0, v3

    sget-object v1, Lpx;->b:Lpx;

    aput-object v1, v0, v4

    sget-object v1, Lpx;->c:Lpx;

    aput-object v1, v0, v5

    sget-object v1, Lpx;->d:Lpx;

    aput-object v1, v0, v6

    sget-object v1, Lpx;->e:Lpx;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lpx;->f:Lpx;

    aput-object v2, v0, v1

    sput-object v0, Lpx;->g:[Lpx;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
