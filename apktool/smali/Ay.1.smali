.class public final enum LAy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAy;

.field public static final enum b:LAy;

.field public static final enum c:LAy;

.field private static final synthetic d:[LAy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, LAy;

    const-string v1, "Selected"

    invoke-direct {v0, v1, v2}, LAy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAy;->a:LAy;

    new-instance v0, LAy;

    const-string v1, "UnSelected"

    invoke-direct {v0, v1, v3}, LAy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAy;->b:LAy;

    new-instance v0, LAy;

    const-string v1, "NeverSelected"

    invoke-direct {v0, v1, v4}, LAy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAy;->c:LAy;

    const/4 v0, 0x3

    new-array v0, v0, [LAy;

    sget-object v1, LAy;->a:LAy;

    aput-object v1, v0, v2

    sget-object v1, LAy;->b:LAy;

    aput-object v1, v0, v3

    sget-object v1, LAy;->c:LAy;

    aput-object v1, v0, v4

    sput-object v0, LAy;->d:[LAy;

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

.method public static a()[LAy;
    .locals 1

    .prologue
    .line 67
    sget-object v0, LAy;->d:[LAy;

    invoke-virtual {v0}, [LAy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAy;

    return-object v0
.end method
