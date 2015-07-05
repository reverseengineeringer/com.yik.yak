.class public final enum LpJ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LpJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LpJ;

.field public static final enum b:LpJ;

.field private static final synthetic c:[LpJ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, LpJ;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, LpJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpJ;->a:LpJ;

    .line 89
    new-instance v0, LpJ;

    const-string v1, "DEFAULT_CONTAINER"

    invoke-direct {v0, v1, v3}, LpJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpJ;->b:LpJ;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [LpJ;

    sget-object v1, LpJ;->a:LpJ;

    aput-object v1, v0, v2

    sget-object v1, LpJ;->b:LpJ;

    aput-object v1, v0, v3

    sput-object v0, LpJ;->c:[LpJ;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
