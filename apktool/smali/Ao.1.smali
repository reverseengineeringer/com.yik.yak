.class public final enum LAo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAo;

.field public static final enum b:LAo;

.field private static final synthetic c:[LAo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, LAo;

    const-string v1, "Me"

    invoke-direct {v0, v1, v2}, LAo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAo;->a:LAo;

    new-instance v0, LAo;

    const-string v1, "More"

    invoke-direct {v0, v1, v3}, LAo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAo;->b:LAo;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [LAo;

    sget-object v1, LAo;->a:LAo;

    aput-object v1, v0, v2

    sget-object v1, LAo;->b:LAo;

    aput-object v1, v0, v3

    sput-object v0, LAo;->c:[LAo;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
