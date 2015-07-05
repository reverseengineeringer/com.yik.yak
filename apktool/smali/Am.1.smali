.class public final enum LAm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAm;

.field public static final enum b:LAm;

.field public static final enum c:LAm;

.field private static final synthetic d:[LAm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, LAm;

    const-string v1, "Selected"

    invoke-direct {v0, v1, v2}, LAm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAm;->a:LAm;

    new-instance v0, LAm;

    const-string v1, "UnSelected"

    invoke-direct {v0, v1, v3}, LAm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAm;->b:LAm;

    new-instance v0, LAm;

    const-string v1, "NeverSelected"

    invoke-direct {v0, v1, v4}, LAm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAm;->c:LAm;

    const/4 v0, 0x3

    new-array v0, v0, [LAm;

    sget-object v1, LAm;->a:LAm;

    aput-object v1, v0, v2

    sget-object v1, LAm;->b:LAm;

    aput-object v1, v0, v3

    sget-object v1, LAm;->c:LAm;

    aput-object v1, v0, v4

    sput-object v0, LAm;->d:[LAm;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LAm;
    .locals 1

    .prologue
    .line 67
    sget-object v0, LAm;->d:[LAm;

    invoke-virtual {v0}, [LAm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAm;

    return-object v0
.end method
