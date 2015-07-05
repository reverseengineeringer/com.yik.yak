.class public final enum LAD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAD;

.field public static final enum b:LAD;

.field public static final enum c:LAD;

.field public static final enum d:LAD;

.field private static final synthetic e:[LAD;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    new-instance v0, LAD;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v2}, LAD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAD;->a:LAD;

    .line 408
    new-instance v0, LAD;

    const-string v1, "Featured"

    invoke-direct {v0, v1, v3}, LAD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAD;->b:LAD;

    .line 409
    new-instance v0, LAD;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4}, LAD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAD;->c:LAD;

    .line 410
    new-instance v0, LAD;

    const-string v1, "Visited"

    invoke-direct {v0, v1, v5}, LAD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAD;->d:LAD;

    .line 406
    const/4 v0, 0x4

    new-array v0, v0, [LAD;

    sget-object v1, LAD;->a:LAD;

    aput-object v1, v0, v2

    sget-object v1, LAD;->b:LAD;

    aput-object v1, v0, v3

    sget-object v1, LAD;->c:LAD;

    aput-object v1, v0, v4

    sget-object v1, LAD;->d:LAD;

    aput-object v1, v0, v5

    sput-object v0, LAD;->e:[LAD;

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
    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
