.class public final enum LtB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LtB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LtB;

.field public static final enum b:LtB;

.field private static final synthetic c:[LtB;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, LtB;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, LtB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LtB;->a:LtB;

    new-instance v0, LtB;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, LtB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LtB;->b:LtB;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [LtB;

    sget-object v1, LtB;->a:LtB;

    aput-object v1, v0, v2

    sget-object v1, LtB;->b:LtB;

    aput-object v1, v0, v3

    sput-object v0, LtB;->c:[LtB;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LtB;
    .locals 1

    .prologue
    .line 52
    sget-object v0, LtB;->c:[LtB;

    invoke-virtual {v0}, [LtB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LtB;

    return-object v0
.end method
