.class public final enum LAU;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAU;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAU;

.field public static final enum b:LAU;

.field private static final synthetic c:[LAU;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, LAU;

    const-string v1, "Spinner"

    invoke-direct {v0, v1, v2}, LAU;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAU;->a:LAU;

    new-instance v0, LAU;

    const-string v1, "FrameAnimation"

    invoke-direct {v0, v1, v3}, LAU;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAU;->b:LAU;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [LAU;

    sget-object v1, LAU;->a:LAU;

    aput-object v1, v0, v2

    sget-object v1, LAU;->b:LAU;

    aput-object v1, v0, v3

    sput-object v0, LAU;->c:[LAU;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
