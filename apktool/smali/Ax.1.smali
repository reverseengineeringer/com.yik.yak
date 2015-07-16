.class public final enum LAx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAx;

.field public static final enum b:LAx;

.field public static final enum c:LAx;

.field private static final synthetic d:[LAx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, LAx;

    const-string v1, "Nearby"

    invoke-direct {v0, v1, v2}, LAx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAx;->a:LAx;

    new-instance v0, LAx;

    const-string v1, "Basecamp"

    invoke-direct {v0, v1, v3}, LAx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAx;->b:LAx;

    new-instance v0, LAx;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, LAx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAx;->c:LAx;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [LAx;

    sget-object v1, LAx;->a:LAx;

    aput-object v1, v0, v2

    sget-object v1, LAx;->b:LAx;

    aput-object v1, v0, v3

    sget-object v1, LAx;->c:LAx;

    aput-object v1, v0, v4

    sput-object v0, LAx;->d:[LAx;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
