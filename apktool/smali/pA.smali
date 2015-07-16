.class public final enum LpA;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LpA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LpA;

.field public static final enum b:LpA;

.field public static final enum c:LpA;

.field public static final enum d:LpA;

.field public static final enum e:LpA;

.field public static final enum f:LpA;

.field private static final synthetic g:[LpA;


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
    new-instance v0, LpA;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v3}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->a:LpA;

    .line 19
    new-instance v0, LpA;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->b:LpA;

    .line 21
    new-instance v0, LpA;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->c:LpA;

    .line 23
    new-instance v0, LpA;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v6}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->d:LpA;

    .line 25
    new-instance v0, LpA;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->e:LpA;

    .line 27
    new-instance v0, LpA;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LpA;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpA;->f:LpA;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [LpA;

    sget-object v1, LpA;->a:LpA;

    aput-object v1, v0, v3

    sget-object v1, LpA;->b:LpA;

    aput-object v1, v0, v4

    sget-object v1, LpA;->c:LpA;

    aput-object v1, v0, v5

    sget-object v1, LpA;->d:LpA;

    aput-object v1, v0, v6

    sget-object v1, LpA;->e:LpA;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LpA;->f:LpA;

    aput-object v2, v0, v1

    sput-object v0, LpA;->g:[LpA;

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
