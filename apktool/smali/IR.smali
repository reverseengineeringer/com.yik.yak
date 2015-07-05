.class public final enum LIR;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIR;

.field public static final enum b:LIR;

.field public static final enum c:LIR;

.field public static final enum d:LIR;

.field private static final synthetic e:[LIR;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, LIR;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, LIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIR;->a:LIR;

    .line 5
    new-instance v0, LIR;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, LIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIR;->b:LIR;

    .line 6
    new-instance v0, LIR;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, LIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIR;->c:LIR;

    .line 7
    new-instance v0, LIR;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, LIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIR;->d:LIR;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [LIR;

    sget-object v1, LIR;->a:LIR;

    aput-object v1, v0, v2

    sget-object v1, LIR;->b:LIR;

    aput-object v1, v0, v3

    sget-object v1, LIR;->c:LIR;

    aput-object v1, v0, v4

    sget-object v1, LIR;->d:LIR;

    aput-object v1, v0, v5

    sput-object v0, LIR;->e:[LIR;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LIR;
    .locals 1

    .prologue
    .line 3
    sget-object v0, LIR;->e:[LIR;

    invoke-virtual {v0}, [LIR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIR;

    return-object v0
.end method
