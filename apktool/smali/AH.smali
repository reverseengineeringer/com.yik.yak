.class public final enum LAH;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAH;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAH;

.field public static final enum b:LAH;

.field private static final synthetic c:[LAH;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, LAH;

    const-string v1, "Spinner"

    invoke-direct {v0, v1, v2}, LAH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAH;->a:LAH;

    new-instance v0, LAH;

    const-string v1, "FrameAnimation"

    invoke-direct {v0, v1, v3}, LAH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAH;->b:LAH;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [LAH;

    sget-object v1, LAH;->a:LAH;

    aput-object v1, v0, v2

    sget-object v1, LAH;->b:LAH;

    aput-object v1, v0, v3

    sput-object v0, LAH;->c:[LAH;

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
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
