.class public final enum LAB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAB;

.field public static final enum b:LAB;

.field private static final synthetic c:[LAB;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, LAB;

    const-string v1, "Me"

    invoke-direct {v0, v1, v2}, LAB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAB;->a:LAB;

    new-instance v0, LAB;

    const-string v1, "More"

    invoke-direct {v0, v1, v3}, LAB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAB;->b:LAB;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [LAB;

    sget-object v1, LAB;->a:LAB;

    aput-object v1, v0, v2

    sget-object v1, LAB;->b:LAB;

    aput-object v1, v0, v3

    sput-object v0, LAB;->c:[LAB;

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
